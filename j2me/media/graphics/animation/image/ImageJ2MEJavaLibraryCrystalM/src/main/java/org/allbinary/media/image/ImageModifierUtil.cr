# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

class ImageModifierUtil < JObject

    @@jst_instance : ImageModifierUtil? = nil

    def self.jst_instance : ImageModifierUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ImageModifierUtil?) : ImageModifierUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ImageModifierUtil.new.jinit_ImageModifierUtil()
    end
    

    def self.getInstanceOrCreate : ImageModifierUtil?
        return ImageModifierUtil.jst_instance
    end

    def jinit_ImageModifierUtil : self
        self
    end
    

    def setColor(unusedOriginalImage : Image?, image : Image?, imageIndex : Int, basicColor : BasicColor?) : Nil
        imageIndex = imageIndex.to_i32!
    end
    

    def changeColor(unusedOriginalImage : Image?, image : Image?, imageIndex : Int, basicColor : BasicColor?) : Nil
        imageIndex = imageIndex.to_i32!
    end
    

    def setAlpha(originalImage : Image?, image : Image?, imageIndex : Int, alphaInt : Int) : Nil
        imageIndex = imageIndex.to_i32!
        alphaInt = alphaInt.to_i32!
    end
    

    def getImageArray(originalImageArray : Array(Image?)?) : Array(Image?)?
        return originalImageArray
    end
    

    def handleImage(imageArray : Array(Image?)?, index : Int, image : Image?) : Nil
        index = index.to_i32!
    end
    

    def reset : Nil
    end
end

