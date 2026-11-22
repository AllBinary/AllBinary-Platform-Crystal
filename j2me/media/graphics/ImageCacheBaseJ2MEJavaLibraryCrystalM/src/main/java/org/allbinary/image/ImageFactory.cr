# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.image

class ImageFactory < JObject

    @@jst_instance : ImageFactory? = nil

    def self.jst_instance : ImageFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ImageFactory?) : ImageFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ImageFactory.new.jinit_ImageFactory()
    end
    

    def self.getInstance : ImageFactory?
        return ImageFactory.jst_instance
    end

    def jinit_ImageFactory : self
        self
    end
    

    def createImageUrl(url : String) : Image?
        return Image.createImage(url)
    end
    

    def createImage(caller : String, width : Int, height : Int) : Image?
        width = width.to_i32!
        height = height.to_i32!
        return MIDPUtil.getInstance().not_nil!.createImageWH(width, height)
    end
    

    def createImageFromInputStream(key : JAny, inputStream : JInputStream?) : Image?
        image : Image? = MIDPUtil.getInstance().not_nil!.createImageFromInputStream(inputStream)
        return image
    end
    

    def createImageFromInputStream(inputStream : JInputStream?) : Image?
        return MIDPUtil.getInstance().not_nil!.createImageFromInputStream(inputStream)
    end
end

