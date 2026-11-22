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
# package org.allbinary.game.ag.ai

class ScrollOverImmediateAI < BasicAI
    

    def jinit_ScrollOverImmediateAI(ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        ownerLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        x : Int32 = ownerLayerInterface.not_nil!.getXP()
        y : Int32 = ownerLayerInterface.not_nil!.getYP()
        x2 : Int32 = ownerLayerInterface.not_nil!.getX2()
        y2 : Int32 = ownerLayerInterface.not_nil!.getY2()
        width : Int32 = ownerLayerInterface.not_nil!.getWidth()
        height : Int32 = ownerLayerInterface.not_nil!.getHeight()
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        if x2 > displayInfo.not_nil!.getLastWidth()
            ownerLayerInterface.not_nil!.setPosition(0, y, ownerLayerInterface.not_nil!.getZP())
        end
        if y2 > displayInfo.not_nil!.getLastHeight()
            ownerLayerInterface.not_nil!.setPosition(x, 0, ownerLayerInterface.not_nil!.getZP())
        end
        if x < 0
            ownerLayerInterface.not_nil!.setPosition(displayInfo.not_nil!.getLastWidth() &- width, y, ownerLayerInterface.not_nil!.getZP())
        end
        if y < 0
            ownerLayerInterface.not_nil!.setPosition(x, displayInfo.not_nil!.getLastHeight() &- height, ownerLayerInterface.not_nil!.getZP())
        end
    end
end

