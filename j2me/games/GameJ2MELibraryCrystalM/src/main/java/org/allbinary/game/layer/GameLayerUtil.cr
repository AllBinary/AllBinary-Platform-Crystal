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
# package org.allbinary.game.layer

class GameLayerUtil < JObject
    

    def self.isOnScreen(layer : AllBinaryLayer?) : Bool
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        viewPosition : ViewPositionBase? = layer.not_nil!.getViewPosition()
        return GameLayerUtil.isInside(viewPosition.not_nil!.getX(), viewPosition.not_nil!.getY(), viewPosition.not_nil!.getX2(), viewPosition.not_nil!.getY2(), 0, 0, displayInfo.not_nil!.getLastWidth(), displayInfo.not_nil!.getLastHeight())
    end
    

    def self.isInside(rectX1 : Int, rectY1 : Int, rectX2 : Int, rectY2 : Int, rect2X1 : Int, rect2Y1 : Int, rect2X2 : Int, rect2Y2 : Int) : Bool
        rectX1 = rectX1.to_i32!
        rectY1 = rectY1.to_i32!
        rectX2 = rectX2.to_i32!
        rectY2 = rectY2.to_i32!
        rect2X1 = rect2X1.to_i32!
        rect2Y1 = rect2Y1.to_i32!
        rect2X2 = rect2X2.to_i32!
        rect2Y2 = rect2Y2.to_i32!
        if rectX1 > rect2X1 && rectX2 < rect2X2 && rectY1 > rect2Y1 && rectY2 < rect2Y2
            return true
        else
            return false
        end
        return false
    end
    

    def jinit_GameLayerUtil : self
        self
    end
end

