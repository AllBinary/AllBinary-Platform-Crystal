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

class ImageArrayRotationAnimationPool < BasicArrayListResetablePool

    @@jst_IMAGE_ROTATION_ANIMATION_POOL : PoolInterface? = nil

    def self.jst_IMAGE_ROTATION_ANIMATION_POOL : PoolInterface?
        jclinit
        @@jst_IMAGE_ROTATION_ANIMATION_POOL
    end

    def self.jst_IMAGE_ROTATION_ANIMATION_POOL=(value : PoolInterface?) : PoolInterface?
        jclinit
        @@jst_IMAGE_ROTATION_ANIMATION_POOL = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_IMAGE_ROTATION_ANIMATION_POOL = ImageArrayRotationAnimationPool.new.jinit_ImageArrayRotationAnimationPool(ImageArrayRotationAnimationCacheableInterfaceFactory.new.jinit_ImageArrayRotationAnimationCacheableInterfaceFactory())
    end
    

    def self.getInstance : PoolInterface?
        return ImageArrayRotationAnimationPool.jst_IMAGE_ROTATION_ANIMATION_POOL
    end
    

    def jinit_ImageArrayRotationAnimationPool(cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface?) : self
        jinit_BasicArrayListResetablePool(cacheableInterfaceFactoryInterface)
        self
    end
    

    def remove(key : JAny) : CacheableInterface?
        cacheableInterface : CacheableInterface? = super(key)
        allBinaryImageRotationAnimationInfo : ImageArrayRotationAnimationInfo? = JR.cast(key, ImageArrayRotationAnimationInfo)
        imageArrayRotationAnimationCacheable : ImageArrayRotationAnimationCacheable? = (JR.cast(cacheableInterface, ImageArrayRotationAnimationCacheable))
        imageArrayRotationAnimationCacheable.not_nil!.setImageArray(allBinaryImageRotationAnimationInfo.not_nil!.getImageArray())
        return cacheableInterface
    end
end

