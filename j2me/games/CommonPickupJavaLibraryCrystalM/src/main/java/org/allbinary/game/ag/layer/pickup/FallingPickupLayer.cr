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
# package org.allbinary.game.ag.layer.pickup

class FallingPickupLayer < PickupLayer
    include TickableInterface

    def self.jst_NAME : String
        "FallingPickupLayer"
    end
    

    def jinit_FallingPickupLayer(remoteInfo : RemoteInfo?) : self
        jinit_PickupLayer(FallingPickupLayer.jst_NAME, remoteInfo, 0, CountedPickedUpLayerInterfaceFactory.jst_NULL_COUNTED_PICKUP_LAYER_FACTORY, NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0), Rectangle.new.jinit_Rectangle(PointFactory.getInstance().not_nil!.jf_ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())
        self
    end
    

    def processTick(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        self.setPosition(@x, @y + 1, @z)
    end
    

    def implmentsTickableInterface : Bool
        return true
    end
end

