# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

class OpenGLThreadUtil < JObject

    @@jst_instance : OpenGLThreadUtil? = nil

    def self.jst_instance : OpenGLThreadUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLThreadUtil?) : OpenGLThreadUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLThreadUtil.new.jinit_OpenGLThreadUtil()
    end
    

    def self.getInstance : OpenGLThreadUtil?
        return OpenGLThreadUtil.jst_instance
    end

    def jinit_OpenGLThreadUtil : self
        self
    end
    

    def set(glSurfaceView : JAny) : Nil
    end
    

    def onPause : Nil
    end
    

    def onResume : Nil
    end
end

