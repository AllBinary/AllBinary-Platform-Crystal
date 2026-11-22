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

class PostLoadPlatformImage < PlatformImage

    @@jst_instance : PostLoadPlatformImage? = nil

    def self.jst_instance : PostLoadPlatformImage?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PostLoadPlatformImage?) : PostLoadPlatformImage?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PostLoadPlatformImage.new.jinit_PostLoadPlatformImage()
    end
    

    def self.getInstance : PostLoadPlatformImage?
        return PostLoadPlatformImage.jst_instance
    end

    def jinit_PostLoadPlatformImage : self
        jinit_PlatformImage()
        self
    end
end

