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

class PrimitiveLongUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @powerOfTen : Int32 = 0

    def jf_powerOfTen : Int32
        @powerOfTen
    end

    def jf_powerOfTen=(value : Int32) : Int32
        @powerOfTen = value
    end
    @maxValue : Int32 = 0

    def jf_maxValue : Int32
        @maxValue
    end

    def jf_maxValue=(value : Int32) : Int32
        @maxValue = value
    end
    @maxDigits : Int32 = 0

    def jf_maxDigits : Int32
        @maxDigits
    end

    def jf_maxDigits=(value : Int32) : Int32
        @maxDigits = value
    end
    @charArray : Array(UInt16)? = nil

    def jf_charArray : Array(UInt16)?
        @charArray
    end

    def jf_charArray=(value : Array(UInt16)?) : Array(UInt16)?
        @charArray = value
    end
    @currentTotalDigits : Int32 = 0

    def jf_currentTotalDigits : Int32
        @currentTotalDigits
    end

    def jf_currentTotalDigits=(value : Int32) : Int32
        @currentTotalDigits = value
    end
    @primitiveLongSingleton : PrimitiveLongSingleton? = nil

    def jf_primitiveLongSingleton : PrimitiveLongSingleton?
        @primitiveLongSingleton
    end

    def jf_primitiveLongSingleton=(value : PrimitiveLongSingleton?) : PrimitiveLongSingleton?
        @primitiveLongSingleton = value
    end
    

    def self.createPowerOfTen(powerOfTen : Int) : PrimitiveLongUtil?
        powerOfTen = powerOfTen.to_i32!
        primitiveLongUtil : PrimitiveLongUtil? = PrimitiveLongUtil.new.jinit_PrimitiveLongUtil(powerOfTen, NullUtil.getInstance().not_nil!.jf_NULL_OBJECT)
        if powerOfTen.remainder(10) != 0
            logUtil : LogUtil? = LogUtil.getInstance()
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, primitiveLongUtil, commonStrings.not_nil!.jf_CONSTRUCTOR, JException.new.jinit_JException("Max must be power of 10"))
        end
        return primitiveLongUtil
    end

    # Java field initializers run after the super constructor
    def jfields_PrimitiveLongUtil : Nil
    @logUtil = LogUtil.getInstance()
    
    
    
    
    
    @primitiveLongSingleton = PrimitiveLongSingleton.getInstance()
    end
    

    def jinit_PrimitiveLongUtil(powerOfTen : Int, unused : JAny) : self
        powerOfTen = powerOfTen.to_i32!
        jfields_PrimitiveLongUtil()
        @maxDigits = MathUtil.getInstance().not_nil!.getTotalDigits(powerOfTen)
        @powerOfTen = powerOfTen
        @maxValue = (powerOfTen &* 10) &- 1
        @charArray = Array(UInt16).new(@maxDigits, 0_u16)
        self
    end
    

    def getCharArray(value : Int) : Array(UInt16)?
        value = value.to_i32!
        if value < 10
            self.setCurrentTotalDigits(1)
            return @primitiveLongSingleton.not_nil!.jf_NUMBER_CHAR_ARRAYS.not_nil![value]
        end
        if value > @maxValue
            self.setCurrentTotalDigits(3)
            return @primitiveLongSingleton.not_nil!.jf_UNK
        end
        index : Int32 = 0
        div : Int32 = @powerOfTen
        lastValue : Int32 = 0
        while div >= 1
            digit : Int32 = (value &- lastValue).tdiv(div)
            if digit >= 0 && digit < 10
                if digit == 0 && index == 0
                else
                    @charArray.not_nil![((index &+= 1) &- 1)] = @primitiveLongSingleton.not_nil!.jf_NUMBER_CHAR_ARRAY.not_nil![digit]
                end
                lastValue &+= digit &* div
            end
            div = div.tdiv(10)
        end
        self.setCurrentTotalDigits(index)
        return @charArray
    end
    

    def setCurrentTotalDigits(currentTotalDigits : Int) : Nil
        currentTotalDigits = currentTotalDigits.to_i32!
        @currentTotalDigits = currentTotalDigits
    end
    

    def getCurrentTotalDigits : Int32
        return @currentTotalDigits
    end
    

    def getMaxDigits : Int32
        return @maxDigits
    end
end

