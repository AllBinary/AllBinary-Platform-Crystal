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
# package org.allbinary.media.image

class ImageCreationUtil < JObject

    @@jst_instance : ImageCreationUtil? = nil

    def self.jst_instance : ImageCreationUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ImageCreationUtil?) : ImageCreationUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ImageCreationUtil.new.jinit_ImageCreationUtil()
    end
    

    def self.getInstance : ImageCreationUtil?
        return ImageCreationUtil.jst_instance
    end
    

    def jinit_ImageCreationUtil : self
        self
    end
    

    def createImageWH(width : Int, height : Int) : Image?
        width = width.to_i32!
        height = height.to_i32!
        image : Image? = GameFeatureImageCacheFactory.getInstance().not_nil!.get(JR.jclass(self), width, height)
        return image
    end
    

    def createImage(width : Int, height : Int, maxScaleX : Number, maxScaleY : Number) : Image?
        width = width.to_i32!
        height = height.to_i32!
        maxScaleX = maxScaleX.to_f32
        maxScaleY = maxScaleY.to_f32
        image : Image? = GameFeatureImageCacheFactory.getInstance().not_nil!.get(JR.jclass(self), JR.d2i(((width).to_f32 * maxScaleX)) &+ 1, JR.d2i(((height).to_f32 * maxScaleY)) &+ 1)
        return image
    end
end

