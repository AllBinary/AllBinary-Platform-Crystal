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
# package org.allbinary.image.opengles

class OpenGLESImageTranslate < JObject

    @@jst_instance : OpenGLESImageTranslate? = nil

    def self.jst_instance : OpenGLESImageTranslate?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLESImageTranslate?) : OpenGLESImageTranslate?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLESImageTranslate.new.jinit_OpenGLESImageTranslate()
    end
    

    def self.getInstance : OpenGLESImageTranslate?
        return OpenGLESImageTranslate.jst_instance
    end

    def jinit_OpenGLESImageTranslate : self
        self
    end
    

    def translate(gl : GL10?, openGLESImage : OpenGLESImage?, x : Number, y : Number) : Nil
        x = x.to_f32
        y = y.to_f32
    end
    

    def translate2(gl : GL10?, openGLESImage : OpenGLESImage?) : Nil
    end
end

