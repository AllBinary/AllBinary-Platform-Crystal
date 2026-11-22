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
# package org.allbinary.graphics.threed

class RatioProcessor < JObject

    def jinit_RatioProcessor : self
        self
    end
    

    def setCustom(width : Int, height : Int, ratio : Number) : Nil
        width = width.to_i32!
        height = height.to_i32!
        ratio = ratio.to_f32
    end
end

