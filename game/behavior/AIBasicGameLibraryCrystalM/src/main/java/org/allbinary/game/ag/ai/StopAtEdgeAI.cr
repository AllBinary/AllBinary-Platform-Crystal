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

class StopAtEdgeAI < BasicAI
    

    def jinit_StopAtEdgeAI(ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        ownerLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface? = (JR.cast(ownerLayerInterface, VelocityInterfaceCompositeInterface))
        velocityProperties : BasicVelocityProperties? = velocityInterfaceCompositeInterface.not_nil!.getVelocityProperties()
        x : Int32 = ownerLayerInterface.not_nil!.getXP()
        y : Int32 = ownerLayerInterface.not_nil!.getYP()
        x2 : Int32 = ownerLayerInterface.not_nil!.getX2()
        y2 : Int32 = ownerLayerInterface.not_nil!.getY2()
        width : Int32 = ownerLayerInterface.not_nil!.getWidth()
        height : Int32 = ownerLayerInterface.not_nil!.getHeight()
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        if x2 &+ velocityProperties.not_nil!.getVelocityXBasicDecimalP().not_nil!.getScaled() > displayInfo.not_nil!.getLastWidth()
            ownerLayerInterface.not_nil!.setPosition(displayInfo.not_nil!.getLastWidth() &- width, y, ownerLayerInterface.not_nil!.getZP())
            velocityProperties.not_nil!.getVelocityYBasicDecimalP().not_nil!.setint(0)
        end
        if y2 &+ velocityProperties.not_nil!.getVelocityYBasicDecimalP().not_nil!.getScaled() > displayInfo.not_nil!.getLastHeight()
            ownerLayerInterface.not_nil!.setPosition(x, displayInfo.not_nil!.getLastHeight() &- height, ownerLayerInterface.not_nil!.getZP())
            velocityProperties.not_nil!.getVelocityXBasicDecimalP().not_nil!.setint(0)
        end
        if x &+ velocityProperties.not_nil!.getVelocityXBasicDecimalP().not_nil!.getScaled() < 0
            ownerLayerInterface.not_nil!.setPosition(0, y, ownerLayerInterface.not_nil!.getZP())
            velocityProperties.not_nil!.getVelocityYBasicDecimalP().not_nil!.setint(0)
        end
        if y &+ velocityProperties.not_nil!.getVelocityYBasicDecimalP().not_nil!.getScaled() < 0
            ownerLayerInterface.not_nil!.setPosition(x, 0, ownerLayerInterface.not_nil!.getZP())
            velocityProperties.not_nil!.getVelocityXBasicDecimalP().not_nil!.setint(0)
        end
    end
end

