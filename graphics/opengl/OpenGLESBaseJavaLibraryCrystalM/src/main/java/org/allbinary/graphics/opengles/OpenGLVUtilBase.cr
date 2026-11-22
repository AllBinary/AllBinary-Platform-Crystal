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
# package org.allbinary.graphics.opengles

class OpenGLVUtilBase < JObject

    def jinit_OpenGLVUtilBase : self
        self
    end
    

    def glTexEnvix(gl : GL10?, target : Int, pname : Int, param : Int) : Nil
        target = target.to_i32!
        pname = pname.to_i32!
        param = param.to_i32!
    end
    

    def glTexParameterix(gl : GL10?, target : Int, pname : Int, param : Int) : Nil
        target = target.to_i32!
        pname = pname.to_i32!
        param = param.to_i32!
    end
    

    def glGenerateMipmap(gl : GL10?, textureId : Int, target : Int, generateMipMap : Bool) : Nil
        textureId = textureId.to_i32!
        target = target.to_i32!
    end
end

