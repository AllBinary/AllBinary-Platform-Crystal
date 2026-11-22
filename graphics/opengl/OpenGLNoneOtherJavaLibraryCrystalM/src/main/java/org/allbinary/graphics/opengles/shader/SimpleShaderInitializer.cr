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

class SimpleShaderInitializer < ShaderInitializer

    @@jst_instanceC : SimpleShaderInitializer? = nil

    def self.jst_instanceC : SimpleShaderInitializer?
        jclinit
        @@jst_instanceC
    end

    def self.jst_instanceC=(value : SimpleShaderInitializer?) : SimpleShaderInitializer?
        jclinit
        @@jst_instanceC = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instanceC = SimpleShaderInitializer.new.jinit_SimpleShaderInitializer()
    end
    

    def self.getInstance : SimpleShaderInitializer?
        return SimpleShaderInitializer.jst_instanceC
    end

    def jinit_SimpleShaderInitializer : self
        jinit_ShaderInitializer()
        self
    end
end

