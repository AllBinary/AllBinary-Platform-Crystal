# Generated Code Do Not Modify
# package org.allbinary.logic.math.permutations

class IntPermutationVisitor < Visitor
    @data : Array(Int32)? = nil

    def jf_data : Array(Int32)?
        @data
    end

    def jf_data=(value : Array(Int32)?) : Array(Int32)?
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
    def jfields_IntPermutationVisitor : Nil
    
    @stringBuilder = StringMaker.new.jinit_StringMaker()
    end
    

    def jinit_IntPermutationVisitor(data : Array(Int32)?) : self
        jinit_Visitor()
        jfields_IntPermutationVisitor()
        @data = data
        self
    end
    

    def visit(anyType : JAny) : JAny
        @stringBuilder.not_nil!.delete(0, @stringBuilder.not_nil!.length())
        self.print_j(@data, @stringBuilder)
        return NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def print_j(data : Array(Int32)?) : Nil
        stringBuilder : StringMaker? = StringMaker.new.jinit_StringMaker()
        self.print_j(data, stringBuilder)
    end
    

    def print_j(data : Array(Int32)?, stringBuilder : StringMaker?) : Nil
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        size : Int32 = data.not_nil!.size
        i : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                i &+= 1
            end
            jfor1 = true
            break unless i < size
            stringBuilder.not_nil!.appendint(data.not_nil![i])
            stringBuilder.not_nil!.append(commonSeps.not_nil!.jf_SPACE)
        end
        JSystem.out_println(stringBuilder.not_nil!.toString())
    end
end

