# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

class OpenGLProcessor < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end

    # Java field initializers run after the super constructor
    def jfields_OpenGLProcessor : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    end

    def jinit_OpenGLProcessor : self
        jfields_OpenGLProcessor()
        self
    end
    

    def process(gl : GL10?) : Nil
    end
end

