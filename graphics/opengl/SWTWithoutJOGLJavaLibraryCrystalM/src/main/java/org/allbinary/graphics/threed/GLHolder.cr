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

class GLHolder < JObject
    @isCreated : Bool = false

    def jf_isCreated : Bool
        @isCreated
    end

    def jf_isCreated=(value : Bool) : Bool
        @isCreated = value
    end

    # Java field initializers run after the super constructor
    def jfields_GLHolder : Nil
    @isCreated = true
    end
    

    def jinit_GLHolder : self
        jfields_GLHolder()
        self
    end
    

    def runOnSurfaceCreated(renderer : JAny) : Nil
    end
    

    def runOnSurfaceChanged(renderer : JAny, width : Int, height : Int) : Nil
        width = width.to_i32!
        height = height.to_i32!
    end
    

    def run(renderer : JAny) : Nil
    end
end

