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

class SmallLongFactory < JObject
    @j_NEGATIVE_MAX : Int32 = 0

    def jf_NEGATIVE_MAX : Int32
        @j_NEGATIVE_MAX
    end

    def jf_NEGATIVE_MAX=(value : Int32) : Int32
        @j_NEGATIVE_MAX = value
    end
    @j_POSITIVE_MAX : Int32 = 0

    def jf_POSITIVE_MAX : Int32
        @j_POSITIVE_MAX
    end

    def jf_POSITIVE_MAX=(value : Int32) : Int32
        @j_POSITIVE_MAX = value
    end
    @j_INTEGER_ARRAY : Array(JLong?)? = nil

    def jf_INTEGER_ARRAY : Array(JLong?)?
        @j_INTEGER_ARRAY
    end

    def jf_INTEGER_ARRAY=(value : Array(JLong?)?) : Array(JLong?)?
        @j_INTEGER_ARRAY = value
    end
    @j_STRING_ARRAY : Array(String)? = nil

    def jf_STRING_ARRAY : Array(String)?
        @j_STRING_ARRAY
    end

    def jf_STRING_ARRAY=(value : Array(String)?) : Array(String)?
        @j_STRING_ARRAY = value
    end
    @j_MIN : Int32 = 0

    def jf_MIN : Int32
        @j_MIN
    end

    def jf_MIN=(value : Int32) : Int32
        @j_MIN = value
    end
    @lastMin : Int32 = 0

    def jf_lastMin : Int32
        @lastMin
    end

    def jf_lastMin=(value : Int32) : Int32
        @lastMin = value
    end
    @lastNegativeMin : Int32 = 0

    def jf_lastNegativeMin : Int32
        @lastNegativeMin
    end

    def jf_lastNegativeMin=(value : Int32) : Int32
        @lastNegativeMin = value
    end

    @@jst_instance : SmallLongFactory? = nil

    def self.jst_instance : SmallLongFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : SmallLongFactory?) : SmallLongFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = SmallLongFactory.new.jinit_SmallLongFactory()
    end
    

    def self.getInstance : SmallLongFactory?
        return SmallLongFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_SmallLongFactory : Nil
    @j_NEGATIVE_MAX = 500
    @j_POSITIVE_MAX = 0x2D1
    @j_INTEGER_ARRAY = Array(JLong?).new(@j_NEGATIVE_MAX &+ @j_POSITIVE_MAX, nil)
    @j_STRING_ARRAY = Array(String).new(@j_NEGATIVE_MAX &+ @j_POSITIVE_MAX, "")
    @j_MIN = 0
    @lastMin = 0
    @lastNegativeMin = 0
    end
    

    def initWithRange(value : Int, negativeValue : Int) : Nil
        value = value.to_i32!
        negativeValue = negativeValue.to_i32!
        index = value &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= @lastMin
            @j_INTEGER_ARRAY.not_nil![index &+ @j_NEGATIVE_MAX] = JLong.new.jinit_JLong(index)
        end
        index = negativeValue &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= @lastNegativeMin
            @j_INTEGER_ARRAY.not_nil![index] = JLong.new.jinit_JLong(JR.neg(index))
        end
        if @lastMin < value
            @lastMin = value
            @j_MIN = value
        end
        if @lastNegativeMin < negativeValue
            @lastNegativeMin = negativeValue
        end
    end
    

    def init : Nil
        if (@j_INTEGER_ARRAY.not_nil![0]).nil?
            if @lastMin < @j_POSITIVE_MAX || @lastNegativeMin < @j_NEGATIVE_MAX
                index = @j_POSITIVE_MAX &- 1
                jfor3 = false
                while true
                    if jfor3
                        index &-= 1
                    end
                    jfor3 = true
                    break unless index >= @lastMin
                    @j_INTEGER_ARRAY.not_nil![index &+ @j_NEGATIVE_MAX] = JLong.new.jinit_JLong(index)
                end
                index = @j_NEGATIVE_MAX &- 1
                jfor4 = false
                while true
                    if jfor4
                        index &-= 1
                    end
                    jfor4 = true
                    break unless index >= @lastNegativeMin
                    @j_INTEGER_ARRAY.not_nil![index] = JLong.new.jinit_JLong(JR.neg(index))
                end
                @lastMin = @j_POSITIVE_MAX
                @lastNegativeMin = @j_NEGATIVE_MAX
            end
        end
    end
    

    def jinit_SmallLongFactory : self
        jfields_SmallLongFactory()
        self
    end
    

    def getInstanceNoThrow(index : Int) : JLong?
        index = index.to_i64!
        if index &+ (@j_NEGATIVE_MAX).to_i64! > (@j_INTEGER_ARRAY.not_nil!.size &- 1).to_i64!
            return @j_INTEGER_ARRAY.not_nil![-1 &+ @j_NEGATIVE_MAX]
        end
        return @j_INTEGER_ARRAY.not_nil![((index).to_i32!) &+ @j_NEGATIVE_MAX]
    end
    

    def getString(index : Int) : String
        index = index.to_i32!
        i : Int32 = index &+ @j_NEGATIVE_MAX
        if (@j_STRING_ARRAY.not_nil![i]).empty?
            @j_STRING_ARRAY.not_nil![i] = @j_INTEGER_ARRAY.not_nil![i].not_nil!.toString()
        end
        return @j_STRING_ARRAY.not_nil![i]
    end
end

