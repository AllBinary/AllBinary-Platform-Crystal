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

class VelocityProperties < BasicVelocityProperties
    include VelocityInterface
    @maxForwardVelocity : Int32 = 0

    def jf_maxForwardVelocity : Int32
        @maxForwardVelocity
    end

    def jf_maxForwardVelocity=(value : Int32) : Int32
        @maxForwardVelocity = value
    end
    @maxReverseVelocity : Int32 = 0

    def jf_maxReverseVelocity : Int32
        @maxReverseVelocity
    end

    def jf_maxReverseVelocity=(value : Int32) : Int32
        @maxReverseVelocity = value
    end

    @@jst_NULL_VELOCITY_PROPERTIES : VelocityProperties? = nil

    def self.jst_NULL_VELOCITY_PROPERTIES : VelocityProperties?
        jclinit
        @@jst_NULL_VELOCITY_PROPERTIES
    end

    def self.jst_NULL_VELOCITY_PROPERTIES=(value : VelocityProperties?) : VelocityProperties?
        jclinit
        @@jst_NULL_VELOCITY_PROPERTIES = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_VELOCITY_PROPERTIES = VelocityProperties.new.jinit_VelocityProperties(0, 0)
    end
    

    def jinit_VelocityProperties(maxForwardVelocity : Int, maxReverseVelocity : Int) : self
        maxForwardVelocity = maxForwardVelocity.to_i32!
        maxReverseVelocity = maxReverseVelocity.to_i32!
        jinit_BasicVelocityProperties()
        self.setMaxForwardVelocity(maxForwardVelocity)
        self.setMaxReverseVelocity(maxReverseVelocity)
        self
    end
    

    def getMaxForwardVelocity : Int32
        return @maxForwardVelocity
    end
    

    def setMaxForwardVelocity(maxForwardVelocity : Int) : Nil
        maxForwardVelocity = maxForwardVelocity.to_i32!
        @maxForwardVelocity = maxForwardVelocity
    end
    

    def getMaxReverseVelocity : Int32
        return @maxReverseVelocity
    end
    

    def setMaxReverseVelocity(maxReverseVelocity : Int) : Nil
        maxReverseVelocity = maxReverseVelocity.to_i32!
        @maxReverseVelocity = maxReverseVelocity
    end
    

    def limitMaxXYForwardVelocity : Nil
        self.limitMaxXYVelocity(self.getMaxForwardVelocity())
    end
    

    def limitMaxXYReverseVelocity : Nil
        self.limitMaxXYVelocity(self.getMaxReverseVelocity())
    end
    

    def limitMaxYForwardVelocity : Nil
        self.limitMaxYVelocity(self.getMaxForwardVelocity())
    end
    

    def limitMaxYReverseVelocity : Nil
        self.limitMaxYVelocity(self.getMaxReverseVelocity())
    end
    

    def limitMaxXForwardVelocity : Nil
        self.limitMaxXVelocity(self.getMaxForwardVelocity())
    end
    

    def limitMaxXReverseVelocity : Nil
        self.limitMaxXVelocity(self.getMaxReverseVelocity())
    end
    

    def isOverXYMaxForwardVelocity : Bool
        return self.isOverXYMaxVelocity(self.getMaxForwardVelocity())
    end
    

    def isOverXYMaxReverseVelocity : Bool
        return self.isOverXYMaxVelocity(self.getMaxReverseVelocity())
    end
    

    def limitXYToForwardAndReverseMaxVelocity : Nil
        self.limitMaxXYForwardVelocity()
        self.limitMaxXYReverseVelocity()
    end
    

    def limitMaxXYVelocity(maxVelocity : Int) : Nil
        maxVelocity = maxVelocity.to_i32!
        self.limitMaxXVelocity(maxVelocity)
        self.limitMaxYVelocity(maxVelocity)
    end
    

    def limitMaxPositiveYVelocity(maxVelocity : Int) : Nil
        maxVelocity = maxVelocity.to_i32!
        if @velocityYBasicDecimal.not_nil!.getUnscaled() > (maxVelocity).to_i64!
            @velocityYBasicDecimal.not_nil!.setint(maxVelocity)
        end
    end
    

    def limitMaxNegativeYVelocity(maxVelocity : Int) : Nil
        maxVelocity = maxVelocity.to_i32!
        if @velocityYBasicDecimal.not_nil!.getUnscaled() < (JR.neg(maxVelocity)).to_i64!
            @velocityYBasicDecimal.not_nil!.setint(JR.neg(maxVelocity))
        end
    end
    

    def limitMaxYVelocity(maxVelocity : Int) : Nil
        maxVelocity = maxVelocity.to_i32!
        self.limitMaxPositiveYVelocity(maxVelocity)
        self.limitMaxNegativeYVelocity(maxVelocity)
    end
    

    def limitMaxXVelocity(maxVelocity : Int) : Nil
        maxVelocity = maxVelocity.to_i32!
        if @velocityXBasicDecimal.not_nil!.getUnscaled() > (maxVelocity).to_i64!
            @velocityXBasicDecimal.not_nil!.setint(maxVelocity)
        end
        if @velocityXBasicDecimal.not_nil!.getUnscaled() < (JR.neg(maxVelocity)).to_i64!
            @velocityXBasicDecimal.not_nil!.setint(JR.neg(maxVelocity))
        end
    end
    

    def isOverXYMaxVelocity(maxVelocity : Int) : Bool
        maxVelocity = maxVelocity.to_i32!
        if @velocityXBasicDecimal.not_nil!.getUnscaled() > (maxVelocity).to_i64!
            return true
        end
        if @velocityXBasicDecimal.not_nil!.getUnscaled() < (JR.neg(maxVelocity)).to_i64!
            return true
        end
        if @velocityYBasicDecimal.not_nil!.getUnscaled() > (maxVelocity).to_i64!
            return true
        end
        if @velocityYBasicDecimal.not_nil!.getUnscaled() < (JR.neg(maxVelocity)).to_i64!
            return true
        end
        return false
    end
    

    def setVelocityi(magnitude : Int, angle : Int, otherAngle : Int) : Nil
        magnitude = magnitude.to_i64!
        angle = angle.to_i32!
        otherAngle = otherAngle.to_i32!
        super(magnitude, angle, otherAngle)
        self.limitXYToForwardAndReverseMaxVelocity()
    end
    

    def addVelocityi(magnitude : Int, angle : Int, otherAngle : Int) : Nil
        magnitude = magnitude.to_i64!
        angle = angle.to_i32!
        otherAngle = otherAngle.to_i32!
        super(magnitude, angle, otherAngle)
        self.limitXYToForwardAndReverseMaxVelocity()
    end
end

