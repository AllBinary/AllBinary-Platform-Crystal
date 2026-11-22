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
# package org.allbinary.game.ag.layer.weapon.mine

class MineLayerCircularStaticPool < JObject

    @@jst_WEAPON_LAYER_CIRCULAR_STATIC_POOL : WeaponLayerCircularPool? = nil

    def self.jst_WEAPON_LAYER_CIRCULAR_STATIC_POOL : WeaponLayerCircularPool?
        jclinit
        @@jst_WEAPON_LAYER_CIRCULAR_STATIC_POOL
    end

    def self.jst_WEAPON_LAYER_CIRCULAR_STATIC_POOL=(value : WeaponLayerCircularPool?) : WeaponLayerCircularPool?
        jclinit
        @@jst_WEAPON_LAYER_CIRCULAR_STATIC_POOL = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_WEAPON_LAYER_CIRCULAR_STATIC_POOL = WeaponLayerCircularPool.new.jinit_WeaponLayerCircularPool()
    end
    

    def self.init(viewPositionFactoryInterface : ViewPositionFactoryInterface?) : Nil
        MineCountedPickedUpLayerInterfaceFactory.init()
        MineLayerCircularStaticPool.jst_WEAPON_LAYER_CIRCULAR_STATIC_POOL.not_nil!.initAllBinaryLayerCircularPool(MineLayerFactory.new.jinit_MineLayerFactory(viewPositionFactoryInterface), 20)
    end
    

    def self.getInstance : WeaponLayerCircularPool?
        return MineLayerCircularStaticPool.jst_WEAPON_LAYER_CIRCULAR_STATIC_POOL
    end

    def jinit_MineLayerCircularStaticPool : self
        self
    end
end

