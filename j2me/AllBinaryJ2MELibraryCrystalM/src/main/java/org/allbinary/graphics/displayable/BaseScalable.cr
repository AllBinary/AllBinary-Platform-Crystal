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
# package org.allbinary.graphics.displayable

class BaseScalable < JObject
    include ScalableListener

    def jinit_BaseScalable : self
        self
    end
    

    def getRatio(ratio : Number) : Float32
        ratio = ratio.to_f32
        return 1_f32
    end
    

    def getLeft(xOffset : Int) : Int32
        xOffset = xOffset.to_i32!
        return -1
    end
    

    def getTop(yOffset : Int) : Int32
        yOffset = yOffset.to_i32!
        return -1
    end
    

    def scale(ratio : Number) : Nil
        ratio = ratio.to_f32
    end
end

