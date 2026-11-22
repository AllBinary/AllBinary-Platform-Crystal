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

class ImageArrayAnimationFactory < JObject
    include AnimationInterfaceFactoryInterface
    @dx : Int32 = 0

    def jf_dx : Int32
        @dx
    end

    def jf_dx=(value : Int32) : Int32
        @dx = value
    end
    @dy : Int32 = 0

    def jf_dy : Int32
        @dy
    end

    def jf_dy=(value : Int32) : Int32
        @dy = value
    end
    @imageArray : Array(Image?)? = nil

    def jf_imageArray : Array(Image?)?
        @imageArray
    end

    def jf_imageArray=(value : Array(Image?)?) : Array(Image?)?
        @imageArray = value
    end
    @animationBehaviorFactory : AnimationBehaviorFactory? = nil

    def jf_animationBehaviorFactory : AnimationBehaviorFactory?
        @animationBehaviorFactory
    end

    def jf_animationBehaviorFactory=(value : AnimationBehaviorFactory?) : AnimationBehaviorFactory?
        @animationBehaviorFactory = value
    end

    # Java field initializers run after the super constructor
    def jfields_ImageArrayAnimationFactory : Nil
    @dx = 0
    @dy = 0
    
    
    end
    

    def jinit_ImageArrayAnimationFactory(imageArray : Array(Image?)?, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        dx = dx.to_i32!
        dy = dy.to_i32!
        jfields_ImageArrayAnimationFactory()
        @imageArray = imageArray
        @animationBehaviorFactory = animationBehaviorFactory
        @dx = dx
        @dy = dy
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        if @dx != 0 || @dy != 0
            return AdjustedImageArrayAnimation.new.jinit_AdjustedImageArrayAnimation(@imageArray, @dx, @dy, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        else
            return ImageArrayAnimation.new.jinit_ImageArrayAnimation(@imageArray, AnimationBehavior.getInstance())
        end
        return nil
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
end

