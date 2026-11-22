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
# package org.allbinary.graphics.opengles.shader

class NullOpenGLTextureProcessor < JObject

    @@jst_instance : OpenGLObject3dProcessor? = nil

    def self.jst_instance : OpenGLObject3dProcessor?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLObject3dProcessor?) : OpenGLObject3dProcessor?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLObject3dProcessor.new.jinit_OpenGLObject3dProcessor()
    end
    

    def self.getInstance : OpenGLObject3dProcessor?
        return NullOpenGLTextureProcessor.jst_instance
    end

    def jinit_NullOpenGLTextureProcessor : self
        self
    end
end

