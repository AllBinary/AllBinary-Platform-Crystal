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
# package org.allbinary.emulator.device

class TrueTypeFontUtil < TrueTypeFontUtilBase
    @fontImage : OpenGLESImage? = nil

    def jf_fontImage : OpenGLESImage?
        @fontImage
    end

    def jf_fontImage=(value : OpenGLESImage?) : OpenGLESImage?
        @fontImage = value
    end

    @@jst_instance : TrueTypeFontUtil? = nil

    def self.jst_instance : TrueTypeFontUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TrueTypeFontUtil?) : TrueTypeFontUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TrueTypeFontUtil.new.jinit_TrueTypeFontUtil()
    end
    

    def self.getInstance : TrueTypeFontUtil?
        return TrueTypeFontUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_TrueTypeFontUtil : Nil
    @fontImage = OpenGLESImage.jst_NULL_OPENGL_IMAGE
    end
    

    def jinit_TrueTypeFontUtil : self
        jinit_TrueTypeFontUtilBase(1)
        jfields_TrueTypeFontUtil()
        self
    end
    

    def getAsTextureSize(textureSize : Int) : Int32
        textureSize = textureSize.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getCellSize(cellSize : Int) : Int32
        cellSize = cellSize.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getFontBitmap(filename : String, fontSize : Int, cellSize : Int, basicColor : BasicColor?) : Image?
        fontSize = fontSize.to_i32!
        cellSize = cellSize.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def saveFontAtlasAsFile : Nil
    end
    

    def getFontBitmapGL(gl : GL10?, filename : String, cellSize : Int, basicColor : BasicColor?) : Image?
        cellSize = cellSize.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getFontWidths(filename : String, fontSize : Int) : Array(Int32)?
        fontSize = fontSize.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
end

