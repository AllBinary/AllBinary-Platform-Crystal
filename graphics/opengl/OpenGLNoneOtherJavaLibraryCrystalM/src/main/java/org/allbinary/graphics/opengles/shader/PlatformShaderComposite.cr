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

class PlatformShaderComposite < ShaderComposite
    

    def jinit_PlatformShaderComposite(requiresOpenGLVersion : String, shaderArray : Array(Shader?)?, compositeShaderUpdater : CompositeShaderUpdater?, shaderInitializer : ShaderInitializer?, modelViewProjection : ModelViewProjection?, colorOpenGLProcessor : OpenGLProcessor?, vertexOpenGLProcessor : OpenGLProcessor?) : self
        jinit_ShaderComposite(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, NullOpenGLProcessorFactory.getInstance())
        self
    end
end

