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
# package javax.microedition.lcdui

class NullImage < JObject

    @@jst_NULL_IMAGE_ARRAY : Array(Image?)? = nil

    def self.jst_NULL_IMAGE_ARRAY : Array(Image?)?
        jclinit
        @@jst_NULL_IMAGE_ARRAY
    end

    def self.jst_NULL_IMAGE_ARRAY=(value : Array(Image?)?) : Array(Image?)?
        jclinit
        @@jst_NULL_IMAGE_ARRAY = value
    end

    @@jst_NULL_IMAGE : Image? = nil

    def self.jst_NULL_IMAGE : Image?
        jclinit
        @@jst_NULL_IMAGE
    end

    def self.jst_NULL_IMAGE=(value : Image?) : Image?
        jclinit
        @@jst_NULL_IMAGE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_IMAGE_ARRAY = Array(Image?).new(0, nil)
        @@jst_NULL_IMAGE = Image.new.jinit_Image()
    end

    def jinit_NullImage : self
        self
    end
end

