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

class OpenGLESDeviceImageTranslate < OpenGLESImageTranslate
    @translateX : Float32 = 0_f32

    def jf_translateX : Float32
        @translateX
    end

    def jf_translateX=(value : Float32) : Float32
        @translateX = value
    end
    @translateY : Float32 = 0_f32

    def jf_translateY : Float32
        @translateY
    end

    def jf_translateY=(value : Float32) : Float32
        @translateY = value
    end
    @translateX2 : Float32 = 0_f32

    def jf_translateX2 : Float32
        @translateX2
    end

    def jf_translateX2=(value : Float32) : Float32
        @translateX2 = value
    end
    @translateY2 : Float32 = 0_f32

    def jf_translateY2 : Float32
        @translateY2
    end

    def jf_translateY2=(value : Float32) : Float32
        @translateY2 = value
    end

    # Java field initializers run after the super constructor
    def jfields_OpenGLESDeviceImageTranslate : Nil
    @translateX = 0.0_f32
    @translateY = 0.0_f32
    @translateX2 = 0.0_f32
    @translateY2 = 0.0_f32
    end

    def jinit_OpenGLESDeviceImageTranslate : self
        jinit_OpenGLESImageTranslate()
        jfields_OpenGLESDeviceImageTranslate()
        self
    end
    

    def translate(gl : GL10?, openGLESImage : OpenGLESImage?, x : Number, y : Number) : Nil
        x = x.to_f32
        y = y.to_f32
        openGLESImage.not_nil!.jf_imageProcessor.not_nil!.translate(gl, @translateX + (openGLESImage.not_nil!.jf_openGLESImageProperties.not_nil!.jf_scaleX * x), @translateY + (openGLESImage.not_nil!.jf_openGLESImageProperties.not_nil!.jf_scaleY * y))
    end
    

    def translate2(gl : GL10?, openGLESImage : OpenGLESImage?) : Nil
        openGLESImage.not_nil!.jf_imageProcessor.not_nil!.translate(gl, @translateX2, @translateY2)
    end
end

