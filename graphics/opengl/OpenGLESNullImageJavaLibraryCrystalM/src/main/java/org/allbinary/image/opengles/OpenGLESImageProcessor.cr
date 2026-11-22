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
# package org.allbinary.image.opengles

class OpenGLESImageProcessor < JObject

    @@jst_instance : OpenGLESImageProcessor? = nil

    def self.jst_instance : OpenGLESImageProcessor?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLESImageProcessor?) : OpenGLESImageProcessor?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLESImageProcessor.new.jinit_OpenGLESImageProcessor()
    end
    

    def self.getInstance : OpenGLESImageProcessor?
        return OpenGLESImageProcessor.jst_instance
    end

    def jinit_OpenGLESImageProcessor : self
        self
    end
    

    def translate(gl : GL10?, translateX : Number, translateY : Number) : Nil
        translateX = translateX.to_f32
        translateY = translateY.to_f32
    end
    

    def rotate(gl : GL10?, angle : Number) : Nil
        angle = angle.to_f32
    end
    

    def scale(gl : GL10?, scaleX : Number, scaleY : Number) : Nil
        scaleX = scaleX.to_f32
        scaleY = scaleY.to_f32
    end
    

    def colorMask(gl : GL10?, red : Number, green : Number, blue : Number, alpha : Number) : Nil
        red = red.to_f32
        green = green.to_f32
        blue = blue.to_f32
        alpha = alpha.to_f32
    end
end

