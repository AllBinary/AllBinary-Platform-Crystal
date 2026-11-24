#!/usr/bin/env bash

# Checks the Crystal files the Crystal converter generated. The hand written runtime, the Crystal sources of the
# dependencies (META-INF/crystal/src of their jars) and this project are copied to one tree, and a generated entry requires
# every file (a super class or included module first: Crystal needs it defined before the class) and then calls every
# method of this project's classes with uninitialized arguments, because crystal only type checks the methods a program
# reaches. crystal build --no-codegen checks it without a linker.
# A class that no file defines (a class of a dependency's optional dependency, not transitive like Java) is stubbed so
# the check goes on. Only an error in this project's files or the runtime fails the build.
# This project's sources are written to <output>/src.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -u "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No Crystal sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
mkdir -p "$output_dir/src" "$output_dir/modules/$artifact" "$object_dir"
cp -R "$source_dir/." "$output_dir/src/"
# The sources again under modules/<artifactId>: all dependency jars are unpacked into one folder, so a class two modules
# have (a platform variant and its No*/Null*/None* stub) is only told apart there
cp -R "$source_dir/." "$output_dir/modules/$artifact/"

# A deep project folder plus a deep package can pass the Windows 260 character path limit, so the check runs in a short
# temporary tree: runtime/, dependencies/ and project/
short_tree="$(mktemp -d /tmp/crystalXXXXXX)"
trap 'rm -rf "$short_tree"' EXIT
mkdir -p "$short_tree/runtime" "$short_tree/dependencies" "$short_tree/project"
cp -R "$runtime_dir/." "$short_tree/runtime/"
if [ -d "$dependency_dir/src" ]; then
    cp -R "$dependency_dir/src/." "$short_tree/dependencies/"
