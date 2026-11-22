# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

class OpenGLUtil < JObject

    @@jst_instance : OpenGLUtil? = nil

    def self.jst_instance : OpenGLUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLUtil?) : OpenGLUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLUtil.new.jinit_OpenGLUtil()
    end
    

    def self.getInstance : OpenGLUtil?
        return OpenGLUtil.jst_instance
    end

    def jinit_OpenGLUtil : self
        self
    end
    

    def addImage(image : Image?) : Image?
        return image
    end
    

    def clear : Nil
    end
    

    def addRunnable(runnable : JRunnable?) : Nil
    end
end

