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

class ScrollOverAtHalfAI < BasicAI
    

    def jinit_ScrollOverAtHalfAI(ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        ownerLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        x : Int32 = ownerLayerInterface.not_nil!.getXP()
        y : Int32 = ownerLayerInterface.not_nil!.getYP()
        halfWidth : Int32 = ownerLayerInterface.not_nil!.getHalfWidth()
        halfHeight : Int32 = ownerLayerInterface.not_nil!.getHalfHeight()
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        if x > displayInfo.not_nil!.getLastWidth() &- halfWidth
            ownerLayerInterface.not_nil!.setPosition(halfWidth &+ 1, y, ownerLayerInterface.not_nil!.getZP())
        end
        if y > displayInfo.not_nil!.getLastHeight() &- halfHeight
            ownerLayerInterface.not_nil!.setPosition(x, halfHeight &+ 1, ownerLayerInterface.not_nil!.getZP())
        end
        if x < JR.neg(halfWidth)
            ownerLayerInterface.not_nil!.setPosition(displayInfo.not_nil!.getLastWidth() &- halfWidth, y, ownerLayerInterface.not_nil!.getZP())
        end
        if y < JR.neg(halfHeight)
            ownerLayerInterface.not_nil!.setPosition(x, displayInfo.not_nil!.getLastHeight() &- halfHeight, ownerLayerInterface.not_nil!.getZP())
        end
    end
end

