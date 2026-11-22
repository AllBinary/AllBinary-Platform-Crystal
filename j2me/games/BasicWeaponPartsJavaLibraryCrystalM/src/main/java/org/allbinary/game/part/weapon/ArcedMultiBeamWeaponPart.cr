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

class ArcedMultiBeamWeaponPart < BasicWeaponPart
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
    @j_TOTAL_ANGLE : Int32 = 0

    def jf_TOTAL_ANGLE : Int32
        @j_TOTAL_ANGLE
    end

    def jf_TOTAL_ANGLE=(value : Int32) : Int32
        @j_TOTAL_ANGLE = value
    end

    # Java field initializers run after the super constructor
    def jfields_ArcedMultiBeamWeaponPart : Nil
    
    
    @j_TOTAL_ANGLE = (AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!
    end
    

    def jinit_ArcedMultiBeamWeaponPart(animationInterface : Animation?, sourceLayerInterface : AllBinaryLayer?, weaponLayerCircularStaticPool : WeaponLayerCircularPool?, total : Int, weaponProperties : WeaponProperties?, scoreableInterface : ScoreableInterface?, relativeRelationship : RelativeRelationship?) : self
        total = total.to_i32!
        jinit_BasicWeaponPart(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        jfields_ArcedMultiBeamWeaponPart()
        @total = total
        @weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
        self
    end
    

    def processScore(allbinaryLayerManager : AllBinaryLayerManager?, angle : Int, otherAngle : Int, weaponProperties : WeaponProperties?, scoreableInterface : ScoreableInterface?) : Nil
        angle = angle.to_i16!
        otherAngle = otherAngle.to_i16!
        increment : Int16 = (((@total &- 1).tdiv(@j_TOTAL_ANGLE))).to_i16!
        minAngle : Int16 = ((((angle).to_i32!).to_i32 &- (JR.shr((((increment).to_i32!).to_i32 &* @total), 1)))).to_i16!
        next_ : Int32 = 0
        weaponLayer : WeaponLayer? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < @total
            weaponLayer = @weaponLayerCircularStaticPool.not_nil!.getInstanceWeaponLayer(self.getOwnerLayerInterface(), @relativeRelationship.not_nil!.getX(), @relativeRelationship.not_nil!.getY(), 0, ((minAngle).to_i32 &+ (increment).to_i32), (otherAngle).to_i32!, weaponProperties, scoreableInterface)
            allbinaryLayerManager.not_nil!.append(weaponLayer)
            next_ &+= (increment).to_i32!
        end
    end
end

