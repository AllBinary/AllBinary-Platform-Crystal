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

class ModelViewProjection < JObject

    @@jst_instance : ModelViewProjection? = nil

    def self.jst_instance : ModelViewProjection?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ModelViewProjection?) : ModelViewProjection?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ModelViewProjection.new.jinit_ModelViewProjection()
    end
    

    def self.getInstance : ModelViewProjection?
        return ModelViewProjection.jst_instance
    end

    def jinit_ModelViewProjection : self
        self
    end
    

    def get : Array(Float32)?
        return NullUtil.getInstance().not_nil!.jf_NULL_FLOAT_ARRAY
    end
end

