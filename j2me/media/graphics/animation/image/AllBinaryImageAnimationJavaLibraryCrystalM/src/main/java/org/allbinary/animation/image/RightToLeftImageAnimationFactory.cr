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

class RightToLeftImageAnimationFactory < BaseImageAnimationFactory
    

    def jinit_RightToLeftImageAnimationFactory(image : Image?, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_BaseImageAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.not_nil!.getWidth(), image.not_nil!.getHeight(), dx, dy, animationBehaviorFactory)
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        scaledImage : Image? = @animationFactoryImageScaleUtil.not_nil!.createImage(self.getImage(), @animationFactoryInitializationVisitor.not_nil!.jf_width, @animationFactoryInitializationVisitor.not_nil!.jf_height, @scaleProperties.not_nil!.jf_scaleWidth, @scaleProperties.not_nil!.jf_scaleHeight)
        if @animationFactoryInitializationVisitor.not_nil!.jf_dx != 0 || @animationFactoryInitializationVisitor.not_nil!.jf_dy != 0
            @animationFactoryImageScaleUtil.not_nil!.processAdjust(self)
            return AdjustedRightToLeftImageAnimation.new.jinit_AdjustedRightToLeftImageAnimation(scaledImage, @animationFactoryInitializationVisitor.not_nil!.jf_dx, @animationFactoryInitializationVisitor.not_nil!.jf_dy, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        else
            return RightToLeftImageAnimation.new.jinit_RightToLeftImageAnimation(scaledImage, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        end
        return nil
    end
end

