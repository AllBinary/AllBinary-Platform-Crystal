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
# package org.allbinary.emulator.device

class TrueTypeFontUtilBase < JObject
    

    def jinit_TrueTypeFontUtilBase(scale : Int) : self
        scale = scale.to_i32!
        self
    end
    

    def getAsTextureSize(textureSize : Int) : Int32
        textureSize = textureSize.to_i32!
        return -1
    end
    

    def getCellSize(cellSize : Int) : Int32
        cellSize = cellSize.to_i32!
        return -1
    end
end

