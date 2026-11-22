# Generated Code Do Not Modify
# package org.allbinary.graphics

class OpenGLBitmap < PlatformBitmapBase
    @bitmap : JAny = nil

    def jf_bitmap : JAny
        @bitmap
    end

    def jf_bitmap=(value : JAny) : JAny
        @bitmap = value
    end
    

    def jinit_OpenGLBitmap(bitmap : JAny) : self
        jinit_PlatformBitmapBase()
        @bitmap = bitmap
        self
    end
    

    def getPixels(pixels : Array(Int32)?, offset : Int, stride : Int, x : Int, y : Int, width : Int, height : Int) : Nil
        offset = offset.to_i32!
        stride = stride.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        width = width.to_i32!
        height = height.to_i32!
    end
    

    def setPixels(pixels : Array(Int32)?, offset : Int, stride : Int, x : Int, y : Int, width : Int, height : Int) : Nil
        offset = offset.to_i32!
        stride = stride.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        width = width.to_i32!
        height = height.to_i32!
    end
    

    def recycle : Nil
    end
end

