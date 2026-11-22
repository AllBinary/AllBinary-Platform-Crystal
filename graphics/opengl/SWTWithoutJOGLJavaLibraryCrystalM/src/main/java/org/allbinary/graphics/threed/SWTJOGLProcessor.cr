# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.graphics.threed

class SWTJOGLProcessor < JObject
    include JRunnable
    @glHolder : GLHolder? = nil

    def jf_glHolder : GLHolder?
        @glHolder
    end

    def jf_glHolder=(value : GLHolder?) : GLHolder?
        @glHolder = value
    end

    @@jst_instance : SWTJOGLProcessor? = nil

    def self.jst_instance : SWTJOGLProcessor?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : SWTJOGLProcessor?) : SWTJOGLProcessor?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = SWTJOGLProcessor.new.jinit_SWTJOGLProcessor()
    end
    

    def self.getInstance : SWTJOGLProcessor?
        return SWTJOGLProcessor.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_SWTJOGLProcessor : Nil
    @glHolder = SWTJOGLProcessor_j1.new.jinit_SWTJOGLProcessor_j1(self)
    end

    def jinit_SWTJOGLProcessor : self
        jfields_SWTJOGLProcessor()
        self
    end
    

    def init(display : JAny, comp : JAny) : Nil
    end
    

    def isHolderCreated : Bool
        return @glHolder.not_nil!.jf_isCreated
    end
    

    def setRenderer(renderer : JAny) : Nil
    end
    

    def isJOGL : Bool
        return false
    end
    

    def createSurface : Nil
    end
    

    def onSurfaceCreated : Nil
    end
    

    def onSurfaceChangedForEvent(event : JAny) : Nil
    end
    

    def onSurfaceChanged : Nil
    end
    

    def onSurfaceChangedWH(width : Int, height : Int) : Nil
        width = width.to_i32!
        height = height.to_i32!
    end
    

    def addListener : Nil
    end
    

    def addListeners(midlet : MIDlet?) : Nil
    end
    

    def run : Nil
    end
    

    def clear : Nil
    end
    

    def setCustom(width : Int, height : Int, ratio : Number) : Nil
        width = width.to_i32!
        height = height.to_i32!
        ratio = ratio.to_f32
    end
    

    def setRatioProcessor(ratioProcessor : RatioProcessor?) : Nil
    end
    

    def charWidth(font : Font?, ch : Int) : Int32
        ch = ch.to_u16!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def charsWidth(font : Font?, ch : Array(UInt16)?, offset : Int, length : Int) : Int32
        offset = offset.to_i32!
        length = length.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def stringWidth(font : Font?, str : String) : Int32
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def substringWidth(font : Font?, str : String, offset : Int, len : Int) : Int32
        offset = offset.to_i32!
        len = len.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
end

class SWTJOGLProcessor_j1 < GLHolder
    @jouter : SWTJOGLProcessor? = nil

    def jinit_SWTJOGLProcessor_j1(jouter : SWTJOGLProcessor?) : self
        @jouter = jouter
        jinit_GLHolder()
        self
    end


        def run(renderer : JAny) : Nil
        end
end

