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

class OpenGLESImageProperties < JObject
    @textureID : Int32 = 0

    def jf_textureID : Int32
        @textureID
    end

    def jf_textureID=(value : Int32) : Int32
        @textureID = value
    end
    @scaleX : Float32 = 0_f32

    def jf_scaleX : Float32
        @scaleX
    end

    def jf_scaleX=(value : Float32) : Float32
        @scaleX = value
    end
    @scaleY : Float32 = 0_f32

    def jf_scaleY : Float32
        @scaleY
    end

    def jf_scaleY=(value : Float32) : Float32
        @scaleY = value
    end
    @scaleX2 : Float32 = 0_f32

    def jf_scaleX2 : Float32
        @scaleX2
    end

    def jf_scaleX2=(value : Float32) : Float32
        @scaleX2 = value
    end
    @scaleY2 : Float32 = 0_f32

    def jf_scaleY2 : Float32
        @scaleY2
    end

    def jf_scaleY2=(value : Float32) : Float32
        @scaleY2 = value
    end
    @angle : Int32 = 0

    def jf_angle : Int32
        @angle
    end

    def jf_angle=(value : Int32) : Int32
        @angle = value
    end
    @redf : Float32 = 0_f32

    def jf_redf : Float32
        @redf
    end

    def jf_redf=(value : Float32) : Float32
        @redf = value
    end
    @greenf : Float32 = 0_f32

    def jf_greenf : Float32
        @greenf
    end

    def jf_greenf=(value : Float32) : Float32
        @greenf = value
    end
    @bluef : Float32 = 0_f32

    def jf_bluef : Float32
        @bluef
    end

    def jf_bluef=(value : Float32) : Float32
        @bluef = value
    end
    @alphaf : Float32 = 0_f32

    def jf_alphaf : Float32
        @alphaf
    end

    def jf_alphaf=(value : Float32) : Float32
        @alphaf = value
    end

    # Java field initializers run after the super constructor
    def jfields_OpenGLESImageProperties : Nil
    @textureID = -1
    @scaleX = 1.0_f32
    @scaleY = 1.0_f32
    @scaleX2 = 1.0_f32
    @scaleY2 = 1.0_f32
    
    @redf = 1.0_f32
    @greenf = 1.0_f32
    @bluef = 1.0_f32
    @alphaf = 1.0_f32
    end

    def jinit_OpenGLESImageProperties : self
        jfields_OpenGLESImageProperties()
        self
    end
end

