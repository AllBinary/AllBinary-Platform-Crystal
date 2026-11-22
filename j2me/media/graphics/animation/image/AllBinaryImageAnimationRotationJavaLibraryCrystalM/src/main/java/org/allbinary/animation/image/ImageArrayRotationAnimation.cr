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

class ImageArrayRotationAnimation < ImageArrayBaseRotationAnimation
    @expectedTotalFrames : Int32 = 0

    def jf_expectedTotalFrames : Int32
        @expectedTotalFrames
    end

    def jf_expectedTotalFrames=(value : Int32) : Int32
        @expectedTotalFrames = value
    end
    

    def self.createAnimation(anyType : JAny, animationBehavior : AnimationBehavior?) : ImageArrayRotationAnimation?
        imageRotationAnimationInfo : ImageArrayRotationAnimationInfo? = JR.cast(anyType, ImageArrayRotationAnimationInfo)
        return ImageArrayRotationAnimation.new.jinit_ImageArrayRotationAnimation(imageRotationAnimationInfo.not_nil!.getImageArray(), imageRotationAnimationInfo.not_nil!.getAngleInfoP(), imageRotationAnimationInfo.not_nil!.getTotalAngle(), animationBehavior)
    end
    

    def jinit_ImageArrayRotationAnimation(imageArray : Array(Image?)?, angleInfo : AngleInfo?, totalAngle : Int, animationBehavior : AnimationBehavior?) : self
        totalAngle = totalAngle.to_i32!
        jinit_ImageArrayBaseRotationAnimation(imageArray, angleInfo, animationBehavior)
        self.initImageArray(imageArray, angleInfo, totalAngle)
        self
    end
    

    def initImageArray(imageArray : Array(Image?)?, angleInfo : AngleInfo?, totalAngle : Int) : Nil
        totalAngle = totalAngle.to_i32!
        @expectedTotalFrames = totalAngle.tdiv(((@angleInfo.not_nil!.getAngleIncrementInfo().not_nil!.getAngleIncrement()).to_i32!).to_i32)
        @angleInfo.not_nil!.adjustAngle(0)
        if @expectedTotalFrames != self.getSize()
            raise (JException.new.jinit_JException("Wrong Number of Frames")).not_nil!
        end
    end
    

    def setImageArray(imageArray : Array(Image?)?) : Nil
        super(imageArray)
        @angleInfo.not_nil!.adjustAngle(0)
    end
end

