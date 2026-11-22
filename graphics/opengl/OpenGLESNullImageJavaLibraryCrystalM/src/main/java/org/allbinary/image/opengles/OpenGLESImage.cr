#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.image.opengles

class OpenGLESImage < Image
    include OpenGLSurfaceChangedInterface
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @textureFactory : PlatformTextureBaseFactory? = nil

    def jf_textureFactory : PlatformTextureBaseFactory?
        @textureFactory
    end

    def jf_textureFactory=(value : PlatformTextureBaseFactory?) : PlatformTextureBaseFactory?
        @textureFactory = value
    end
    @openGLBitmap : PlatformBitmapBase? = nil

    def jf_openGLBitmap : PlatformBitmapBase?
        @openGLBitmap
    end

    def jf_openGLBitmap=(value : PlatformBitmapBase?) : PlatformBitmapBase?
        @openGLBitmap = value
    end
    @openGLESImageProperties : OpenGLESImageProperties? = nil

    def jf_openGLESImageProperties : OpenGLESImageProperties?
        @openGLESImageProperties
    end

    def jf_openGLESImageProperties=(value : OpenGLESImageProperties?) : OpenGLESImageProperties?
        @openGLESImageProperties = value
    end
    @imageProcessor : OpenGLESImageProcessor? = nil

    def jf_imageProcessor : OpenGLESImageProcessor?
        @imageProcessor
    end

    def jf_imageProcessor=(value : OpenGLESImageProcessor?) : OpenGLESImageProcessor?
        @imageProcessor = value
    end
    @openGLESImageTranslate : OpenGLESImageTranslate? = nil

    def jf_openGLESImageTranslate : OpenGLESImageTranslate?
        @openGLESImageTranslate
    end

    def jf_openGLESImageTranslate=(value : OpenGLESImageTranslate?) : OpenGLESImageTranslate?
        @openGLESImageTranslate = value
    end

    @@jst_NULL_OPENGL_IMAGE : OpenGLESImage? = nil

    def self.jst_NULL_OPENGL_IMAGE : OpenGLESImage?
        jclinit
        @@jst_NULL_OPENGL_IMAGE
    end

    def self.jst_NULL_OPENGL_IMAGE=(value : OpenGLESImage?) : OpenGLESImage?
        jclinit
        @@jst_NULL_OPENGL_IMAGE = value
    end

    @@jst_texture2dList : BasicArrayList? = nil

    def self.jst_texture2dList : BasicArrayList?
        jclinit
        @@jst_texture2dList
    end

    def self.jst_texture2dList=(value : BasicArrayList?) : BasicArrayList?
        jclinit
        @@jst_texture2dList = value
    end

    def self.jst_TYPE : Int32
        4
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_OPENGL_IMAGE = OpenGLESImage.new.jinit_OpenGLESImage(NullImage.jst_NULL_IMAGE, PlatformBitmapBaseFactory.jst_NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory.jst_NULL_PLATFORM_TEXTURE_BASE_FACTORY)
        @@jst_texture2dList = BasicArrayListD.new.jinit_BasicArrayListD()
        
    end

    # Java field initializers run after the super constructor
    def jfields_OpenGLESImage : Nil
    @commonStrings = CommonStrings.getInstance()
    
    
    @openGLESImageProperties = OpenGLESImageProperties.new.jinit_OpenGLESImageProperties()
    @imageProcessor = OpenGLESImageProcessor.getInstance()
    @openGLESImageTranslate = OpenGLESImageTranslate.getInstance()
    end
    

    def jinit_OpenGLESImage(image : Image?, bitmapFactory : PlatformBitmapBaseFactory?, textureFactory : PlatformTextureBaseFactory?) : self
        jinit_Image()
        jfields_OpenGLESImage()
        @openGLBitmap = bitmapFactory.not_nil!.createBitmap(image)
        @textureFactory = textureFactory
        self
    end
    

    def set(gl : GL?) : Nil
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def initTexture(gl : GL10?) : Bool
        return false
    end
    

    def drawRegion(gl : GL10?, viewHeight : Int, x_src : Number, y_src : Number, width : Number, height : Number, x : Int, y : Int, z : Int) : Nil
        viewHeight = viewHeight.to_i32!
        x_src = x_src.to_f32
        y_src = y_src.to_f32
        width = width.to_f32
        height = height.to_f32
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
    end
    

    def draw(gl : GL10?, x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
    end
    

    def getType : Int32
        return OpenGLESImage.jst_TYPE
    end
end

