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

class TopUBoundBounceAIFactory < JObject
    include ArtificialIntelligenceInterfaceFactoryInterface

    def jinit_TopUBoundBounceAIFactory : self
        self
    end
    

    def getInstance(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : ArtificialIntelligenceInterface?
        velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface? = JR.cast(ownerLayerInterface, VelocityInterfaceCompositeInterface)
        velocityInterface : VelocityInterface? = JR.cast(JR.cast(velocityInterfaceCompositeInterface.not_nil!.getVelocityProperties(), BasicVelocityProperties), VelocityInterface)
        maxDistancePerTick : Int32 = (JR.shr((velocityInterface.not_nil!.getMaxForwardVelocity()).as(Int32), JR.cast(velocityInterface.not_nil!.getVelocityXBasicDecimalP(), BasicDecimal).not_nil!.getScaledFactor()))
        halfWidth : Int32 = ownerLayerInterface.not_nil!.getWidth() &* 2 &+ maxDistancePerTick &+ 1
        halfHeight : Int32 = ownerLayerInterface.not_nil!.getHeight() &* 2 &+ maxDistancePerTick &+ 1
        point : GPoint? = PointFactory.getInstance().not_nil!.createXY(halfWidth, halfHeight &+ 60)
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        rectangle : Rectangle? = Rectangle.new.jinit_Rectangle(point, (displayInfo.not_nil!.getLastWidth() &- halfWidth &- point.not_nil!.getX()), (displayInfo.not_nil!.getLastHeight() &- halfHeight &- point.not_nil!.getY()))
        return JR.cast(BoundBounceAI.new.jinit_BoundBounceAI(ownerLayerInterface, gameInput, TopULayerBounds.new.jinit_TopULayerBounds(rectangle), ReverseVelocityBoundsVisitor.new.jinit_ReverseVelocityBoundsVisitor(ownerLayerInterface)), ArtificialIntelligenceInterface)
    end
end

