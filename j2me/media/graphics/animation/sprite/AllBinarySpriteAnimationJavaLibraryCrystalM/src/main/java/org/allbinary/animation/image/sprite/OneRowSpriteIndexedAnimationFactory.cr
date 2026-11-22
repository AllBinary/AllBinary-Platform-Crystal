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

class OneRowSpriteIndexedAnimationFactory < BaseImageAnimationFactory
    @animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil? = nil

    def jf_animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil?
        @animationFactorySpriteScaleUtil
    end

    def jf_animationFactorySpriteScaleUtil=(value : AnimationFactorySpriteScaleUtil?) : AnimationFactorySpriteScaleUtil?
        @animationFactorySpriteScaleUtil = value
    end
    

    def self.createFactoryDX(image : Image?, dx : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : OneRowSpriteIndexedAnimationFactory?
        dx = dx.to_i32!
        oneRowSpriteIndexedAnimationFactory : OneRowSpriteIndexedAnimationFactory? = OneRowSpriteIndexedAnimationFactory.new.jinit_OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.not_nil!.getHeight(), image.not_nil!.getHeight(), 0, 0, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory.not_nil!.initW(dx)
        return oneRowSpriteIndexedAnimationFactory
    end
    

    def self.createFactoryDXY(image : Image?, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : OneRowSpriteIndexedAnimationFactory?
        dx = dx.to_i32!
        dy = dy.to_i32!
        oneRowSpriteIndexedAnimationFactory : OneRowSpriteIndexedAnimationFactory? = OneRowSpriteIndexedAnimationFactory.new.jinit_OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.not_nil!.getHeight(), image.not_nil!.getHeight(), 0, 0, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory.not_nil!.init(dx, dy)
        return oneRowSpriteIndexedAnimationFactory
    end
    

    def self.createFactoryWH(image : Image?, width : Int, height : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : OneRowSpriteIndexedAnimationFactory?
        width = width.to_i32!
        height = height.to_i32!
        return OneRowSpriteIndexedAnimationFactory.new.jinit_OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
    end
    

    def self.createFactory(image : Image?, animationBehaviorFactory : AnimationBehaviorFactory?) : OneRowSpriteIndexedAnimationFactory?
        return OneRowSpriteIndexedAnimationFactory.new.jinit_OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.not_nil!.getHeight(), image.not_nil!.getHeight(), 0, 0, animationBehaviorFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_OneRowSpriteIndexedAnimationFactory : Nil
    @animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    end
    

    def jinit_OneRowSpriteIndexedAnimationFactory(image : Image?, sequenceArray : Array(Int32)?, width : Int, height : Int, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        width = width.to_i32!
        height = height.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_BaseImageAnimationFactory(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        jfields_OneRowSpriteIndexedAnimationFactory()
        self
    end
    

    def init(dx : Int, dy : Int) : Nil
        dx = dx.to_i32!
        dy = dy.to_i32!
        @animationFactoryInitializationVisitor.not_nil!.jf_dx = dx
        @animationFactoryInitializationVisitor.not_nil!.jf_dy = dy
    end
    

    def initW(dx : Int) : Nil
        dx = dx.to_i32!
        self.init(dx, 0)
        @animationFactoryInitializationVisitor.not_nil!.jf_dx &+= JR.neg((JR.shr(@animationFactoryInitializationVisitor.not_nil!.jf_width, 2)))
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        sprite : Sprite? = @animationFactorySpriteScaleUtil.not_nil!.createImage(self.getImage(), @animationFactoryInitializationVisitor.not_nil!.jf_width, @animationFactoryInitializationVisitor.not_nil!.jf_height, @scaleProperties.not_nil!.jf_scaleWidth, @scaleProperties.not_nil!.jf_scaleHeight)
        if @animationFactoryInitializationVisitor.not_nil!.jf_dx != 0 || @animationFactoryInitializationVisitor.not_nil!.jf_dy != 0
            return AdjustedSpriteIndexedAnimation.new.jinit_AdjustedSpriteIndexedAnimation(sprite, self.getImage(), BasicColorUtil.getInstance().not_nil!.jf_ZERO_ARRAY, @animationFactoryInitializationVisitor.not_nil!.jf_dx, @animationFactoryInitializationVisitor.not_nil!.jf_dy, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        else
            return SpriteIndexedAnimation.new.jinit_SpriteIndexedAnimation(sprite, self.getImage(), BasicColorUtil.getInstance().not_nil!.jf_ZERO_ARRAY, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        end
        return nil
    end
end

