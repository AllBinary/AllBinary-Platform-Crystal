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

class BasicProjectileWeaponPart < BasicWeaponPart
    @weaponLayerCircularStaticPool : WeaponLayerCircularPool? = nil

    def jf_weaponLayerCircularStaticPool : WeaponLayerCircularPool?
        @weaponLayerCircularStaticPool
    end

    def jf_weaponLayerCircularStaticPool=(value : WeaponLayerCircularPool?) : WeaponLayerCircularPool?
        @weaponLayerCircularStaticPool = value
    end
    

    def self.createBasicProjectileWeaponPart(animationInterface : Animation?, weaponLayerCircularStaticPool : WeaponLayerCircularPool?) : BasicProjectileWeaponPart?
        return BasicProjectileWeaponPart.new.jinit_BasicProjectileWeaponPart(animationInterface, AllBinaryLayer.jst_NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, WeaponProperties.jst_NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.jst_NULL_RELATIVE_RELATIONSHIP)
    end
    

    def jinit_BasicProjectileWeaponPart(animationInterface : Animation?, sourceLayerInterface : AllBinaryLayer?, weaponLayerCircularStaticPool : WeaponLayerCircularPool?, weaponProperties : WeaponProperties?, scoreableInterface : ScoreableInterface?, relativeRelationship : RelativeRelationship?) : self
        jinit_BasicWeaponPart(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        @weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
        self
    end
    

    def processScore(allbinaryLayerManager : AllBinaryLayerManager?, angle : Int, otherAngle : Int, weaponProperties : WeaponProperties?, scoreableInterface : ScoreableInterface?) : Nil
        angle = angle.to_i16!
        otherAngle = otherAngle.to_i16!
        weaponLayer : WeaponLayer? = @weaponLayerCircularStaticPool.not_nil!.getInstanceWeaponLayer(self.getOwnerLayerInterface(), @relativeRelationship.not_nil!.getX(), @relativeRelationship.not_nil!.getY(), @relativeRelationship.not_nil!.getZ(), (angle).to_i32!, (otherAngle).to_i32!, weaponProperties, scoreableInterface)
        allbinaryLayerManager.not_nil!.append(weaponLayer)
    end
end

