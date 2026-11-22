# Generated Code Do Not Modify
# package org.allbinary.physics.movement

class PreciseConstantVelocityMovement < BasicConstantVelocityMovement
    @accumulatedX : Int32 = 0

    def jf_accumulatedX : Int32
        @accumulatedX
    end

    def jf_accumulatedX=(value : Int32) : Int32
        @accumulatedX = value
    end
    @accumulatedY : Int32 = 0

    def jf_accumulatedY : Int32
        @accumulatedY
    end

    def jf_accumulatedY=(value : Int32) : Int32
        @accumulatedY = value
    end
    @accumulatedZ : Int32 = 0

    def jf_accumulatedZ : Int32
        @accumulatedZ
    end

    def jf_accumulatedZ=(value : Int32) : Int32
        @accumulatedZ = value
    end
    @factorValue : Int32 = 0

    def jf_factorValue : Int32
        @factorValue
    end

    def jf_factorValue=(value : Int32) : Int32
        @factorValue = value
    end

    # Java field initializers run after the super constructor
    def jfields_PreciseConstantVelocityMovement : Nil
    
    
    
    @factorValue = ScaleFactorFactory.getInstance().not_nil!.jf_DEFAULT_SCALE_VALUE
    end
    

    def jinit_PreciseConstantVelocityMovement(basicDecimal : BasicDecimal?, velocityProperties : BasicVelocityProperties?) : self
        jinit_BasicConstantVelocityMovement(basicDecimal, velocityProperties)
        jfields_PreciseConstantVelocityMovement()
        self
    end
    

    def init(speedBasicDecimal : BasicDecimal?, angle : Int, otherAngle : Int) : Nil
        angle = angle.to_i32!
        otherAngle = otherAngle.to_i32!
    end
    

    def process(layer : AllBinaryGameLayer?) : Nil
        mathUtil : MathUtil? = MathUtil.getInstance()
        velocityProperties : BasicVelocityProperties? = self.getVelocityProperties()
        @accumulatedX = (((@accumulatedX).to_i64! &+ velocityProperties.not_nil!.getVelocityXBasicDecimalP().not_nil!.getUnscaled())).to_i32!
        @accumulatedY = (((@accumulatedY).to_i64! &+ velocityProperties.not_nil!.getVelocityYBasicDecimalP().not_nil!.getUnscaled())).to_i32!
        @accumulatedZ = (((@accumulatedZ).to_i64! &+ velocityProperties.not_nil!.getVelocityZBasicDecimalP().not_nil!.getUnscaled())).to_i32!
        layer.not_nil!.moveDXYZ(@accumulatedX.tdiv(@factorValue), @accumulatedY.tdiv(@factorValue), @accumulatedZ.tdiv(@factorValue))
        if mathUtil.not_nil!.abs(@accumulatedX) > @factorValue
            @accumulatedX = 0
        end
        if mathUtil.not_nil!.abs(@accumulatedY) > @factorValue
            @accumulatedY = 0
        end
        if mathUtil.not_nil!.abs(@accumulatedZ) > @factorValue
            @accumulatedZ = 0
        end
    end
end

