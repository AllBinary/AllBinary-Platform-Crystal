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

class ImageScaleUtil < JObject

    @@jst_instance : ImageScaleUtil? = nil

    def self.jst_instance : ImageScaleUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ImageScaleUtil?) : ImageScaleUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ImageScaleUtil.new.jinit_ImageScaleUtil()
    end
    

    def self.getInstance : ImageScaleUtil?
        return ImageScaleUtil.jst_instance
    end
    

    def jinit_ImageScaleUtil : self
        self
    end
    

    def createImage2(imageCache : ImageCache?, originalImage : Image?, scaleNominatorX : Number, scaleDenominatorX : Number, scaleNominatorY : Number, scaleDenominatorY : Number, cached : Bool) : Image?
        scaleNominatorX = scaleNominatorX.to_f32
        scaleDenominatorX = scaleDenominatorX.to_f32
        scaleNominatorY = scaleNominatorY.to_f32
        scaleDenominatorY = scaleDenominatorY.to_f32
        return self.createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true)
    end
    

    def createImage3(imageCache : ImageCache?, originalImage : Image?, scaleNominatorX : Number, scaleDenominatorX : Number, scaleNominatorY : Number, scaleDenominatorY : Number, cached : Bool, mutable : Bool) : Image?
        scaleNominatorX = scaleNominatorX.to_f32
        scaleDenominatorX = scaleDenominatorX.to_f32
        scaleNominatorY = scaleNominatorY.to_f32
        scaleDenominatorY = scaleDenominatorY.to_f32
        return originalImage
    end
end

