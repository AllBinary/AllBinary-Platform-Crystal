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

class ShaderManagerFactory < JObject

    @@jst_instance : ShaderManagerFactory? = nil

    def self.jst_instance : ShaderManagerFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ShaderManagerFactory?) : ShaderManagerFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ShaderManagerFactory.new.jinit_ShaderManagerFactory()
    end
    

    def self.getInstance : ShaderManagerFactory?
        return ShaderManagerFactory.jst_instance
    end

    def jinit_ShaderManagerFactory : self
        self
    end
    

    def create : ShaderManager?
        return ShaderManager.getInstance()
    end
end

