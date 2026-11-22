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
# package org.allbinary.graphics.opengles.shader

class UniformCameraPositionOpenGLProcessor < OpenGLObject3dProcessor
    

    def jinit_UniformCameraPositionOpenGLProcessor(shaderComposite : ShaderComposite?, handleIndex : Int) : self
        handleIndex = handleIndex.to_i32!
        jinit_OpenGLObject3dProcessor()
        self
    end
    

    def process(gl : GL10?, anyType : JAny) : Nil
    end
end

