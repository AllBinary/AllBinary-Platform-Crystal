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

class SpriteIndexedAnimationFactory < BaseImageAnimationFactory
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
    

    def self.createCWHDXY(image : Image?, basicColorArray : Array(BasicColor?)?, width : Int, height : Int, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : SpriteIndexedAnimationFactory?
        width = width.to_i32!
        height = height.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        return SpriteIndexedAnimationFactory.new.jinit_SpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory)
    end
    

    def self.createCWH(image : Image?, basicColorArray : Array(BasicColor?)?, width : Int, height : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : SpriteIndexedAnimationFactory?
        width = width.to_i32!
        height = height.to_i32!
        spriteIndexedAnimationFactory : SpriteIndexedAnimationFactory? = SpriteIndexedAnimationFactory.new.jinit_SpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        spriteIndexedAnimationFactory.not_nil!.initHWH()
        return spriteIndexedAnimationFactory
    end
    

    def self.createWH(image : Image?, width : Int, height : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : SpriteIndexedAnimationFactory?
        width = width.to_i32!
        height = height.to_i32!
        return SpriteIndexedAnimationFactory.new.jinit_SpriteIndexedAnimationFactory(image, BasicColorUtil.getInstance().not_nil!.jf_ZERO_ARRAY, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_SpriteIndexedAnimationFactory : Nil
    @animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    @basicColorArray = BasicColorUtil.getInstance().not_nil!.jf_ZERO_ARRAY
    end
    

    def jinit_SpriteIndexedAnimationFactory(image : Image?, basicColorArray : Array(BasicColor?)?, sequenceArray : Array(Int32)?, width : Int, height : Int, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        width = width.to_i32!
        height = height.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_BaseImageAnimationFactory(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        jfields_SpriteIndexedAnimationFactory()
        @basicColorArray = basicColorArray
        self
    end
    

    def initHWH : Nil
        @animationFactoryInitializationVisitor.not_nil!.jf_dx = JR.neg((JR.shr(@animationFactoryInitializationVisitor.not_nil!.jf_width, 2)))
        @animationFactoryInitializationVisitor.not_nil!.jf_dy = JR.neg((JR.shr(@animationFactoryInitializationVisitor.not_nil!.jf_height, 2)))
        if AndroidUtil.isAndroid()
            @animationFactoryInitializationVisitor.not_nil!.jf_dx &+= 3
        end
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        sprite : Sprite? = @animationFactorySpriteScaleUtil.not_nil!.createImage(self.getImage(), @animationFactoryInitializationVisitor.not_nil!.jf_width, @animationFactoryInitializationVisitor.not_nil!.jf_height, @scaleProperties.not_nil!.jf_scaleWidth, @scaleProperties.not_nil!.jf_scaleHeight)
        if @animationFactoryInitializationVisitor.not_nil!.jf_dx != 0 || @animationFactoryInitializationVisitor.not_nil!.jf_dy != 0
            return AdjustedSpriteIndexedAnimation.new.jinit_AdjustedSpriteIndexedAnimation(sprite, self.getImage(), @basicColorArray, @animationFactoryInitializationVisitor.not_nil!.jf_dx, @animationFactoryInitializationVisitor.not_nil!.jf_dy, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        else
            return SpriteIndexedAnimation.new.jinit_SpriteIndexedAnimation(sprite, self.getImage(), @basicColorArray, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        end
        return nil
    end
    

    def getInstanceAnimation(animationInterface : Animation?) : Animation?
        return self.getInstance(0)
    end
end

