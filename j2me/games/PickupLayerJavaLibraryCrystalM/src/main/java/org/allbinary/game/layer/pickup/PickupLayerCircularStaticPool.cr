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
# package org.allbinary.game.layer.pickup

class PickupLayerCircularStaticPool < AllBinaryLayerCircularPool

    @@jst_SINGLETON : PickupLayerCircularStaticPool? = nil

    def self.jst_SINGLETON : PickupLayerCircularStaticPool?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : PickupLayerCircularStaticPool?) : PickupLayerCircularStaticPool?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = PickupLayerCircularStaticPool.new.jinit_PickupLayerCircularStaticPool()
    end
    

    def self.getInstance : PickupLayerCircularStaticPool?
        return PickupLayerCircularStaticPool.jst_SINGLETON
    end
    

    def jinit_PickupLayerCircularStaticPool : self
        jinit_AllBinaryLayerCircularPool()
        self
    end
    

    def getInstanceXYZ(pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface?, x : Int, y : Int, z : Int) : PickedUpLayerInterface?
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        pickupLayer : PickupLayer? = JR.cast(self.getNextInstance(), PickupLayer)
        pickupLayer.not_nil!.initXYZ(x, y, z)
        pickupLayer.not_nil!.init(pickedUpLayerInterfaceFactoryInterface, pickedUpLayerInterfaceFactoryInterface.not_nil!.getAnimationInterface())
        return pickupLayer
    end
end

