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

class VectorToImageArrayRotationAnimationFactory < BaseImageAnimationFactory
    @imageArray : Array(Image?)? = nil

    def jf_imageArray : Array(Image?)?
        @imageArray
    end

    def jf_imageArray=(value : Array(Image?)?) : Array(Image?)?
        @imageArray = value
    end
    @angleIncrement : Int32 = 0

    def jf_angleIncrement : Int32
        @angleIncrement
    end

    def jf_angleIncrement=(value : Int32) : Int32
        @angleIncrement = value
    end

    # Java field initializers run after the super constructor
    def jfields_VectorToImageArrayRotationAnimationFactory : Nil
    @imageArray = NullImage.jst_NULL_IMAGE_ARRAY
    
    end
    

    def jinit_VectorToImageArrayRotationAnimationFactory(vectorInfo : VectorInfo?, basicColor : BasicColor?, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        jinit_BaseImageAnimationFactory(AnimationFrameToImageUtil.getInstance().not_nil!.getInstanceTranslate(vectorInfo.not_nil!.getWidth(), vectorInfo.not_nil!.getHeight(), VectorAnimation.createVectorAnimation(vectorInfo.not_nil!.getPoints(), basicColor, animationBehaviorFactory.not_nil!.getOrCreateInstance())), PrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory)
        jfields_VectorToImageArrayRotationAnimationFactory()
        self.init()
        self
    end
    

    def init : Nil
        angleFactory : AngleFactory? = AngleFactory.getInstance()
        @angleIncrement = ((angleFactory.not_nil!.jf_TOTAL_ANGLE).to_i32!).to_i32.tdiv(GameConfigurationCentral.getInstance().not_nil!.getGameControlFidelity())
        @imageArray = ImageToRotationImageArrayUtil.getInstance().not_nil!.generate(self.getImage(), self.getAngleIncrement(), (angleFactory.not_nil!.jf_TOTAL_ANGLE).to_i32!)
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        if @animationFactoryInitializationVisitor.not_nil!.jf_dx != 0 || @animationFactoryInitializationVisitor.not_nil!.jf_dy != 0
            return AdjustedImageArrayRotationAnimation.new.jinit_AdjustedImageArrayRotationAnimation(@imageArray, AngleInfo.getInstance((self.getAngleIncrement()).to_i16!), (AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!, @animationFactoryInitializationVisitor.not_nil!.jf_dx, @animationFactoryInitializationVisitor.not_nil!.jf_dy, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        else
            return AdjustedImageArrayRotationAnimation.createAnimation(@imageArray, AngleInfo.getInstance((@angleIncrement).to_i16!), (AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        end
        return nil
    end
    

    def getAngleIncrement : Int32
        return @angleIncrement
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
end

