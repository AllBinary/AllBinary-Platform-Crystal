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
# package org.allbinary.animation.image

class AdjustedImageArrayRotationAnimation < ImageArrayRotationAnimation
    @dx : Int32 = 0

    def jf_dx : Int32
        @dx
    end

    def jf_dx=(value : Int32) : Int32
        @dx = value
    end
    @dy : Int32 = 0

    def jf_dy : Int32
        @dy
    end

    def jf_dy=(value : Int32) : Int32
        @dy = value
    end
    

    def self.createAdjustedImageArrayRotationAnimationInfo(anyType : JAny, animationBehavior : AnimationBehavior?) : AdjustedImageArrayRotationAnimation?
        imageRotationAnimationInfo : ImageArrayRotationAnimationInfo? = JR.cast(anyType, ImageArrayRotationAnimationInfo)
        return AdjustedImageArrayRotationAnimation.new.jinit_AdjustedImageArrayRotationAnimation(imageRotationAnimationInfo.not_nil!.getImageArray(), imageRotationAnimationInfo.not_nil!.getAngleInfoP(), imageRotationAnimationInfo.not_nil!.getTotalAngle(), imageRotationAnimationInfo.not_nil!.getDx(), imageRotationAnimationInfo.not_nil!.getDy(), animationBehavior)
    end
    

    def self.createAnimation(imageArray : Array(Image?)?, angleInfo : AngleInfo?, totalAngle : Int, animationBehavior : AnimationBehavior?) : AdjustedImageArrayRotationAnimation?
        totalAngle = totalAngle.to_i32!
        return AdjustedImageArrayRotationAnimation.new.jinit_AdjustedImageArrayRotationAnimation(imageArray, angleInfo, totalAngle, JR.neg((JR.shr(imageArray.not_nil![0].not_nil!.getWidth(), 2))), JR.neg((JR.shr(imageArray.not_nil![0].not_nil!.getHeight(), 2))), animationBehavior)
    end
    

    def jinit_AdjustedImageArrayRotationAnimation(imageArray : Array(Image?)?, angleInfo : AngleInfo?, totalAngle : Int, dx : Int, dy : Int, animationBehavior : AnimationBehavior?) : self
        totalAngle = totalAngle.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_ImageArrayRotationAnimation(imageArray, angleInfo, totalAngle, animationBehavior)
        self.init(dx, dy)
        self
    end
    

    def init(dx : Int, dy : Int) : Nil
        dx = dx.to_i32!
        dy = dy.to_i32!
        self.setDx(dx)
        self.setDy(dy)
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        super(graphics, x &+ @dx, y &+ @dy)
    end
    

    def setDx(dx : Int) : Nil
        dx = dx.to_i32!
        @dx = dx
    end
    

    def getDx : Int32
        return @dx
    end
    

    def setDy(dy : Int) : Nil
        dy = dy.to_i32!
        @dy = dy
    end
    

    def getDy : Int32
        return @dy
    end
end

