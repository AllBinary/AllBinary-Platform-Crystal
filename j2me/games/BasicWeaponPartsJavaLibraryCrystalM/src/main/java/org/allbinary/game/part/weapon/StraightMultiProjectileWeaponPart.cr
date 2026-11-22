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

class StraightMultiProjectileWeaponPart < BasicWeaponPart
    @weaponLayerCircularStaticPool : WeaponLayerCircularPool? = nil

    def jf_weaponLayerCircularStaticPool : WeaponLayerCircularPool?
        @weaponLayerCircularStaticPool
    end

    def jf_weaponLayerCircularStaticPool=(value : WeaponLayerCircularPool?) : WeaponLayerCircularPool?
        @weaponLayerCircularStaticPool = value
    end
    @total : Int32 = 0

    def jf_total : Int32
        @total
    end

    def jf_total=(value : Int32) : Int32
        @total = value
    end
    @noDecimalTrigTable : NoDecimalTrigTable? = nil

    def jf_noDecimalTrigTable : NoDecimalTrigTable?
        @noDecimalTrigTable
    end

    def jf_noDecimalTrigTable=(value : NoDecimalTrigTable?) : NoDecimalTrigTable?
        @noDecimalTrigTable = value
    end
    

    def self.createStraightMultiProjectileWeaponPart(animationInterface : Animation?, weaponLayerCircularStaticPool : WeaponLayerCircularPool?) : StraightMultiProjectileWeaponPart?
        return StraightMultiProjectileWeaponPart.new.jinit_StraightMultiProjectileWeaponPart(animationInterface, AllBinaryLayer.jst_NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, WeaponProperties.jst_NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.jst_NULL_RELATIVE_RELATIONSHIP)
    end

    # Java field initializers run after the super constructor
    def jfields_StraightMultiProjectileWeaponPart : Nil
    
    
    @noDecimalTrigTable = NoDecimalTrigTable.getInstance()
    end
    

    def jinit_StraightMultiProjectileWeaponPart(animationInterface : Animation?, sourceLayerInterface : AllBinaryLayer?, weaponLayerCircularStaticPool : WeaponLayerCircularPool?, total : Int, weaponProperties : WeaponProperties?, scoreableInterface : ScoreableInterface?, relativeRelationship : RelativeRelationship?) : self
        total = total.to_i32!
        jinit_BasicWeaponPart(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        jfields_StraightMultiProjectileWeaponPart()
        @total = total
        @weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
        self
    end
    

    def processScore(allbinaryLayerManager : AllBinaryLayerManager?, angle : Int, otherAngle : Int, weaponProperties : WeaponProperties?, scoreableInterface : ScoreableInterface?) : Nil
        angle = angle.to_i16!
        otherAngle = otherAngle.to_i16!
        sourceLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        reducedWidth : Int32 = (sourceLayerInterface.not_nil!.getWidth() &* 8.tdiv(10))
        halfWidth : Int32 = (JR.shr(reducedWidth, 1))
        x : Int32 = @relativeRelationship.not_nil!.getX()
        y : Int32 = @relativeRelationship.not_nil!.getY()
        sine : Int64 = 0_i64
        beamX : Int32 = 0
        cosine : Int64 = 0_i64
        beamY : Int32 = 0
        weaponLayer : WeaponLayer? = nil
        increment : Int32 = reducedWidth.tdiv((@total &- 1))
        next_ : Int32 = JR.neg(halfWidth)
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < @total
            sine = ((next_).to_i64! &* @noDecimalTrigTable.not_nil!.sin((angle).to_i32!))
            beamX = ((sine.tdiv((@noDecimalTrigTable.not_nil!.jf_SCALE).to_i64!))).to_i32!
            cosine = ((next_).to_i64! &* @noDecimalTrigTable.not_nil!.cos((angle).to_i32!))
            beamY = JR.neg(((cosine.tdiv((@noDecimalTrigTable.not_nil!.jf_SCALE).to_i64!))).to_i32!)
            weaponLayer = @weaponLayerCircularStaticPool.not_nil!.getInstanceWeaponLayer(sourceLayerInterface, x &+ beamX, y &+ beamY, 0, (angle).to_i32!, (otherAngle).to_i32!, weaponProperties, scoreableInterface)
            allbinaryLayerManager.not_nil!.append(weaponLayer)
            next_ &+= increment
        end
    end
end

