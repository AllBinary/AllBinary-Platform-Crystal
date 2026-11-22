# Generated Code Do Not Modify
# package org.allbinary.device

class OpenGLESNullGraphicsFactory < JObject

    @@jst_instance : OpenGLESGraphics? = nil

    def self.jst_instance : OpenGLESGraphics?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLESGraphics?) : OpenGLESGraphics?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLESGraphics.new.jinit_OpenGLESGraphics()
    end
    

    def self.getInstance : OpenGLESGraphics?
        return OpenGLESNullGraphicsFactory.jst_instance
    end

    def jinit_OpenGLESNullGraphicsFactory : self
        self
    end
end

