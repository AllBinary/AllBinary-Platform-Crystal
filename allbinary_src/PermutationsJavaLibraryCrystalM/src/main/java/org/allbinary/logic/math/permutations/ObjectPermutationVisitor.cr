# Generated Code Do Not Modify
# package org.allbinary.logic.math.permutations

class ObjectPermutationVisitor < Visitor
    @data : Array(JAny)? = nil

    def jf_data : Array(JAny)?
        @data
    end

    def jf_data=(value : Array(JAny)?) : Array(JAny)?
        @data = value
    end
    @stringBuilder : StringMaker? = nil

    def jf_stringBuilder : StringMaker?
        @stringBuilder
    end

    def jf_stringBuilder=(value : StringMaker?) : StringMaker?
        @stringBuilder = value
    end

    # Java field initializers run after the super constructor
    def jfields_ObjectPermutationVisitor : Nil
    
    @stringBuilder = StringMaker.new.jinit_StringMaker()
    end
    

    def jinit_ObjectPermutationVisitor(data : Array(JAny)?) : self
        jinit_Visitor()
        jfields_ObjectPermutationVisitor()
        @data = data
        self
    end
    

    def visit(anyType : JAny) : JAny
        @stringBuilder.not_nil!.delete(0, @stringBuilder.not_nil!.length())
        self.print_j(@data, @stringBuilder)
        return NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def print_j(data : Array(JAny)?) : Nil
        stringBuilder : StringMaker? = StringMaker.new.jinit_StringMaker()
        self.print_j(data, stringBuilder)
    end
    

    def print_j(data : Array(JAny)?, stringBuilder : StringMaker?) : Nil
        tsUtil : TsUtil? = TsUtil.getInstance()
        size : Int32 = data.not_nil!.size
        i : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                i &+= 1
            end
            jfor1 = true
            break unless i < size
            stringBuilder.not_nil!.appendint(tsUtil.not_nil!.hashCode(data.not_nil![i]))
            stringBuilder.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        end
        JSystem.out_println(stringBuilder.not_nil!.toString())
    end
end

