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

class ImageToRotationImageArrayUtil < JObject

    @@jst_instance : ImageToRotationImageArrayUtil? = nil

    def self.jst_instance : ImageToRotationImageArrayUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ImageToRotationImageArrayUtil?) : ImageToRotationImageArrayUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ImageToRotationImageArrayUtil.new.jinit_ImageToRotationImageArrayUtil()
    end
    

    def self.getInstance : ImageToRotationImageArrayUtil?
        return ImageToRotationImageArrayUtil.jst_instance
    end
    

    def jinit_ImageToRotationImageArrayUtil : self
        self
    end
    

    def generate(image : Image?, angleIncrement : Int, totalAngle : Int) : Array(Image?)?
        angleIncrement = angleIncrement.to_i32!
        totalAngle = totalAngle.to_i32!
        imageRotationUtil : ImageRotationUtil? = ImageRotationUtil.getInstance()
        totalFrames : Int32 = totalAngle.tdiv(angleIncrement)
        imageArray : Array(Image?)? = Array(Image?).new(totalFrames, nil)
        imageArray.not_nil![0] = image
        index : Int32 = 1
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < totalFrames
            imageArray.not_nil![index] = imageRotationUtil.not_nil!.createRotatedImage(image, index &* angleIncrement)
        end
        return imageArray
    end
end

