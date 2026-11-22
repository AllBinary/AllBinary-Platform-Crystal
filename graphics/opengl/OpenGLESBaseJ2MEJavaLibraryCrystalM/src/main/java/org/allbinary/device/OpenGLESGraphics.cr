# Generated Code Do Not Modify
# package org.allbinary.device

class OpenGLESGraphics < JObject
    include OpenGLSurfaceChangedInterface
    include GraphicsInterface
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @gl : GL10? = nil

    def jf_gl : GL10?
        @gl
    end

    def jf_gl=(value : GL10?) : GL10?
        @gl = value
    end

    # Java field initializers run after the super constructor
    def jfields_OpenGLESGraphics : Nil
    @commonStrings = CommonStrings.getInstance()
    @gl = NullGL10.jst_NULL_GL10
    end
    

    def jinit_OpenGLESGraphics : self
        jfields_OpenGLESGraphics()
        self
    end
    

    def updateGL(gl : GL?) : Nil
    end
    

    def set(gl : GL?) : Nil
    end
    

    def init : Nil
    end
    

    def update : Nil
    end
    

    def setOrthoginalMode : Nil
    end
    

    def setCameraMode : Nil
    end
    

    def getGlP : GL10?
        return @gl
    end
    

    def setFontDebug(font : Font?, fontDebug : FontDebugBase?) : Nil
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
end

