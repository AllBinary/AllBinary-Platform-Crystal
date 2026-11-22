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

class Shader < JObject
    @shaderName : String = ""

    def jf_shaderName : String
        @shaderName
    end

    def jf_shaderName=(value : String) : String
        @shaderName = value
    end
    @shaderStringList : BasicArrayList? = nil

    def jf_shaderStringList : BasicArrayList?
        @shaderStringList
    end

    def jf_shaderStringList=(value : BasicArrayList?) : BasicArrayList?
        @shaderStringList = value
    end
    @shaderAsString : String = ""

    def jf_shaderAsString : String
        @shaderAsString
    end

    def jf_shaderAsString=(value : String) : String
        @shaderAsString = value
    end
    @shaderHandle : Int32 = 0

    def jf_shaderHandle : Int32
        @shaderHandle
    end

    def jf_shaderHandle=(value : Int32) : Int32
        @shaderHandle = value
    end

    # Java field initializers run after the super constructor
    def jfields_Shader : Nil
    @shaderName = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @shaderStringList = BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
    @shaderAsString = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    
    end

    def jinit_Shader : self
        jfields_Shader()
        self
    end
end

