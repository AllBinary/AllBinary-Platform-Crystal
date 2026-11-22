# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

class OpenGLImageUtilBase < JObject

    def jinit_OpenGLImageUtilBase : self
        self
    end
    

    def paint(alphaBitmap : OpenGLBitmap?, originalBitmap : OpenGLBitmap?, index : Int) : OpenGLBitmap?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def paint(colorBitmap : OpenGLBitmap?, originalBitmap : OpenGLBitmap?, alpha : Int, basicColor : BasicColor?) : OpenGLBitmap?
        alpha = alpha.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def createImage(name : String) : OpenGLBitmap?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def createImageFromInputStream(inputStream : JInputStream?) : OpenGLBitmap?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
end

