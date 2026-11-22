# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

class ImageAnimationFactory < BaseImageAnimationFactory
    

    def self.createFactory(image : Image?) : ImageAnimationFactory?
        return ImageAnimationFactory.new.jinit_ImageAnimationFactory(image, image.not_nil!.getWidth(), image.not_nil!.getHeight(), 0, 0, AnimationBehaviorFactory.getInstance())
    end
    

    def jinit_ImageAnimationFactory(image : Image?, width : Int, height : Int, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        width = width.to_i32!
        height = height.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_BaseImageAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory)
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        scaledImage : Image? = @animationFactoryImageScaleUtil.not_nil!.createImage(self.getImage(), @animationFactoryInitializationVisitor.not_nil!.jf_width, @animationFactoryInitializationVisitor.not_nil!.jf_height, @scaleProperties.not_nil!.jf_scaleWidth, @scaleProperties.not_nil!.jf_scaleHeight)
        openGLUtil : OpenGLUtil? = OpenGLUtil.getInstance()
        scaledImage = openGLUtil.not_nil!.addImage(scaledImage)
        if @animationFactoryInitializationVisitor.not_nil!.jf_dx != 0 || @animationFactoryInitializationVisitor.not_nil!.jf_dy != 0
            @animationFactoryImageScaleUtil.not_nil!.processAdjust(self)
            return AdjustedImageAnimation.new.jinit_AdjustedImageAnimation(scaledImage, @animationFactoryInitializationVisitor.not_nil!.jf_dx, @animationFactoryInitializationVisitor.not_nil!.jf_dy, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        else
            return ImageAnimation.new.jinit_ImageAnimation(scaledImage, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        end
        return nil
    end
end

