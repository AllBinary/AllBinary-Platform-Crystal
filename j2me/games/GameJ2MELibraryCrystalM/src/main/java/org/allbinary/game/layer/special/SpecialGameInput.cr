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
# package org.allbinary.game.layer.special

class SpecialGameInput < JObject
    include SpecialGameInputInterface

    def jinit_SpecialGameInput : self
        self
    end
    

    def up : Nil
    end
    

    def down : Nil
    end
    

    def right : Nil
    end
    

    def left : Nil
    end
    

    def strafeLeft : Nil
    end
    

    def strafeRight : Nil
    end
    

    def fire(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def special1(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def special2(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def special3(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def special4(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def special5(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def paint(graphics : Graphics?) : Nil
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
end

