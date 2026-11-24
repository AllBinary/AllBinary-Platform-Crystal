#
# AllBinary Open License Version 1
# Copyright (c) 2023 AllBinary
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

class ImageJ2MEScaleUtil < JObject

    @@jst_instance : ImageJ2MEScaleUtil? = nil

    def self.jst_instance : ImageJ2MEScaleUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ImageJ2MEScaleUtil?) : ImageJ2MEScaleUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ImageJ2MEScaleUtil.new.jinit_ImageJ2MEScaleUtil()
    end
    

    def self.getInstance : ImageJ2MEScaleUtil?
        return ImageJ2MEScaleUtil.jst_instance
    end
    

    def jinit_ImageJ2MEScaleUtil : self
        self
    end
    

    def scaleArray(images : Array(Image?)?, width : Int, height : Int) : Array(Image?)?
        width = width.to_i32!
        height = height.to_i32!
        scaledImages : Array(Image?)? = Array(Image?).new(images.not_nil!.size, nil)
        index : Int32 = images.not_nil!.size
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            scaledImages.not_nil![index] = JR.cast(self.scale(images.not_nil![index], width, height), Image)
        end
        return scaledImages
    end
    

    def scale(image : Image?, width : Int, height : Int) : Image?
        width = width.to_i32!
        height = height.to_i32!
        sourceWidth : Int32 = image.not_nil!.getWidth()
        sourceHeight : Int32 = image.not_nil!.getHeight()
        originalData : Array(Int32)? = Array(Int32).new(image.not_nil!.getWidth() &* image.not_nil!.getHeight(), 0)
        image.not_nil!.getRGB(originalData, 0, image.not_nil!.getWidth(), 0, 0, image.not_nil!.getWidth(), image.not_nil!.getHeight())
        scaledData : Array(Int32)? = Array(Int32).new(width &* height, 0)
        heightRatioFactor : Int32 = (8 &* sourceHeight).tdiv(height)
        widthRatioFactor : Int32 = (8 &* sourceWidth).tdiv(width)
        scaledIndex : Int32 = scaledData.not_nil!.size &- 1
        dx : Int32 = 0
        dy : Int32 = 0
        index : Int32 = height
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            dy = JR.shr((index &* heightRatioFactor), 3)
            index2 : Int32 = width
            jfor3 = false
            while true
                jfor3 = true
                break unless (index2 &-= 1) >= 0
                dx = JR.shr((index2 &* widthRatioFactor), 3)
                scaledData.not_nil![((scaledIndex &-= 1) &+ 1)] = originalData.not_nil![(sourceWidth &* dy) &+ dx]
            end
        end
        scaledImage : Image? = Image.createRGBImage(scaledData, width, height, true)
        return scaledImage
    end
end

