#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.logic.math

class PrimitiveLongSingleton < JObject
    @j_UNK : Array(UInt16)? = nil

    def jf_UNK : Array(UInt16)?
        @j_UNK
    end

    def jf_UNK=(value : Array(UInt16)?) : Array(UInt16)?
        @j_UNK = value
    end
    @j_NUMBER_ARRAY : Array(Int8)? = nil

    def jf_NUMBER_ARRAY : Array(Int8)?
        @j_NUMBER_ARRAY
    end

    def jf_NUMBER_ARRAY=(value : Array(Int8)?) : Array(Int8)?
        @j_NUMBER_ARRAY = value
    end
    @j_NUMBER_CHAR_ARRAY : Array(UInt16)? = nil

    def jf_NUMBER_CHAR_ARRAY : Array(UInt16)?
        @j_NUMBER_CHAR_ARRAY
    end

    def jf_NUMBER_CHAR_ARRAY=(value : Array(UInt16)?) : Array(UInt16)?
        @j_NUMBER_CHAR_ARRAY = value
    end
    @j_NUMBER_CHAR_ARRAYS : Array(Array(UInt16)?)? = nil

    def jf_NUMBER_CHAR_ARRAYS : Array(Array(UInt16)?)?
        @j_NUMBER_CHAR_ARRAYS
    end

    def jf_NUMBER_CHAR_ARRAYS=(value : Array(Array(UInt16)?)?) : Array(Array(UInt16)?)?
        @j_NUMBER_CHAR_ARRAYS = value
    end
    @j_ZERO : Array(UInt16)? = nil

    def jf_ZERO : Array(UInt16)?
        @j_ZERO
    end

    def jf_ZERO=(value : Array(UInt16)?) : Array(UInt16)?
        @j_ZERO = value
    end

    @@jst_instance : PrimitiveLongSingleton? = nil

    def self.jst_instance : PrimitiveLongSingleton?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PrimitiveLongSingleton?) : PrimitiveLongSingleton?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PrimitiveLongSingleton.new.jinit_PrimitiveLongSingleton()
    end
    

    def self.getInstance : PrimitiveLongSingleton?
        return PrimitiveLongSingleton.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_PrimitiveLongSingleton : Nil
    @j_UNK = ['U'.ord.to_u16, 'n'.ord.to_u16, 'k'.ord.to_u16] of UInt16
    @j_NUMBER_ARRAY = [0_i8, 1_i8, 2_i8, 3_i8, 4_i8, 5_i8, 6_i8, 7_i8, 8_i8, 9_i8] of Int8
    @j_NUMBER_CHAR_ARRAY = ['0'.ord.to_u16, '1'.ord.to_u16, '2'.ord.to_u16, '3'.ord.to_u16, '4'.ord.to_u16, '5'.ord.to_u16, '6'.ord.to_u16, '7'.ord.to_u16, '8'.ord.to_u16, '9'.ord.to_u16] of UInt16
    @j_NUMBER_CHAR_ARRAYS = [['0'.ord.to_u16] of UInt16, ['1'.ord.to_u16] of UInt16, ['2'.ord.to_u16] of UInt16, ['3'.ord.to_u16] of UInt16, ['4'.ord.to_u16] of UInt16, ['5'.ord.to_u16] of UInt16, ['6'.ord.to_u16] of UInt16, ['7'.ord.to_u16] of UInt16, ['8'.ord.to_u16] of UInt16, ['9'.ord.to_u16] of UInt16] of Array(UInt16)?
    @j_ZERO = [@j_NUMBER_CHAR_ARRAY.not_nil![0]] of UInt16
    end

    def jinit_PrimitiveLongSingleton : self
        jfields_PrimitiveLongSingleton()
        self
    end
    

    def getNumberFromChar(numberAsChar : Int) : Int8
        numberAsChar = numberAsChar.to_u16!
        size : Int32 = @j_NUMBER_CHAR_ARRAY.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            if @j_NUMBER_CHAR_ARRAY.not_nil![index] == numberAsChar
                return @j_NUMBER_ARRAY.not_nil![index]
            end
        end
        raise (JException.new.jinit_JException(StringMaker.new.jinit_StringMaker().not_nil!.append("numberAsChar was not in array: ").not_nil!.appendchar(numberAsChar).not_nil!.toString())).not_nil!
    end
end

