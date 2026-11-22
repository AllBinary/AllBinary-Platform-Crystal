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

class CompositeShaderUpdater < ShaderUpdater
    @commonSeps : CommonSeps? = nil

    def jf_commonSeps : CommonSeps?
        @commonSeps
    end

    def jf_commonSeps=(value : CommonSeps?) : CommonSeps?
        @commonSeps = value
    end

    @@jst_instanceC : CompositeShaderUpdater? = nil

    def self.jst_instanceC : CompositeShaderUpdater?
        jclinit
        @@jst_instanceC
    end

    def self.jst_instanceC=(value : CompositeShaderUpdater?) : CompositeShaderUpdater?
        jclinit
        @@jst_instanceC = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instanceC = CompositeShaderUpdater.new.jinit_CompositeShaderUpdater(StringUtil.getInstance().not_nil!.getArrayInstance(), StringUtil.getInstance().not_nil!.getArrayInstance(), StringUtil.getInstance().not_nil!.getArrayInstance(), NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY)
    end
    

    def self.getInstance : CompositeShaderUpdater?
        return CompositeShaderUpdater.jst_instanceC
    end

    # Java field initializers run after the super constructor
    def jfields_CompositeShaderUpdater : Nil
    @commonSeps = CommonSeps.getInstance()
    end
    

    def jinit_CompositeShaderUpdater(uniformBlockArray : Array(String)?, uniformArray : Array(String)?, attributeArray : Array(String)?, attributeHandleArray : Array(Int32)?) : self
        jinit_ShaderUpdater()
        jfields_CompositeShaderUpdater()
        self
    end
    

    def onSurfaceCreated(gl : GL10?, eglConfig : EGLConfig?, programHandle : Int) : Nil
        programHandle = programHandle.to_i32!
    end
    

    def onSurfaceDestroyed(gl : GL10?) : Nil
    end
end

