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

class AllBinarySpriteRotationAnimationFactory < BaseImageAnimationFactory
    include ProceduralAnimationInterfaceFactoryInterface
    @animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil? = nil

    def jf_animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil?
        @animationFactorySpriteScaleUtil
    end

    def jf_animationFactorySpriteScaleUtil=(value : AnimationFactorySpriteScaleUtil?) : AnimationFactorySpriteScaleUtil?
        @animationFactorySpriteScaleUtil = value
    end
    

    def self.createWHDY(image : Image?, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : AllBinarySpriteRotationAnimationFactory?
        dx = dx.to_i32!
        dy = dy.to_i32!
        spriteRotationAnimationFactory : AllBinarySpriteRotationAnimationFactory? = AllBinarySpriteRotationAnimationFactory.new.jinit_AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (JR.shr(image.not_nil!.getHeight(), 2)), (JR.shr(image.not_nil!.getHeight(), 2)), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.not_nil!.initWH(dx, dy)
        return spriteRotationAnimationFactory
    end
    

    def self.createWH(image : Image?, animationBehaviorFactory : AnimationBehaviorFactory?) : AllBinarySpriteRotationAnimationFactory?
        return AllBinarySpriteRotationAnimationFactory.createWHDY(image, 0, 0, animationBehaviorFactory)
    end
    

    def self.createDXY(image : Image?, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : AllBinarySpriteRotationAnimationFactory?
        dx = dx.to_i32!
        dy = dy.to_i32!
        spriteRotationAnimationFactory : AllBinarySpriteRotationAnimationFactory? = AllBinarySpriteRotationAnimationFactory.new.jinit_AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.not_nil!.getHeight(), image.not_nil!.getHeight(), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.not_nil!.init(dx, dy)
        return spriteRotationAnimationFactory
    end
    

    def self.createDXYQ(image : Image?, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : AllBinarySpriteRotationAnimationFactory?
        dx = dx.to_i32!
        dy = dy.to_i32!
        spriteRotationAnimationFactory : AllBinarySpriteRotationAnimationFactory? = AllBinarySpriteRotationAnimationFactory.new.jinit_AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (JR.shr(image.not_nil!.getHeight(), 2)), (JR.shr(image.not_nil!.getHeight(), 2)), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.not_nil!.init(dx, dy)
        return spriteRotationAnimationFactory
    end
    

    def self.createQ(image : Image?, animationBehaviorFactory : AnimationBehaviorFactory?) : AllBinarySpriteRotationAnimationFactory?
        return AllBinarySpriteRotationAnimationFactory.new.jinit_AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (JR.shr(image.not_nil!.getHeight(), 2)), (JR.shr(image.not_nil!.getHeight(), 2)), 0, 0, animationBehaviorFactory)
    end
    

    def self.createWHF(image : Image?, animationBehaviorFactory : AnimationBehaviorFactory?) : AllBinarySpriteRotationAnimationFactory?
        return AllBinarySpriteRotationAnimationFactory.new.jinit_AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.not_nil!.getHeight(), image.not_nil!.getHeight(), 0, 0, animationBehaviorFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinarySpriteRotationAnimationFactory : Nil
    @animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    end
    

    def jinit_AllBinarySpriteRotationAnimationFactory(image : Image?, sequenceArray : Array(Int32)?, width : Int, height : Int, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        width = width.to_i32!
        height = height.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_BaseImageAnimationFactory(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        jfields_AllBinarySpriteRotationAnimationFactory()
        if animationBehaviorFactory == AnimationBehaviorFactory.getInstance()
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
        end
        self
    end
    

    def init(dx : Int, dy : Int) : Nil
        dx = dx.to_i32!
        dy = dy.to_i32!
        @animationFactoryInitializationVisitor.not_nil!.jf_dx = dx
        @animationFactoryInitializationVisitor.not_nil!.jf_dy = dy
    end
    

    def initWH(dx : Int, dy : Int) : Nil
        dx = dx.to_i32!
        dy = dy.to_i32!
        self.init(dx, dy)
        @animationFactoryInitializationVisitor.not_nil!.jf_dx &+= JR.neg(@animationFactoryInitializationVisitor.not_nil!.jf_width).tdiv(5)
        @animationFactoryInitializationVisitor.not_nil!.jf_dy &+= JR.neg(@animationFactoryInitializationVisitor.not_nil!.jf_height).tdiv(5)
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        sprite : Sprite? = @animationFactorySpriteScaleUtil.not_nil!.createImage(self.getImage(), @animationFactoryInitializationVisitor.not_nil!.jf_width, @animationFactoryInitializationVisitor.not_nil!.jf_height, @scaleProperties.not_nil!.jf_scaleWidth, @scaleProperties.not_nil!.jf_scaleHeight)
        if @animationFactoryInitializationVisitor.not_nil!.jf_dx != 0 || @animationFactoryInitializationVisitor.not_nil!.jf_dy != 0
            return AllBinaryAdjustedSpriteRotationAnimation.new.jinit_AllBinaryAdjustedSpriteRotationAnimation(sprite, self.getImage(), @animationFactoryInitializationVisitor.not_nil!.jf_dx, @animationFactoryInitializationVisitor.not_nil!.jf_dy, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        else
            return AllBinarySpriteRotationAnimation.new.jinit_AllBinarySpriteRotationAnimation(sprite, self.getImage(), @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        end
        return nil
    end
    

    def getInstanceAnimation(animationInterface : Animation?) : Animation?
        return self.getInstance(0)
    end
end

