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

class PlayerGameInputGameLayer < AllBinaryGameLayer
    include PlayerGameInputCompositeInterface
    @playerGameInput : PlayerGameInput? = nil

    def jf_playerGameInput : PlayerGameInput?
        @playerGameInput
    end

    def jf_playerGameInput=(value : PlayerGameInput?) : PlayerGameInput?
        @playerGameInput = value
    end
    

    def jinit_PlayerGameInputGameLayer(playerInputId : Int) : self
        playerInputId = playerInputId.to_i32!
        jinit_AllBinaryGameLayer(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Rectangle.new.jinit_Rectangle(PointFactory.getInstance().not_nil!.jf_ZERO_ZERO, 0, 0), StaticViewPosition.new.jinit_StaticViewPosition(0, 0, 0))
        @playerGameInput = PlayerGameInput.new.jinit_PlayerGameInput(self.getGameKeyEventList(), BasicArrayListD.new.jinit_BasicArrayListD(), playerInputId)
        canvasStrings : CanvasStrings? = CanvasStrings.getInstance()
        @logUtil.not_nil!.putF("Danger Danger Danger: Should Not Be Called Except For Testing Input", self, canvasStrings.not_nil!.jf_PAINT)
        self
    end
    

    def getPlayerGameInput : PlayerGameInput?
        return @playerGameInput
    end
    

    def initInputProcessors : Nil
    end
    

    def processInput(myManager : AllBinaryLayerManager?) : Nil
    end
    

    def paint(graphics : Graphics?) : Nil
    end
end

