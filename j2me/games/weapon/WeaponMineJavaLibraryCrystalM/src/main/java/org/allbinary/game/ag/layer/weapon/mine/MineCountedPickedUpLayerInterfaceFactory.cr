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

class MineCountedPickedUpLayerInterfaceFactory < CountedPickedUpLayerInterfaceFactory
    @weaponLayerCircularStaticPool : WeaponLayerCircularPool? = nil

    def jf_weaponLayerCircularStaticPool : WeaponLayerCircularPool?
        @weaponLayerCircularStaticPool
    end

    def jf_weaponLayerCircularStaticPool=(value : WeaponLayerCircularPool?) : WeaponLayerCircularPool?
        @weaponLayerCircularStaticPool = value
    end
    @weaponProperties : WeaponProperties? = nil

    def jf_weaponProperties : WeaponProperties?
        @weaponProperties
    end

    def jf_weaponProperties=(value : WeaponProperties?) : WeaponProperties?
        @weaponProperties = value
    end
    @smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = nil

    def jf_smallIntegerSingletonFactory : SmallIntegerSingletonFactory?
        @smallIntegerSingletonFactory
    end

    def jf_smallIntegerSingletonFactory=(value : SmallIntegerSingletonFactory?) : SmallIntegerSingletonFactory?
        @smallIntegerSingletonFactory = value
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
        MineCountedPickedUpLayerInterfaceFactory.jst_pickedUpLayerInterfaceFactoryInterface = MineCountedPickedUpLayerInterfaceFactory.new.jinit_MineCountedPickedUpLayerInterfaceFactory()
    end
    

    def self.getInstance : PickedUpLayerInterfaceFactoryInterface?
        return MineCountedPickedUpLayerInterfaceFactory.jst_pickedUpLayerInterfaceFactoryInterface
    end

    # Java field initializers run after the super constructor
    def jfields_MineCountedPickedUpLayerInterfaceFactory : Nil
    @weaponLayerCircularStaticPool = MineLayerCircularStaticPool.getInstance()
    @weaponProperties = WeaponProperties.new.jinit_WeaponProperties(-1_i64, -1_i64, 0, 8000, 10_i16)
    @smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
    end
    

    def jinit_MineCountedPickedUpLayerInterfaceFactory : self
        jinit_CountedPickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory.getInstance().not_nil!.jf_MINE, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.get(MineWeaponResources.getInstance().not_nil!.jf_DROP_ICON_RESOURCE).not_nil!.getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.get(MineWeaponResources.getInstance().not_nil!.jf_DROP_RESOURCE).not_nil!.getInstance(0))
        jfields_MineCountedPickedUpLayerInterfaceFactory()
        self
    end
    

    def getTotal : Int32
        return 3
    end
    

    def getNextInstance(hashtable : ABHashtable?, x : Int, y : Int, z : Int) : AllBinaryLayer?
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        sourceLayerInterface : AllBinaryLayer? = JR.cast(hashtable.not_nil!.get(@smallIntegerSingletonFactory.not_nil!.getAt(0)), AllBinaryLayer)
        angle : JInteger? = JR.cast(hashtable.not_nil!.get(@smallIntegerSingletonFactory.not_nil!.getAt(1)), JInteger)
        scoreableInterface : ScoreableInterface? = JR.cast(sourceLayerInterface, ScoreableInterface)
        return @weaponLayerCircularStaticPool.not_nil!.getInstanceWeaponLayer(sourceLayerInterface, x, y, z, (angle.not_nil!.intValue()).to_i32!, 0, @weaponProperties, scoreableInterface)
    end
end

