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

class PooledImageArrayRotationAnimationFactory < JObject
    include AnimationInterfaceFactoryInterface
    @allBinaryImageRotationAnimationInfo : JAny = nil

    def jf_allBinaryImageRotationAnimationInfo : JAny
        @allBinaryImageRotationAnimationInfo
    end

    def jf_allBinaryImageRotationAnimationInfo=(value : JAny) : JAny
        @allBinaryImageRotationAnimationInfo = value
    end
    @animationBehaviorFactory : AnimationBehaviorFactory? = nil

    def jf_animationBehaviorFactory : AnimationBehaviorFactory?
        @animationBehaviorFactory
    end

    def jf_animationBehaviorFactory=(value : AnimationBehaviorFactory?) : AnimationBehaviorFactory?
        @animationBehaviorFactory = value
    end
    

    def self.createFactory(image : Image?, animationBehaviorFactory : AnimationBehaviorFactory?) : PooledImageArrayRotationAnimationFactory?
        totalAngle : Int32 = (AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!
        angleIncrement : Int32 = (totalAngle.tdiv(GameConfigurationCentral.getInstance().not_nil!.getGameControlFidelity()))
        return PooledImageArrayRotationAnimationFactory.new.jinit_PooledImageArrayRotationAnimationFactory(image, image.not_nil!.getWidth(), image.not_nil!.getHeight(), JR.neg((JR.shr(image.not_nil!.getWidth(), 2))), JR.neg((JR.shr(image.not_nil!.getHeight(), 2))), angleIncrement, animationBehaviorFactory)
    end
    

    def self.createDXY(image : Image?, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : PooledImageArrayRotationAnimationFactory?
        dx = dx.to_i32!
        dy = dy.to_i32!
        totalAngle : Int32 = (AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!
        angleIncrement : Int32 = (totalAngle.tdiv(GameConfigurationCentral.getInstance().not_nil!.getGameControlFidelity()))
        return PooledImageArrayRotationAnimationFactory.new.jinit_PooledImageArrayRotationAnimationFactory(image, image.not_nil!.getWidth(), image.not_nil!.getHeight(), dx, dy, angleIncrement, animationBehaviorFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_PooledImageArrayRotationAnimationFactory : Nil
    @allBinaryImageRotationAnimationInfo = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    
    end
    

    def jinit_PooledImageArrayRotationAnimationFactory(image : Image?, width : Int, height : Int, dx : Int, dy : Int, angleIncrement : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        width = width.to_i32!
        height = height.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        angleIncrement = angleIncrement.to_i32!
        jfields_PooledImageArrayRotationAnimationFactory()
        @animationBehaviorFactory = animationBehaviorFactory
        totalAngle : Int32 = (AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!
        imageArray : Array(Image?)? = ImageToRotationImageArrayUtil.getInstance().not_nil!.generate(image, angleIncrement, totalAngle)
        @allBinaryImageRotationAnimationInfo = ImageArrayRotationAnimationInfo.new.jinit_ImageArrayRotationAnimationInfo(imageArray, angleIncrement, totalAngle, dx, dy)
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        return AdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo(@allBinaryImageRotationAnimationInfo, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
end

