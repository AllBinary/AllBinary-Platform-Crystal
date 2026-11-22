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

class BasicDecimal < JObject
    @units : Int64 = 0_i64

    def jf_units : Int64
        @units
    end

    def jf_units=(value : Int64) : Int64
        @units = value
    end
    @scaled : Int32 = 0

    def jf_scaled : Int32
        @scaled
    end

    def jf_scaled=(value : Int32) : Int32
        @scaled = value
    end
    @factor : Int32 = 0

    def jf_factor : Int32
        @factor
    end

    def jf_factor=(value : Int32) : Int32
        @factor = value
    end
    @factorValue : Int32 = 0

    def jf_factorValue : Int32
        @factorValue
    end

    def jf_factorValue=(value : Int32) : Int32
        @factorValue = value
    end

    @@jst_ZERO_BIGDECIMAL : BasicDecimal? = nil

    def self.jst_ZERO_BIGDECIMAL : BasicDecimal?
        jclinit
        @@jst_ZERO_BIGDECIMAL
    end

    def self.jst_ZERO_BIGDECIMAL=(value : BasicDecimal?) : BasicDecimal?
        jclinit
        @@jst_ZERO_BIGDECIMAL = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_ZERO_BIGDECIMAL = BasicDecimal.new.jinit_BasicDecimal(0)
    end
    

    def self.createBigDecimal(bigDecimal : BasicDecimal?) : BasicDecimal?
        return BasicDecimal.new.jinit_BasicDecimal(bigDecimal.not_nil!.getUnscaled())
    end

    # Java field initializers run after the super constructor
    def jfields_BasicDecimal : Nil
    
    
    @factor = ScaleFactorFactory.getInstance().not_nil!.jf_DEFAULT_SCALE_FACTOR
    @factorValue = ScaleFactorFactory.getInstance().not_nil!.jf_DEFAULT_SCALE_VALUE
    end
    

    def jinit_BasicDecimal(units : Int) : self
        units = units.to_i64!
        jfields_BasicDecimal()
        @units = units
        self.updateScaled()
        self
    end
    

    def setint(value : Int) : Nil
        value = value.to_i32!
        @units = (value).to_i64!
        self.updateScaled()
    end
    

    def setlong(value : Int) : Nil
        value = value.to_i64!
        @units = value
        self.updateScaled()
    end
    

    def set(bigDecimal : BasicDecimal?) : Nil
        @units = bigDecimal.not_nil!.getUnscaled()
        self.updateScaled()
    end
    

    def addint(value : Int) : Nil
        value = value.to_i32!
        @units = @units &+ (value).to_i64!
        self.updateScaled()
    end
    

    def addlong(value : Int) : Nil
        value = value.to_i64!
        @units = @units &+ value
        self.updateScaled()
    end
    

    def add(bigDecimal : BasicDecimal?) : Nil
        @units = @units &+ bigDecimal.not_nil!.getUnscaled()
        self.updateScaled()
    end
    

    def subtractint(value : Int) : Nil
        value = value.to_i32!
        @units = @units &- (value).to_i64!
        self.updateScaled()
    end
    

    def subtractlong(value : Int) : Nil
        value = value.to_i64!
        @units = @units &- value
        self.updateScaled()
    end
    

    def subtract(bigDecimal : BasicDecimal?) : Nil
        @units = @units &- bigDecimal.not_nil!.getUnscaled()
        self.updateScaled()
    end
    

    def multiplyint(value : Int) : Nil
        value = value.to_i32!
        @units = @units &* (value).to_i64!
        self.updateScaled()
    end
    

    def multiplylong(value : Int) : Nil
        value = value.to_i64!
        @units = @units &* value
        self.updateScaled()
    end
    

    def multiply(bigDecimal : BasicDecimal?) : Nil
        @units = @units &* bigDecimal.not_nil!.getUnscaled()
        self.updateScaled()
    end
    

    def divideint(value : Int) : Nil
        value = value.to_i32!
        @units = @units.tdiv((value).to_i64!)
        self.updateScaled()
    end
    

    def dividelong(value : Int) : Nil
        value = value.to_i64!
        @units = @units.tdiv(value)
        self.updateScaled()
    end
    

    def divide(bigDecimal : BasicDecimal?) : Nil
        @units = @units.tdiv(bigDecimal.not_nil!.getUnscaled())
        self.updateScaled()
    end
    

    def getUnscaled : Int64
        return @units
    end
    

    def updateScaled : Nil
        @scaled = ((@units.tdiv((@factorValue).to_i64!))).to_i32!
    end
    

    def getScaled : Int32
        return @scaled
    end
    

    def toString : String
        return JLong.toString(@units)
    end
    

    def getScaledFactor : Int32
        return @factor
    end
    

    def getScaledFactorValue : Int32
        return @factorValue
    end
end