fi
# A file more dependency modules have (one class of a platform variant and its stub): the definition of a module that is
# not a No*/Null*/None* stub, else the one with more members (a superset satisfies code compiled against the smaller one).
# Jars built before modules/ existed (an older microemu) only have src/, which stays as unpacked.
if [ -d "$dependency_dir/modules" ]; then
    perl -e '
        use strict;
        my ($modules, $target) = @ARGV;
        my %candidates;
        opendir(my $dir, $modules) or exit 0;
        my @names = sort grep { !/^\./ && -d "$modules/$_" } readdir($dir);
        closedir($dir);
        for my $module (@names) {
            my @stack = ("");
            while (@stack) {
                my $relative = shift @stack;
                my $path = $relative eq "" ? "$modules/$module" : "$modules/$module/$relative";
                if (-d $path) {
                    opendir(my $sub, $path) or next;
                    push @stack, map { $relative eq "" ? $_ : "$relative/$_" } grep { !/^\./ } readdir($sub);
                    closedir($sub);
                } elsif ($relative =~ /\.cr$/) {
                    push @{$candidates{$relative}}, $module;
                }
            }
        }
        sub stub { return $_[0] =~ /^(No|Null|None)[A-Z]/ ? 1 : 0; }
        sub members {
            my ($file) = @_;
            open(my $in, "<", $file) or return 0;
            my $count = 0;
            while (my $line = <$in>) { $count++ if $line =~ /^\s+def /; }
            close($in);
            return $count;
        }
        for my $relative (sort keys %candidates) {
            my @list = @{$candidates{$relative}};
            my $best = $list[0];
            if (@list > 1) {
                for my $module (@list[1..$#list]) {
                    my ($a, $b) = (stub($best), stub($module));
                    if ($a != $b) {
                        $best = $module if $a;
                    } elsif (members("$modules/$module/$relative") > members("$modules/$best/$relative")) {
                        $best = $module;
                    }
                }
                my $class = $relative;
                $class =~ s/\.cr$//;
                $class =~ s#.*/##;
                print "Crystal duplicate class $class: using $best (of @list)\n";
            }
            my $destination = "$target/$relative";
            (my $folder = $destination) =~ s#/[^/]*$##;
            system("mkdir", "-p", $folder);
            system("cp", "$modules/$best/$relative", $destination);
        }
    ' "$dependency_dir/modules" "$short_tree/dependencies"
fi
cp -R "$source_dir/." "$short_tree/project/"
# A dependency file that this project also has (the same package path) is this project's
(cd "$short_tree/project" && find . -type f -name '*.cr') | while IFS= read -r file; do
    rm -f "$short_tree/dependencies/$file"
done
# The runtime the dependencies were built with is the runtime here
rm -rf "$short_tree/dependencies/java" "$short_tree/dependencies/allbinary_java.cr"
cd "$short_tree" || exit 1
own_count="$(find project -type f -name '*.cr' | wc -l)"
echo "Crystal files: $own_count"
if [ "$own_count" = "0" ]; then
    echo "Crystal checked: $artifact"
    exit 0
fi

# The require order: a file after the files that define its super class and included modules (a stable topological
# sort), and the classes of this project's files for the check calls
perl -e '
    use strict;
    my (%defines, %needs, @files);
    for my $file (@ARGV) {
        push @files, $file;
        open(my $in, "<", $file) or next;
        while (my $line = <$in>) {
            if ($line =~ /^(?:abstract )?class (\w+) < (?:::)?(\w+)/) { $defines{$1} //= $file; push @{$needs{$file}}, $2; }
            elsif ($line =~ /^(?:abstract )?class (\w+)\s*$/) { $defines{$1} //= $file; }
            elsif ($line =~ /^module (\w+)/) { $defines{$1} //= $file; }
            elsif ($line =~ /^\s+include (\w+)\s*$/) { push @{$needs{$file}}, $1; }
        }
        close($in);
    }
    my (%done, %visiting, @order);
    my $visit;
    $visit = sub {
        my ($file) = @_;
        return if $done{$file} || $visiting{$file};
        $visiting{$file} = 1;
        for my $type (@{$needs{$file} || []}) {
            my $other = $defines{$type};
            $visit->($other) if defined $other && $other ne $file;
        }
        $done{$file} = 1;
        push @order, $file;
    };
    $visit->($_) for @files;
    open(my $order, ">", "order.txt") or die;
    print $order "$_\n" for @order;
    close($order);
    open(my $defined, ">", "defined.txt") or die;
    print $defined "$_\n" for sort keys %defines;
    close($defined);
' runtime/allbinary_java.cr $(find runtime -type f -name '*.cr' ! -name allbinary_java.cr | sort) $(find dependencies -type f -name '*.cr' | sort) $(find project -type f -name '*.cr' | sort)

# The classes (not modules) of this project's files (and of the runtime when CRYSTAL_CHECK_RUNTIME is true)
check_folders="project"
if [ "${CRYSTAL_CHECK_RUNTIME:-}" = "true" ]; then
    check_folders="project runtime"
fi
grep -h -E '^(abstract )?class [A-Za-z0-9_]+ < ' $(find $check_folders -type f -name '*.cr') | sed -E 's/^(abstract )?class ([A-Za-z0-9_]+) .*/\2/' | sort -u > own_classes.txt

: > stubs.cr
: > missing.txt
write_entry() {
    {
        echo "# The check entry of $artifact"
        while IFS= read -r file; do
            echo "require \"./$file\""
            if [ "$file" = "runtime/allbinary_java.cr" ]; then
                echo "require \"./stubs.cr\""
            fi
        done < order.txt
        cat <<'EOF'

# Calls every method of a class with uninitialized arguments so crystal type checks it (it is never run)
macro jcheck(type)
  {% for method, index in type.resolve.methods %}
    {% if !method.name.ends_with?("=") && !method.splat_index && !method.block_arg && method.free_vars.empty? && method.visibility == :public %}
      def jcheck_{{type.id}}_{{index}}
        jcheck_receiver = uninitialized {{type}}
        {% for argument, position in method.args %}
          {% restriction = argument.restriction %}
          {% if restriction.stringify == "Int" %}{% restriction = "Int32".id %}{% elsif restriction.stringify == "Number" || restriction.stringify == "Float" %}{% restriction = "Float64".id %}{% elsif restriction.stringify == "" %}{% restriction = "JAny".id %}{% end %}
          jcheck_argument{{position}} = uninitialized {{restriction}}
        {% end %}
        jcheck_receiver.{{method.name}}({% for argument, position in method.args %}jcheck_argument{{position}}, {% end %})
      end
      jcheck_{{type.id}}_{{index}}
    {% end %}
  {% end %}
  {% for method, index in type.resolve.class.methods %}
    {% if !method.name.ends_with?("=") && method.name != "new" && method.name != "allocate" && !method.splat_index && !method.block_arg && method.free_vars.empty? %}
      def jcheck_class_{{type.id}}_{{index}}
        {% for argument, position in method.args %}
          {% restriction = argument.restriction %}
          {% if restriction.stringify == "Int" %}{% restriction = "Int32".id %}{% elsif restriction.stringify == "Number" || restriction.stringify == "Float" %}{% restriction = "Float64".id %}{% elsif restriction.stringify == "" %}{% restriction = "JAny".id %}{% end %}
          jcheck_argument{{position}} = uninitialized {{restriction}}
        {% end %}
        {{type}}.{{method.name}}({% for argument, position in method.args %}jcheck_argument{{position}}, {% end %})
      end
      jcheck_class_{{type.id}}_{{index}}
    {% end %}
  {% end %}
end

EOF
        while IFS= read -r type; do
            echo "jcheck($type)"
        done < own_classes.txt
    } > jcheck_entry.cr
}

attempt=0
status=1
output=""
while [ $attempt -lt 60 ]; do
    attempt=$((attempt + 1))
    write_entry
    output="$("$compiler" build --no-codegen "${compiler_flags[@]}" "$(cygpath -w "$short_tree/jcheck_entry.cr")" 2>&1)"
    status=$?
    if [ "$status" = "0" ]; then
        break
    fi
    # A class no file defines: a stub class (a module when it is included) and check again, so one check finds every
    # missing class. The stub only lets the check go on: a module that needs one fails (below).
    missing="$(echo "$output" | sed -n -E 's/.*Error: undefined constant ([A-Za-z0-9_]+).*/\1/p' | head -1)"
    if [ -n "$missing" ] && ! grep -qx "$missing" defined.txt && ! grep -q -E "^(class|module) $missing\b" stubs.cr; then
        if grep -q -E "include $missing\s*$" $(cat order.txt) 2>/dev/null; then
            printf 'module %s\n  include JObjectI\nend\n' "$missing" >> stubs.cr
        else
            printf 'class %s < JObject\n  def jinit_%s(*args) : self\n    self\n  end\n\n  def self.getInstance : %s?\n    %s.new\n  end\n\n  macro method_missing(call)\n    nil\n  end\nend\n' "$missing" "$missing" "$missing" "$missing" >> stubs.cr
        fi
        echo "$missing" >> missing.txt
        continue
    fi
    break
done
cp jcheck_entry.cr order.txt stubs.cr defined.txt "$object_dir/" 2>/dev/null

# A class of a dependency's optional dependency (Maven does not pass optional dependencies on) or a runtime class this
# runtime does not have: CrystalPomOptionalDependencyAdder adds the module that has it as a direct optional dependency
if [ -s missing.txt ]; then
    while IFS= read -r name; do
        echo "Crystal missing class: $name"
    done < missing.txt
    cp missing.txt "$object_dir/"
    echo "Crystal build failed: $artifact (missing classes)" >&2
    if [ "$fail_on_error" = "true" ]; then
        exit 1
    fi
    exit 0
fi

if [ "$status" = "0" ]; then
    echo "Crystal checked: $artifact"
    exit 0
fi
echo "$output" | grep -v -E '^\s*$' | tail -40
# The file of the error: the last In <file>:<line> before Error:
location="$(echo "$output" | tr '\\' '/' | grep -E '^In ' | tail -1 | grep -o -E '(project|runtime|dependencies)/[^:]+|jcheck_entry\.cr|stubs\.cr' | head -1)"
case "$location" in
    project/*|runtime/*|jcheck_entry.cr|stubs.cr|"") ;;
    *)
        echo "Crystal error in a dependency file ($location): not this project's"
        echo "Crystal checked: $artifact"
        exit 0
        ;;
esac
echo "Crystal build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
