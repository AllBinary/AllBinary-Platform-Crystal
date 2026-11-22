# Generated Code Do Not Modify
# package org.allbinary.util

class ArrayUtil < JObject
    @mathUtil : MathUtil? = nil

    def jf_mathUtil : MathUtil?
        @mathUtil
    end

    def jf_mathUtil=(value : MathUtil?) : MathUtil?
        @mathUtil = value
    end

    @@jst_instance : ArrayUtil? = nil

    def self.jst_instance : ArrayUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ArrayUtil?) : ArrayUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ArrayUtil.new.jinit_ArrayUtil()
    end
    

    def self.getInstance : ArrayUtil?
        return ArrayUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ArrayUtil : Nil
    @mathUtil = MathUtil.getInstance()
    end

    def jinit_ArrayUtil : self
        jfields_ArrayUtil()
        self
    end
    

    def copyOf(original : Array(JAny)?, newLength : Int) : Array(JAny)?
        newLength = newLength.to_i32!
        return self.copyOfType(original, newLength, JR.jclass(original))
    end
    

    def copyOfType(original : Array(JAny)?, newLength : Int, newType : String) : Array(JAny)?
        newLength = newLength.to_i32!
        copy : Array(JAny)? = Array(JAny).new(newLength, nil)
        JSystem.arraycopy(original, 0, copy, 0, @mathUtil.not_nil!.min(original.not_nil!.size, newLength))
        return copy
    end
    

    def copyOfbyte(original : Array(Int8)?, newLength : Int) : Array(Int8)?
        newLength = newLength.to_i32!
        copy : Array(Int8)? = Array(Int8).new(newLength, 0_i8)
        JSystem.arraycopy(original, 0, copy, 0, @mathUtil.not_nil!.min(original.not_nil!.size, newLength))
        return copy
    end
    

    def copyOfshort(original : Array(Int16)?, newLength : Int) : Array(Int16)?
        newLength = newLength.to_i32!
        copy : Array(Int16)? = Array(Int16).new(newLength, 0_i16)
        JSystem.arraycopy(original, 0, copy, 0, @mathUtil.not_nil!.min(original.not_nil!.size, newLength))
        return copy
    end
    

    def copyOfint(original : Array(Int32)?, newLength : Int) : Array(Int32)?
        newLength = newLength.to_i32!
        copy : Array(Int32)? = Array(Int32).new(newLength, 0)
        JSystem.arraycopy(original, 0, copy, 0, @mathUtil.not_nil!.min(original.not_nil!.size, newLength))
        return copy
    end
    

    def copyOflong(original : Array(Int64)?, newLength : Int) : Array(Int64)?
        newLength = newLength.to_i32!
        copy : Array(Int64)? = Array(Int64).new(newLength, 0_i64)
        JSystem.arraycopy(original, 0, copy, 0, @mathUtil.not_nil!.min(original.not_nil!.size, newLength))
        return copy
    end
    

    def copyOfchar(original : Array(UInt16)?, newLength : Int) : Array(UInt16)?
        newLength = newLength.to_i32!
        copy : Array(UInt16)? = Array(UInt16).new(newLength, 0_u16)
        JSystem.arraycopy(original, 0, copy, 0, @mathUtil.not_nil!.min(original.not_nil!.size, newLength))
        return copy
    end
    

    def copyOffloat(original : Array(Float32)?, newLength : Int) : Array(Float32)?
        newLength = newLength.to_i32!
        copy : Array(Float32)? = Array(Float32).new(newLength, 0_f32)
        JSystem.arraycopy(original, 0, copy, 0, @mathUtil.not_nil!.min(original.not_nil!.size, newLength))
        return copy
    end
    

    def copyOfdouble(original : Array(Float64)?, newLength : Int) : Array(Float64)?
        newLength = newLength.to_i32!
        copy : Array(Float64)? = Array(Float64).new(newLength, 0.0)
        JSystem.arraycopy(original, 0, copy, 0, @mathUtil.not_nil!.min(original.not_nil!.size, newLength))
        return copy
    end
    

    def copyOfboolean(original : Array(Bool)?, newLength : Int) : Array(Bool)?
        newLength = newLength.to_i32!
        copy : Array(Bool)? = Array(Bool).new(newLength, false)
        JSystem.arraycopy(original, 0, copy, 0, @mathUtil.not_nil!.min(original.not_nil!.size, newLength))
        return copy
    end
    

    def reverse(intArray : Array(Int32)?) : Nil
        length : Int32 = intArray.not_nil!.size &- 1
        temp : Int32 = 0
        size : Int32 = length.tdiv(2)
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index <= size
            temp = intArray.not_nil![index]
            intArray.not_nil![index] = intArray.not_nil![length &- index]
            intArray.not_nil![length &- index] = temp
        end
    end
    

    def flip(intArray : Array(Int32)?, width : Int, height : Int) : Nil
        width = width.to_i32!
        height = height.to_i32!
        length : Int32 = height &- 1
        temp : Int32 = 0
        index : Int32 = 0
        rowIndex : Int32 = 0
        y : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                y &+= 1
            end
            jfor2 = true
            break unless y <= length.tdiv(2)
            x : Int32 = 0
            jfor3 = false
            while true
                if jfor3
                    x &+= 1
                end
                jfor3 = true
                break unless x < width
                rowIndex = ((length &- y) &* width)
                index = x &+ (y &* width)
                temp = intArray.not_nil![index]
                intArray.not_nil![index] = intArray.not_nil![rowIndex &+ x]
                intArray.not_nil![rowIndex &+ x] = temp
            end
        end
    end
    

    def toStringFromTwoDimensionaArray(twoDimensionalIntArray : Array(Array(Int32)?)?) : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        endIndex : Int32 = twoDimensionalIntArray.not_nil!.size
        endIndex2 : Int32 = twoDimensionalIntArray.not_nil![0].not_nil!.size
        index : Int32 = 0
        jfor4 = false
        while true
            if jfor4
                index &+= 1
            end
            jfor4 = true
            break unless index < endIndex
            stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_BRACE_OPEN)
            index2 : Int32 = 0
            jfor5 = false
            while true
                if jfor5
                    index2 &+= 1
                end
                jfor5 = true
                break unless index2 < endIndex2
                stringBuffer.not_nil!.appendint((twoDimensionalIntArray.not_nil![index].not_nil![index2]).to_i32!)
                stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_COMMA_SEP)
            end
            stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_BRACE_CLOSE)
            stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_NEW_LINE)
        end
        return stringBuffer.not_nil!.toString()
    end
    

    def toStringFromObjectArray(objectArray : Array(JAny)?) : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        index : Int32 = 0
        jfor6 = false
        while true
            if jfor6
                index &+= 1
            end
            jfor6 = true
            break unless index < objectArray.not_nil!.size
            stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(objectArray.not_nil![index]))
            stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_COMMA_SEP)
        end
        return stringBuffer.not_nil!.toString()
    end
    

    def toStringFromByteArray(byteArray : Array(Int8)?) : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        index : Int32 = 0
        jfor7 = false
        while true
            if jfor7
                index &+= 1
            end
            jfor7 = true
            break unless index < byteArray.not_nil!.size
            stringBuffer.not_nil!.appendbyte(byteArray.not_nil![index])
            stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_COMMA_SEP)
        end
        return stringBuffer.not_nil!.toString()
    end
end

