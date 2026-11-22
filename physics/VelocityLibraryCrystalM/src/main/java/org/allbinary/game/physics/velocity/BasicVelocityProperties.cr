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
# package org.allbinary.game.physics.velocity

class BasicVelocityProperties < JObject
    include BasicVelocityInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @velocityXBasicDecimal : BasicDecimal? = nil

    def jf_velocityXBasicDecimal : BasicDecimal?
        @velocityXBasicDecimal
    end

    def jf_velocityXBasicDecimal=(value : BasicDecimal?) : BasicDecimal?
        @velocityXBasicDecimal = value
    end
    @velocityYBasicDecimal : BasicDecimal? = nil

    def jf_velocityYBasicDecimal : BasicDecimal?
        @velocityYBasicDecimal
    end

    def jf_velocityYBasicDecimal=(value : BasicDecimal?) : BasicDecimal?
        @velocityYBasicDecimal = value
    end
    @velocityZBasicDecimal : BasicDecimal? = nil

    def jf_velocityZBasicDecimal : BasicDecimal?
        @velocityZBasicDecimal
    end

    def jf_velocityZBasicDecimal=(value : BasicDecimal?) : BasicDecimal?
        @velocityZBasicDecimal = value
    end
    @axisMathVectorUtil : AxisMathVectorUtil? = nil

    def jf_axisMathVectorUtil : AxisMathVectorUtil?
        @axisMathVectorUtil
    end

    def jf_axisMathVectorUtil=(value : AxisMathVectorUtil?) : AxisMathVectorUtil?
        @axisMathVectorUtil = value
    end
    @directionUtil : DirectionUtil? = nil

    def jf_directionUtil : DirectionUtil?
        @directionUtil
    end

    def jf_directionUtil=(value : DirectionUtil?) : DirectionUtil?
        @directionUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_BasicVelocityProperties : Nil
    @logUtil = LogUtil.getInstance()
    
    
    
    @axisMathVectorUtil = AxisMathVectorUtil.getInstance()
    @directionUtil = DirectionUtil.getInstance()
    end
    

    def jinit_BasicVelocityProperties : self
        jfields_BasicVelocityProperties()
        @velocityXBasicDecimal = BasicDecimal.new.jinit_BasicDecimal(0)
        @velocityYBasicDecimal = BasicDecimal.new.jinit_BasicDecimal(0)
        @velocityZBasicDecimal = BasicDecimal.new.jinit_BasicDecimal(0)
        self
    end
    

    def zero : Nil
        @velocityXBasicDecimal.not_nil!.setint(0)
        @velocityYBasicDecimal.not_nil!.setint(0)
        @velocityZBasicDecimal.not_nil!.setint(0)
    end
    

    def getVelocityXBasicDecimalP : BasicDecimal?
        return @velocityXBasicDecimal
    end
    

    def getVelocityYBasicDecimalP : BasicDecimal?
        return @velocityYBasicDecimal
    end
    

    def getVelocityZBasicDecimalP : BasicDecimal?
        return @velocityZBasicDecimal
    end
    

    def setVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal : BasicDecimal?, direction : Direction?, otherDirection : Direction?) : Nil
        angle : Angle? = @directionUtil.not_nil!.getAngle(direction)
        otherAngle : Angle? = @directionUtil.not_nil!.getAngle(otherDirection)
        self.setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
    end
    

    def setVelocityWithDirection(magnitude : Int, direction : Direction?, otherDirection : Direction?) : Nil
        magnitude = magnitude.to_i64!
        angle : Angle? = @directionUtil.not_nil!.getAngle(direction)
        otherAngle : Angle? = @directionUtil.not_nil!.getAngle(otherDirection)
        self.setVelocity(magnitude, angle, otherAngle)
    end
    

    def addVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal : BasicDecimal?, direction : Direction?, otherDirection : Direction?) : Nil
        angle : Angle? = @directionUtil.not_nil!.getAngle(direction)
        otherAngle : Angle? = @directionUtil.not_nil!.getAngle(otherDirection)
        self.addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
    end
    

    def addVelocityWithDirection(magnitude : Int, direction : Direction?, otherDirection : Direction?) : Nil
        magnitude = magnitude.to_i64!
        angle : Angle? = @directionUtil.not_nil!.getAngle(direction)
        otherAngle : Angle? = @directionUtil.not_nil!.getAngle(otherDirection)
        self.addVelocity(magnitude, angle, otherAngle)
    end
    

    def setVelocityWithBigDecimal(magnitudeBasicDecimal : BasicDecimal?, angle : Angle?, otherAngle : Angle?) : Nil
        magnitude : Int64 = magnitudeBasicDecimal.not_nil!.getUnscaled()
        self.setVelocity(magnitude, angle, otherAngle)
    end
    

    def addVelocityWithBigDecimal(magnitudeBasicDecimal : BasicDecimal?, angle : Angle?, otherAngle : Angle?) : Nil
        magnitude : Int64 = magnitudeBasicDecimal.not_nil!.getUnscaled()
        self.addVelocity(magnitude, angle, otherAngle)
    end
    

    def setVelocity(magnitude : Int, angle : Angle?, otherAngle : Angle?) : Nil
        magnitude = magnitude.to_i64!
        self.setVelocityi(magnitude, (angle.not_nil!.getValue()).to_i32!, (otherAngle.not_nil!.getValue()).to_i32!)
    end
    

    def addVelocity(magnitude : Int, angle : Angle?, otherAngle : Angle?) : Nil
        magnitude = magnitude.to_i64!
        self.addVelocityi(magnitude, (angle.not_nil!.getValue()).to_i32!, (otherAngle.not_nil!.getValue()).to_i32!)
    end
    

    def setVelocityi(magnitude : Int, angle : Int, otherAngle : Int) : Nil
        magnitude = magnitude.to_i64!
        angle = angle.to_i32!
        otherAngle = otherAngle.to_i32!
        xVector : Int64 = (@axisMathVectorUtil.not_nil!.calculateX(magnitude, angle).tdiv((@velocityXBasicDecimal.not_nil!.getScaledFactorValue()).to_i64!))
        yVector : Int64 = (@axisMathVectorUtil.not_nil!.calculateY(magnitude, angle).tdiv((@velocityYBasicDecimal.not_nil!.getScaledFactorValue()).to_i64!))
        zVector : Int64 = (@axisMathVectorUtil.not_nil!.calculateZ(magnitude, otherAngle).tdiv((@velocityZBasicDecimal.not_nil!.getScaledFactorValue()).to_i64!))
        @velocityXBasicDecimal.not_nil!.setlong(xVector)
        @velocityYBasicDecimal.not_nil!.setlong(yVector)
        @velocityZBasicDecimal.not_nil!.setlong(zVector)
    end
    

    def addVelocityi(magnitude : Int, angle : Int, otherAngle : Int) : Nil
        magnitude = magnitude.to_i64!
        angle = angle.to_i32!
        otherAngle = otherAngle.to_i32!
        xVector : Int64 = (@axisMathVectorUtil.not_nil!.calculateX(magnitude, angle).tdiv((@velocityXBasicDecimal.not_nil!.getScaledFactorValue()).to_i64!))
        yVector : Int64 = (@axisMathVectorUtil.not_nil!.calculateY(magnitude, angle).tdiv((@velocityYBasicDecimal.not_nil!.getScaledFactorValue()).to_i64!))
        zVector : Int64 = (@axisMathVectorUtil.not_nil!.calculateZ(magnitude, otherAngle).tdiv((@velocityZBasicDecimal.not_nil!.getScaledFactorValue()).to_i64!))
        @velocityXBasicDecimal.not_nil!.addlong(xVector)
        @velocityYBasicDecimal.not_nil!.addlong(yVector)
        @velocityZBasicDecimal.not_nil!.addlong(zVector)
    end
    

    def toString : String
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        positionStrings : PositionStrings? = PositionStrings.getInstance()
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringUtil : StringUtil? = StringUtil.getInstance()
        stringBuffer.not_nil!.append("Velocity ")
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_X_LABEL)
        stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(@velocityXBasicDecimal))
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_Y_LABEL)
        stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(@velocityYBasicDecimal))
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_Z_LABEL)
        stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(@velocityZBasicDecimal))
        return stringBuffer.not_nil!.toString()
    end
end

