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

class BasicConstantVelocityMovement < Movement
    include VelocityInterfaceCompositeInterface
    @velocityProperties : BasicVelocityProperties? = nil

    def jf_velocityProperties : BasicVelocityProperties?
        @velocityProperties
    end

    def jf_velocityProperties=(value : BasicVelocityProperties?) : BasicVelocityProperties?
        @velocityProperties = value
    end
    @speedBasicDecimal : BasicDecimal? = nil

    def jf_speedBasicDecimal : BasicDecimal?
        @speedBasicDecimal
    end

    def jf_speedBasicDecimal=(value : BasicDecimal?) : BasicDecimal?
        @speedBasicDecimal = value
    end
    @axisMathVectorUtil : AxisMathVectorUtil? = nil

    def jf_axisMathVectorUtil : AxisMathVectorUtil?
        @axisMathVectorUtil
    end

    def jf_axisMathVectorUtil=(value : AxisMathVectorUtil?) : AxisMathVectorUtil?
        @axisMathVectorUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_BasicConstantVelocityMovement : Nil
    
    @speedBasicDecimal = BasicDecimal.jst_ZERO_BIGDECIMAL
    @axisMathVectorUtil = AxisMathVectorUtil.getInstance()
    end
    

    def jinit_BasicConstantVelocityMovement(basicDecimal : BasicDecimal?, velocityProperties : BasicVelocityProperties?) : self
        jinit_Movement()
        jfields_BasicConstantVelocityMovement()
        self.setSpeedBasicDecimal(basicDecimal)
        @velocityProperties = velocityProperties
        self
    end
    

    def init(speedBasicDecimal : BasicDecimal?, angle : Int, otherAngle : Int) : Nil
        angle = angle.to_i32!
        otherAngle = otherAngle.to_i32!
        @speedBasicDecimal = speedBasicDecimal
        angleFactory : AngleFactory? = AngleFactory.getInstance()
        @velocityProperties.not_nil!.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.not_nil!.getAt(angle), angleFactory.not_nil!.getAt(otherAngle))
    end
    

    def moveOutsideRadius(layer : AllBinaryLayer?, radius : Int, angle : Int, otherAngle : Int) : Nil
        radius = radius.to_i64!
        angle = angle.to_i32!
        otherAngle = otherAngle.to_i32!
        scaleFactorValue : Int32 = @speedBasicDecimal.not_nil!.getScaledFactorValue()
        xVector : Int32 = ((@axisMathVectorUtil.not_nil!.calculateX(radius, angle).tdiv((scaleFactorValue).to_i64!))).to_i32!
        yVector : Int32 = ((@axisMathVectorUtil.not_nil!.calculateY(radius, angle).tdiv((scaleFactorValue).to_i64!))).to_i32!
        zVector : Int32 = ((@axisMathVectorUtil.not_nil!.calculateZ(radius, otherAngle).tdiv((scaleFactorValue).to_i64!))).to_i32!
        layer.not_nil!.moveDXYZ(xVector, yVector, zVector)
    end
    

    def process(layer : AllBinaryGameLayer?) : Nil
        layer.not_nil!.moveDXYZ(@velocityProperties.not_nil!.getVelocityXBasicDecimalP().not_nil!.getScaled(), @velocityProperties.not_nil!.getVelocityYBasicDecimalP().not_nil!.getScaled(), @velocityProperties.not_nil!.getVelocityZBasicDecimalP().not_nil!.getScaled())
    end
    

    def toString : String
        return @velocityProperties.not_nil!.toString()
    end
    

    def stop : Nil
        @velocityProperties.not_nil!.zero()
    end
    

    def getVelocityProperties : BasicVelocityProperties?
        return @velocityProperties
    end
    

    def setVelocityProperties(velocityProperties : BasicVelocityProperties?) : Nil
        @velocityProperties = velocityProperties
    end
    

    def setSpeedBasicDecimal(speedBasicDecimal : BasicDecimal?) : Nil
        @speedBasicDecimal = speedBasicDecimal
    end
    

    def getSpeedBasicDecimal : BasicDecimal?
        return @speedBasicDecimal
    end
end

