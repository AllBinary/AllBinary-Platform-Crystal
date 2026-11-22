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

class ImageArrayRotationAnimationCacheable < AdjustedImageArrayRotationAnimation
    include CacheableInterface
    

    def jinit_ImageArrayRotationAnimationCacheable(anyType : JAny, animationBehavior : AnimationBehavior?) : self
        jinit_AdjustedImageArrayRotationAnimation((JR.cast(anyType, ImageArrayRotationAnimationInfo)).not_nil!.getImageArray(), (JR.cast(anyType, ImageArrayRotationAnimationInfo)).not_nil!.getAngleInfoP(), (JR.cast(anyType, ImageArrayRotationAnimationInfo)).not_nil!.getTotalAngle(), (JR.cast(anyType, ImageArrayRotationAnimationInfo)).not_nil!.getDx(), (JR.cast(anyType, ImageArrayRotationAnimationInfo)).not_nil!.getDy(), animationBehavior)
        self
    end
    

    def getKey : JAny
        return NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def toString : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
end

