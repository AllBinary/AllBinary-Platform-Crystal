# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.graphics

class OpenGLBitmapConfig < JObject
    @bitmapConfig : JAny = nil

    def jf_bitmapConfig : JAny
        @bitmapConfig
    end

    def jf_bitmapConfig=(value : JAny) : JAny
        @bitmapConfig = value
    end
    

    def jinit_OpenGLBitmapConfig(bitmapConfig : JAny) : self
        @bitmapConfig = bitmapConfig
        self
    end
end

