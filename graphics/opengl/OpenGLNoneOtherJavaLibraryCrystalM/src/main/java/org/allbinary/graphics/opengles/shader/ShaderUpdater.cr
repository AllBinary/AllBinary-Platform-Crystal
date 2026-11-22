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

class ShaderUpdater < JObject
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @rendererStrings : RendererStrings? = nil

    def jf_rendererStrings : RendererStrings?
        @rendererStrings
    end

    def jf_rendererStrings=(value : RendererStrings?) : RendererStrings?
        @rendererStrings = value
    end

    @@jst_instance : ShaderUpdater? = nil

    def self.jst_instance : ShaderUpdater?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ShaderUpdater?) : ShaderUpdater?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ShaderUpdater.new.jinit_ShaderUpdater()
    end
    

    def self.getInstance : ShaderUpdater?
        return ShaderUpdater.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ShaderUpdater : Nil
    @commonStrings = CommonStrings.getInstance()
    @rendererStrings = RendererStrings.getInstance()
    end

    def jinit_ShaderUpdater : self
        jfields_ShaderUpdater()
        self
    end
    

    def onSurfaceCreated(gl : GL10?, eglConfig : EGLConfig?) : Nil
    end
end

