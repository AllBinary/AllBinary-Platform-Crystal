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
# package org.allbinary.physics.movement

class XYOscillateVelocityMovement < BasicConstantVelocityMovement
    @oscillateMin : Int32 = 0

    def jf_oscillateMin : Int32
        @oscillateMin
    end

    def jf_oscillateMin=(value : Int32) : Int32
        @oscillateMin = value
    end
    @oscillateMax : Int32 = 0

    def jf_oscillateMax : Int32
        @oscillateMax
    end

    def jf_oscillateMax=(value : Int32) : Int32
        @oscillateMax = value
    end
    @oscillate : Int32 = 0

    def jf_oscillate : Int32
        @oscillate
    end

    def jf_oscillate=(value : Int32) : Int32
        @oscillate = value
    end
    @oscillatePositive : Bool = false

    def jf_oscillatePositive : Bool
        @oscillatePositive
    end

    def jf_oscillatePositive=(value : Bool) : Bool
        @oscillatePositive = value
    end
    

    def jinit_XYOscillateVelocityMovement(speedBasicDecimal : BasicDecimal?, oscillateMin : Int, oscillateMax : Int) : self
        oscillateMin = oscillateMin.to_i32!
        oscillateMax = oscillateMax.to_i32!
        jinit_BasicConstantVelocityMovement(speedBasicDecimal, VelocityProperties.new.jinit_VelocityProperties((speedBasicDecimal.not_nil!.getUnscaled()).to_i32!, (speedBasicDecimal.not_nil!.getUnscaled()).to_i32!))
        @oscillateMin = oscillateMin
        @oscillateMax = oscillateMax
        self
    end
    

    def process(layer : AllBinaryGameLayer?) : Nil
        super(layer)
        if @oscillate < @oscillateMin
            @oscillatePositive = true
            self.getVelocityProperties().not_nil!.getVelocityYBasicDecimalP().not_nil!.addint(3000)
        elsif @oscillate > @oscillateMax
            @oscillatePositive = false
            self.getVelocityProperties().not_nil!.getVelocityYBasicDecimalP().not_nil!.subtractint(3000)
        end
        if @oscillatePositive
            @oscillate &+= 1
            self.getVelocityProperties().not_nil!.getVelocityXBasicDecimalP().not_nil!.addint(5000)
        else
            @oscillate &-= 1
            self.getVelocityProperties().not_nil!.getVelocityXBasicDecimalP().not_nil!.subtractint(5000)
        end
    end
end

