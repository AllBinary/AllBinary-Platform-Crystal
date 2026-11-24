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
# package org.allbinary.game.ag.layer.pickup.points

class Points20kPickedUpLayerInterfaceFactory < PickedUpLayerInterfaceFactory
    include PickupProcessorInterface
    @pool : PointsLayerCircularStaticPool? = nil

    def jf_pool : PointsLayerCircularStaticPool?
        @pool
    end

    def jf_pool=(value : PointsLayerCircularStaticPool?) : PointsLayerCircularStaticPool?
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
        Points20kPickedUpLayerInterfaceFactory.jst_pickedUpLayerInterfaceFactoryInterface = Points20kPickedUpLayerInterfaceFactory.new.jinit_Points20kPickedUpLayerInterfaceFactory()
    end
    

    def self.getInstance : PickedUpLayerInterfaceFactoryInterface?
        return JR.cast(Points20kPickedUpLayerInterfaceFactory.jst_pickedUpLayerInterfaceFactoryInterface, PickedUpLayerInterfaceFactoryInterface)
    end

    # Java field initializers run after the super constructor
    def jfields_Points20kPickedUpLayerInterfaceFactory : Nil
    @pool = PointsLayerCircularStaticPool.new.jinit_PointsLayerCircularStaticPool(PointsLayerFactory.new.jinit_PointsLayerFactory(GameConfigurationUtil.getInstance().not_nil!.getCompetitionValue() &* 20000), 1)
    end
    

    def jinit_Points20kPickedUpLayerInterfaceFactory : self
        jinit_PickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory.getInstance().not_nil!.jf_POINTS, IconLayerFactory.getInstance(JR.cast(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.get(PointsResources.getInstance().not_nil!.jf_RESOURCE_2).not_nil!.getInstance(0), Animation), 10, 10), JR.cast(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.get(PointsResources.getInstance().not_nil!.jf_RESOURCE_2).not_nil!.getInstance(0), Animation))
        jfields_Points20kPickedUpLayerInterfaceFactory()
        self
    end
    

    def getTotal : Int32
        return 1
    end
    

    def process(sourceLayerInterface : AllBinaryLayer?) : Nil
        @pool.not_nil!.visit(sourceLayerInterface)
    end
end

