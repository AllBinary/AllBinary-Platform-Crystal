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
# package org.allbinary.animation.image.sprite

class ColorCompositeSpriteIndexedAnimationFactory < BaseImageAnimationFactory
    include ProceduralAnimationInterfaceFactoryInterface
    @animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil? = nil

    def jf_animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil?
        @animationFactorySpriteScaleUtil
    end

    def jf_animationFactorySpriteScaleUtil=(value : AnimationFactorySpriteScaleUtil?) : AnimationFactorySpriteScaleUtil?
        @animationFactorySpriteScaleUtil = value
    end
    @basicColorArray : Array(BasicColor?)? = nil

    def jf_basicColorArray : Array(BasicColor?)?
        @basicColorArray
    end

    def jf_basicColorArray=(value : Array(BasicColor?)?) : Array(BasicColor?)?
        @basicColorArray = value
    end

    # Java field initializers run after the super constructor
    def jfields_ColorCompositeSpriteIndexedAnimationFactory : Nil
    @animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    
    end
    

    def jinit_ColorCompositeSpriteIndexedAnimationFactory(image : Image?, basicColorArray : Array(BasicColor?)?, width : Int, height : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        width = width.to_i32!
        height = height.to_i32!
        jinit_BaseImageAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        jfields_ColorCompositeSpriteIndexedAnimationFactory()
        @basicColorArray = basicColorArray
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        sprite : Sprite? = @animationFactorySpriteScaleUtil.not_nil!.createImage(self.getImage(), @animationFactoryInitializationVisitor.not_nil!.jf_width, @animationFactoryInitializationVisitor.not_nil!.jf_height, @scaleProperties.not_nil!.jf_scaleWidth, @scaleProperties.not_nil!.jf_scaleHeight)
        return SpriteIndexedAnimation.new.jinit_SpriteIndexedAnimation(sprite, self.getImage(), @basicColorArray, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
    end
    

    def getInstanceAnimation(animationInterface : Animation?) : Animation?
        return self.getInstance(0)
    end
end

