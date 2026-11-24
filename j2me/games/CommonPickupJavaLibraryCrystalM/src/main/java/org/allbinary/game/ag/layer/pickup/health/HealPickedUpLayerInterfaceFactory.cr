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
# package org.allbinary.game.ag.layer.pickup.health

class HealPickedUpLayerInterfaceFactory < PickedUpLayerInterfaceFactory
    include PickupProcessorInterface
    @pool : HealLayerCircularStaticPool? = nil

    def jf_pool : HealLayerCircularStaticPool?
        @pool
    end

    def jf_pool=(value : HealLayerCircularStaticPool?) : HealLayerCircularStaticPool?
        @pool = value
    end

    @@jst_pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface? = nil

    def self.jst_pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface?
        jclinit
        @@jst_pickedUpLayerInterfaceFactoryInterface
    end

    def self.jst_pickedUpLayerInterfaceFactoryInterface=(value : PickedUpLayerInterfaceFactoryInterface?) : PickedUpLayerInterfaceFactoryInterface?
        jclinit
        @@jst_pickedUpLayerInterfaceFactoryInterface = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.jst_NULL_COUNTED_PICKUP_LAYER_FACTORY
    end
    

    def self.init : Nil
        HealPickedUpLayerInterfaceFactory.jst_pickedUpLayerInterfaceFactoryInterface = HealPickedUpLayerInterfaceFactory.new.jinit_HealPickedUpLayerInterfaceFactory()
    end
    

    def self.getInstance : PickedUpLayerInterfaceFactoryInterface?
        return JR.cast(HealPickedUpLayerInterfaceFactory.jst_pickedUpLayerInterfaceFactoryInterface, PickedUpLayerInterfaceFactoryInterface)
    end

    # Java field initializers run after the super constructor
    def jfields_HealPickedUpLayerInterfaceFactory : Nil
    @pool = HealLayerCircularStaticPool.new.jinit_HealLayerCircularStaticPool(HealLayerFactory.new.jinit_HealLayerFactory(), 1)
    end
    

    def jinit_HealPickedUpLayerInterfaceFactory : self
        jinit_PickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory.getInstance().not_nil!.jf_HEAL, IconLayerFactory.getInstance(JR.cast(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.get(HealthResources.getInstance().not_nil!.jf_RESOURCE).not_nil!.getInstance(0), Animation), 10, 10), JR.cast(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.get(HealthResources.getInstance().not_nil!.jf_RESOURCE).not_nil!.getInstance(0), Animation))
        jfields_HealPickedUpLayerInterfaceFactory()
        self
    end
    

    def getTotal : Int32
        return 1
    end
    

    def process(sourceLayerInterface : AllBinaryLayer?) : Nil
        @pool.not_nil!.visit(sourceLayerInterface)
    end
end

