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

class ShaderManager < JObject
    @j_LOAD_SHADER : String = ""

    def jf_LOAD_SHADER : String
        @j_LOAD_SHADER
    end

    def jf_LOAD_SHADER=(value : String) : String
        @j_LOAD_SHADER = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @j_GL_VERTEX_SHADER : Int32 = 0

    def jf_GL_VERTEX_SHADER : Int32
        @j_GL_VERTEX_SHADER
    end

    def jf_GL_VERTEX_SHADER=(value : Int32) : Int32
        @j_GL_VERTEX_SHADER = value
    end
    @j_GL_FRAGMENT_SHADER : Int32 = 0

    def jf_GL_FRAGMENT_SHADER : Int32
        @j_GL_FRAGMENT_SHADER
    end

    def jf_GL_FRAGMENT_SHADER=(value : Int32) : Int32
        @j_GL_FRAGMENT_SHADER = value
    end

    @@jst_instance : ShaderManager? = nil

    def self.jst_instance : ShaderManager?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ShaderManager?) : ShaderManager?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ShaderManager.new.jinit_ShaderManager(-1, -1)
    end
    

    def self.getInstance : ShaderManager?
        return ShaderManager.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ShaderManager : Nil
    @j_LOAD_SHADER = "loadShader"
    @commonStrings = CommonStrings.getInstance()
    
    
    end
    

    def jinit_ShaderManager(j_GL_VERTEX_SHADER : Int, j_GL_FRAGMENT_SHADER : Int) : self
        j_GL_VERTEX_SHADER = j_GL_VERTEX_SHADER.to_i32!
        j_GL_FRAGMENT_SHADER = j_GL_FRAGMENT_SHADER.to_i32!
        jfields_ShaderManager()
        @j_GL_VERTEX_SHADER = j_GL_VERTEX_SHADER
        @j_GL_FRAGMENT_SHADER = j_GL_FRAGMENT_SHADER
        self
    end
    

    def load(gl : GL10?, resource : String, shaderAsStringArray : Array(String)?, shaderType : Int) : Int32
        shaderType = shaderType.to_i32!
        return -1
    end
    

    def loadShader(gl : GL10?, resource : String, stringList : BasicArrayList?, shaderType : Int) : Int32
        shaderType = shaderType.to_i32!
        return -1
    end
end

