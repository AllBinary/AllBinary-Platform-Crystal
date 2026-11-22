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
# package org.allbinary.image.opengles

class OpenGLImageCacheFactory < JObject

    @@jst_IMAGE_CACHE : ImageCache? = nil

    def self.jst_IMAGE_CACHE : ImageCache?
        jclinit
        @@jst_IMAGE_CACHE
    end

    def self.jst_IMAGE_CACHE=(value : ImageCache?) : ImageCache?
        jclinit
        @@jst_IMAGE_CACHE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_IMAGE_CACHE = ImageCache.jst_NULL_IMAGE_CACHE
    end
    

    def self.getInstance : ImageCache?
        return OpenGLImageCacheFactory.jst_IMAGE_CACHE
    end
    

    def self.init : Nil
        if (OpenGLImageCacheFactory.jst_IMAGE_CACHE).nil?
        end
    end

    def jinit_OpenGLImageCacheFactory : self
        self
    end
end

