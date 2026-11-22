# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles.shader

class OpenGLObject3dProcessor < JObject
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end

    # Java field initializers run after the super constructor
    def jfields_OpenGLObject3dProcessor : Nil
    @commonStrings = CommonStrings.getInstance()
    end

    def jinit_OpenGLObject3dProcessor : self
        jfields_OpenGLObject3dProcessor()
        self
    end
    

    def process(gl : GL10?, object3d : JAny) : Nil
    end
    

    def process(gl : GL10?, object3d : JAny, index : Int) : Nil
        index = index.to_i32!
    end
end

