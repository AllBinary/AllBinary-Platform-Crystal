# Generated Code Do Not Modify
# package org.allbinary.graphics

class OpenGLBitmapFactory < PlatformBitmapBaseFactory
    @j_ARGB_8888 : OpenGLBitmapConfig? = nil

    def jf_ARGB_8888 : OpenGLBitmapConfig?
        @j_ARGB_8888
    end

    def jf_ARGB_8888=(value : OpenGLBitmapConfig?) : OpenGLBitmapConfig?
        @j_ARGB_8888 = value
    end

    @@jst_instance : OpenGLBitmapFactory? = nil

    def self.jst_instance : OpenGLBitmapFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLBitmapFactory?) : OpenGLBitmapFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLBitmapFactory.new.jinit_OpenGLBitmapFactory()
    end
    

    def self.getInstance : OpenGLBitmapFactory?
        return OpenGLBitmapFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_OpenGLBitmapFactory : Nil
    @j_ARGB_8888 = OpenGLBitmapConfig.new.jinit_OpenGLBitmapConfig(NullUtil.getInstance().not_nil!.jf_NULL_OBJECT)
    end

    def jinit_OpenGLBitmapFactory : self
        jinit_PlatformBitmapBaseFactory()
        jfields_OpenGLBitmapFactory()
        self
    end
    

    def createBitmap(width : Int, height : Int, config : OpenGLBitmapConfig?) : OpenGLBitmap?
        width = width.to_i32!
        height = height.to_i32!
        return OpenGLBitmap.new.jinit_OpenGLBitmap(NullUtil.getInstance().not_nil!.jf_NULL_OBJECT)
    end
    

    def decodeStream(inputStream : JInputStream?) : OpenGLBitmap?
        return OpenGLBitmap.new.jinit_OpenGLBitmap(NullUtil.getInstance().not_nil!.jf_NULL_OBJECT)
    end
    

    def createBitmap(image : Image?) : PlatformBitmapBase?
        return OpenGLBitmap.new.jinit_OpenGLBitmap(NullUtil.getInstance().not_nil!.jf_NULL_OBJECT)
    end
end

