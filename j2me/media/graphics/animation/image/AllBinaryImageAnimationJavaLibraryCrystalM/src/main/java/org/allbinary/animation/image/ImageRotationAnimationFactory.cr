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

class ImageRotationAnimationFactory < BaseImageAnimationFactory
    @angleIncrement : Int16 = 0_i16

    def jf_angleIncrement : Int16
        @angleIncrement
    end

    def jf_angleIncrement=(value : Int16) : Int16
        @angleIncrement = value
    end
    

    def jinit_ImageRotationAnimationFactory(image : Image?, width : Int, height : Int, dx : Int, dy : Int, angleIncrement : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        width = width.to_i32!
        height = height.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        angleIncrement = angleIncrement.to_i16!
        jinit_BaseImageAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        @angleIncrement = angleIncrement
        @animationFactoryInitializationVisitor.not_nil!.jf_dx = dx
        @animationFactoryInitializationVisitor.not_nil!.jf_dy = dy
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        if @animationFactoryInitializationVisitor.not_nil!.jf_dx != 0 || @animationFactoryInitializationVisitor.not_nil!.jf_dy != 0
            @animationFactoryImageScaleUtil.not_nil!.processAdjust(self)
            return AdjustedImageBaseRotationAnimation.new.jinit_AdjustedImageBaseRotationAnimation(self.getImage(), AngleInfo.getInstance(@angleIncrement), AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE, @animationFactoryInitializationVisitor.not_nil!.jf_dx, @animationFactoryInitializationVisitor.not_nil!.jf_dy, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        else
            return ImageBaseRotationAnimation.new.jinit_ImageBaseRotationAnimation(self.getImage(), AngleInfo.getInstance(@angleIncrement), AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        end
        return nil
    end
    

    def getAngleIncrementP : Int16
        return @angleIncrement
    end
end

