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

class BottomToTopImageAnimationFactory < BaseImageAnimationFactory
    

    def jinit_BottomToTopImageAnimationFactory(image : Image?, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        jinit_BaseImageAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.not_nil!.getWidth(), image.not_nil!.getHeight(), 0, 0, animationBehaviorFactory)
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        scaledImage : Image? = @animationFactoryImageScaleUtil.not_nil!.createImage(self.getImage(), @animationFactoryInitializationVisitor.not_nil!.jf_width, @animationFactoryInitializationVisitor.not_nil!.jf_height, @scaleProperties.not_nil!.jf_scaleWidth, @scaleProperties.not_nil!.jf_scaleHeight)
        return BottomToTopImageAnimation.new.jinit_BottomToTopImageAnimation(scaledImage, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
    end
end

