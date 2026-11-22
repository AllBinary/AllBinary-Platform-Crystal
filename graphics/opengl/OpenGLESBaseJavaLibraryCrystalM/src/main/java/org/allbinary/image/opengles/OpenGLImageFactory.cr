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

class OpenGLImageFactory < JObject

    @@jst_NULL_OPENGL_IMAGE_FACTORY : OpenGLImageFactory? = nil

    def self.jst_NULL_OPENGL_IMAGE_FACTORY : OpenGLImageFactory?
        jclinit
        @@jst_NULL_OPENGL_IMAGE_FACTORY
    end

    def self.jst_NULL_OPENGL_IMAGE_FACTORY=(value : OpenGLImageFactory?) : OpenGLImageFactory?
        jclinit
        @@jst_NULL_OPENGL_IMAGE_FACTORY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_OPENGL_IMAGE_FACTORY = OpenGLImageFactory.new.jinit_OpenGLImageFactory()
    end

    def jinit_OpenGLImageFactory : self
        self
    end
    

    def getInstance(image : Image?, bitmapFactory : PlatformBitmapBaseFactory?, textureFactory : PlatformTextureBaseFactory?) : Image?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
end

