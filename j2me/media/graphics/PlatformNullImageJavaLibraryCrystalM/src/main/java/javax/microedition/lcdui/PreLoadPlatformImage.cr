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
# package javax.microedition.lcdui

class PreLoadPlatformImage < PlatformImage

    @@jst_instance : PreLoadPlatformImage? = nil

    def self.jst_instance : PreLoadPlatformImage?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PreLoadPlatformImage?) : PreLoadPlatformImage?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PreLoadPlatformImage.new.jinit_PreLoadPlatformImage()
    end
    

    def self.getInstance : PreLoadPlatformImage?
        return PreLoadPlatformImage.jst_instance
    end

    def jinit_PreLoadPlatformImage : self
        jinit_PlatformImage()
        self
    end
end

