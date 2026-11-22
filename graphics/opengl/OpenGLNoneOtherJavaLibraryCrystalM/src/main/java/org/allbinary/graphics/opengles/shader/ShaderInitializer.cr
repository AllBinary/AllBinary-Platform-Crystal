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

class ShaderInitializer < JObject
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end

    @@jst_instance : ShaderInitializer? = nil

    def self.jst_instance : ShaderInitializer?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ShaderInitializer?) : ShaderInitializer?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ShaderInitializer.new.jinit_ShaderInitializer()
    end
    

    def self.getInstance : ShaderInitializer?
        return ShaderInitializer.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ShaderInitializer : Nil
    @commonStrings = CommonStrings.getInstance()
    end

    def jinit_ShaderInitializer : self
        jfields_ShaderInitializer()
        self
    end
    

    def init(gl : GL10?, shader : Array(Shader?)?, attributeArray : Array(String)?) : Int32
        return -1
    end
end

