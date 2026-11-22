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

class ConstantVelocityNotifyViewChangeMovement < Movement
    @basicVelocityProperties : BasicVelocityProperties? = nil

    def jf_basicVelocityProperties : BasicVelocityProperties?
        @basicVelocityProperties
    end

    def jf_basicVelocityProperties=(value : BasicVelocityProperties?) : BasicVelocityProperties?
        @basicVelocityProperties = value
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
    def jfields_ConstantVelocityNotifyViewChangeMovement : Nil
    
    
    @axisMathVectorUtil = AxisMathVectorUtil.getInstance()
    end
    

    def jinit_ConstantVelocityNotifyViewChangeMovement : self
        jinit_Movement()
        jfields_ConstantVelocityNotifyViewChangeMovement()
        @speedBasicDecimal = BasicDecimal.jst_ZERO_BIGDECIMAL
        @basicVelocityProperties = BasicVelocityProperties.new.jinit_BasicVelocityProperties()
        self
    end
    

    def init(speedBasicDecimal : BasicDecimal?, angle : Int, otherAngle : Int) : Nil
        angle = angle.to_i32!
        otherAngle = otherAngle.to_i32!
        @speedBasicDecimal = speedBasicDecimal
        angleFactory : AngleFactory? = AngleFactory.getInstance()
        @basicVelocityProperties.not_nil!.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.not_nil!.getAt(angle), angleFactory.not_nil!.getAt(otherAngle))
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
        x : Int32 = @basicVelocityProperties.not_nil!.getVelocityXBasicDecimalP().not_nil!.getScaled()
        y : Int32 = @basicVelocityProperties.not_nil!.getVelocityYBasicDecimalP().not_nil!.getScaled()
        z : Int32 = @basicVelocityProperties.not_nil!.getVelocityZBasicDecimalP().not_nil!.getScaled()
        layer.not_nil!.moveDXYZ(x, y, z)
        if x != 0 || y != 0 || z != 0
            layer.not_nil!.onViewPositionChangeEvent()
        end
    end
    

    def stop : Nil
        @basicVelocityProperties.not_nil!.zero()
    end
end

