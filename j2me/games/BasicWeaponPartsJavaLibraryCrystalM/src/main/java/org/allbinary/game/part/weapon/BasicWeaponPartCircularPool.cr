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
# package org.allbinary.game.part.weapon

class BasicWeaponPartCircularPool < JObject
    @basicWeaponPart : BasicWeaponPart? = nil

    def jf_basicWeaponPart : BasicWeaponPart?
        @basicWeaponPart
    end

    def jf_basicWeaponPart=(value : BasicWeaponPart?) : BasicWeaponPart?
        @basicWeaponPart = value
    end

    @@jst_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL : BasicWeaponPartCircularPool? = nil

    def self.jst_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL : BasicWeaponPartCircularPool?
        jclinit
        @@jst_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL
    end

    def self.jst_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL=(value : BasicWeaponPartCircularPool?) : BasicWeaponPartCircularPool?
        jclinit
        @@jst_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = BasicWeaponPartCircularPool.new.jinit_BasicWeaponPartCircularPool()
    end

    # Java field initializers run after the super constructor
    def jfields_BasicWeaponPartCircularPool : Nil
    @basicWeaponPart = BasicWeaponPart.jst_NULL_BASIC_WEAPON_PART
    end

    def jinit_BasicWeaponPartCircularPool : self
        jfields_BasicWeaponPartCircularPool()
        self
    end
    

    def init(basicWeaponPartFactoryInterface : BasicWeaponPartFactoryInterface?) : Nil
        @basicWeaponPart = basicWeaponPartFactoryInterface.not_nil!.getInstance()
    end
    

    def getInstance(sourceLayerInterface : AllBinaryLayer?, weaponProperties : WeaponProperties?, scoreableInterface : ScoreableInterface?, relativeRelationship : RelativeRelationship?) : BasicWeaponPart?
        @basicWeaponPart.not_nil!.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        return @basicWeaponPart
    end
end

