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

class ImageRotationUtil < JObject
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end

    @@jst_instance : ImageRotationUtil? = nil

    def self.jst_instance : ImageRotationUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ImageRotationUtil?) : ImageRotationUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ImageRotationUtil.new.jinit_ImageRotationUtil()
    end
    

    def self.getInstance : ImageRotationUtil?
        return ImageRotationUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ImageRotationUtil : Nil
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_ImageRotationUtil : self
        jfields_ImageRotationUtil()
        self
    end
    

    def createRotatedImage(originalImage : Image?, rotationInDegrees : Int) : Image?
        rotationInDegrees = rotationInDegrees.to_i32!
        return originalImage
    end
end

