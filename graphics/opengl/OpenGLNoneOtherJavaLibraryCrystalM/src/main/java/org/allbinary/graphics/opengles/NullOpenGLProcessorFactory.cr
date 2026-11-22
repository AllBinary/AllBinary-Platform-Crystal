# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

class NullOpenGLProcessorFactory < JObject

    @@jst_instance : OpenGLProcessor? = nil

    def self.jst_instance : OpenGLProcessor?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLProcessor?) : OpenGLProcessor?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLProcessor.new.jinit_OpenGLProcessor()
    end
    

    def self.getInstance : OpenGLProcessor?
        return NullOpenGLProcessorFactory.jst_instance
    end

    def jinit_NullOpenGLProcessorFactory : self
        self
    end
end

