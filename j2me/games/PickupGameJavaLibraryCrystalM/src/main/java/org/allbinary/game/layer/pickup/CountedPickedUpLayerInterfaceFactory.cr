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

class CountedPickedUpLayerInterfaceFactory < PickedUpLayerInterfaceFactory
    include CountedPickedUpLayerInterfaceFactoryInterface
    @id : Int32 = 0

    def jf_id : Int32
        @id
    end

    def jf_id=(value : Int32) : Int32
        @id = value
    end

    @@jst_NULL_COUNTED_PICKUP_LAYER_FACTORY : CountedPickedUpLayerInterfaceFactory? = nil

    def self.jst_NULL_COUNTED_PICKUP_LAYER_FACTORY : CountedPickedUpLayerInterfaceFactory?
        jclinit
        @@jst_NULL_COUNTED_PICKUP_LAYER_FACTORY
    end

    def self.jst_NULL_COUNTED_PICKUP_LAYER_FACTORY=(value : CountedPickedUpLayerInterfaceFactory?) : CountedPickedUpLayerInterfaceFactory?
        jclinit
        @@jst_NULL_COUNTED_PICKUP_LAYER_FACTORY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_COUNTED_PICKUP_LAYER_FACTORY = CountedPickedUpLayerInterfaceFactory.new.jinit_CountedPickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory.getInstance().not_nil!.jf_NONE, IconLayer.jst_NULL_ICON_LAYER, NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0))
    end
    

    def jinit_CountedPickedUpLayerInterfaceFactory(pickeUpLayerType : PickedUpLayerType?, iconLayer : IconLayer?, animationInterface : Animation?) : self
        jinit_PickedUpLayerInterfaceFactory(pickeUpLayerType, iconLayer, animationInterface)
        list : BasicArrayList? = CountedPickedUpLayerInterfaceFactoryPool.getInstance().not_nil!.getList()
        @id = list.not_nil!.size()
        list.not_nil!.add(self)
        self
    end
    

    def getNextInstance(hashtable : ABHashtable?, x : Int, y : Int, z : Int) : AllBinaryLayer?
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        raise (JException.new.jinit_JException(CommonStrings.getInstance().not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def getTotal : Int32
        return -1
    end
    

    def getId : Int32
        return @id
    end
end

