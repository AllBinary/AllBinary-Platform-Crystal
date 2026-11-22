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
# package org.allbinary.graphics.opengles

class OpenGLCapabilities < JObject
    @j_CUSTOM_GL_SURFACE_VIEW : Bool = false

    def jf_CUSTOM_GL_SURFACE_VIEW : Bool
        @j_CUSTOM_GL_SURFACE_VIEW
    end

    def jf_CUSTOM_GL_SURFACE_VIEW=(value : Bool) : Bool
        @j_CUSTOM_GL_SURFACE_VIEW = value
    end
    @j_VERSION_1_0 : String = ""

    def jf_VERSION_1_0 : String
        @j_VERSION_1_0
    end

    def jf_VERSION_1_0=(value : String) : String
        @j_VERSION_1_0 = value
    end
    @j_VERSION_1_1 : String = ""

    def jf_VERSION_1_1 : String
        @j_VERSION_1_1
    end

    def jf_VERSION_1_1=(value : String) : String
        @j_VERSION_1_1 = value
    end
    @j_VERSION_2_0 : String = ""

    def jf_VERSION_2_0 : String
        @j_VERSION_2_0
    end

    def jf_VERSION_2_0=(value : String) : String
        @j_VERSION_2_0 = value
    end
    @j_VERSION_3_0 : String = ""

    def jf_VERSION_3_0 : String
        @j_VERSION_3_0
    end

    def jf_VERSION_3_0=(value : String) : String
        @j_VERSION_3_0 = value
    end
    @j_VERSION_3_1 : String = ""

    def jf_VERSION_3_1 : String
        @j_VERSION_3_1
    end

    def jf_VERSION_3_1=(value : String) : String
        @j_VERSION_3_1 = value
    end
    @j_VERSION_3_2 : String = ""

    def jf_VERSION_3_2 : String
        @j_VERSION_3_2
    end

    def jf_VERSION_3_2=(value : String) : String
        @j_VERSION_3_2 = value
    end
    @j_VERSION_HIGHER_THAN_EXISTS : String = ""

    def jf_VERSION_HIGHER_THAN_EXISTS : String
        @j_VERSION_HIGHER_THAN_EXISTS
    end

    def jf_VERSION_HIGHER_THAN_EXISTS=(value : String) : String
        @j_VERSION_HIGHER_THAN_EXISTS = value
    end
    @glVersion : String = ""

    def jf_glVersion : String
        @glVersion
    end

    def jf_glVersion=(value : String) : String
        @glVersion = value
    end
    @shaderVersion : Int32 = 0

    def jf_shaderVersion : Int32
        @shaderVersion
    end

    def jf_shaderVersion=(value : Int32) : Int32
        @shaderVersion = value
    end
    @glInstanceVersion : String = ""

    def jf_glInstanceVersion : String
        @glInstanceVersion
    end

    def jf_glInstanceVersion=(value : String) : String
        @glInstanceVersion = value
    end
    @maxTextureSize : Int32 = 0

    def jf_maxTextureSize : Int32
        @maxTextureSize
    end

    def jf_maxTextureSize=(value : Int32) : Int32
        @maxTextureSize = value
    end

    @@jst_instance : OpenGLCapabilities? = nil

    def self.jst_instance : OpenGLCapabilities?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLCapabilities?) : OpenGLCapabilities?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLCapabilities.new.jinit_OpenGLCapabilities()
    end
    

    def self.getInstance : OpenGLCapabilities?
        return OpenGLCapabilities.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_OpenGLCapabilities : Nil
    @j_CUSTOM_GL_SURFACE_VIEW = true
    @j_VERSION_1_0 = "1.0"
    @j_VERSION_1_1 = "1.1"
    @j_VERSION_2_0 = "2.0"
    @j_VERSION_3_0 = "3.0"
    @j_VERSION_3_1 = "3.1"
    @j_VERSION_3_2 = "3.2"
    @j_VERSION_HIGHER_THAN_EXISTS = "999.999"
    @glVersion = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @shaderVersion = 0
    @glInstanceVersion = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @maxTextureSize = 64
    end
    

    def jinit_OpenGLCapabilities : self
        jfields_OpenGLCapabilities()
        self
    end
    

    def isInitialized : Bool
        return true
    end
    

    def initCapabilities(gl : JAny) : Nil
    end
    

    def isGlExtensionDrawTexture : Bool
        return false
    end
    

    def getGlVersion : String
        return @glVersion
    end
    

    def isVertexBufferObjectSupport : Bool
        return false
    end
    

    def isTextureSizeValid(widthAndHeight : Int) : Bool
        widthAndHeight = widthAndHeight.to_i32!
        return true
    end
end

