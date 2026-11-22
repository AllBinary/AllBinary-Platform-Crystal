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
# package org.allbinary.platform.graphics

class PlatformBitmapBaseFactory < JObject

    @@jst_NULL_PLATFORM_BITMAP_BASE_FACTORY : PlatformBitmapBaseFactory? = nil

    def self.jst_NULL_PLATFORM_BITMAP_BASE_FACTORY : PlatformBitmapBaseFactory?
        jclinit
        @@jst_NULL_PLATFORM_BITMAP_BASE_FACTORY
    end

    def self.jst_NULL_PLATFORM_BITMAP_BASE_FACTORY=(value : PlatformBitmapBaseFactory?) : PlatformBitmapBaseFactory?
        jclinit
        @@jst_NULL_PLATFORM_BITMAP_BASE_FACTORY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_PLATFORM_BITMAP_BASE_FACTORY = PlatformBitmapBaseFactory.new.jinit_PlatformBitmapBaseFactory()
    end

    def jinit_PlatformBitmapBaseFactory : self
        self
    end
    

    def createBitmap(image : Image?) : PlatformBitmapBase?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
end

