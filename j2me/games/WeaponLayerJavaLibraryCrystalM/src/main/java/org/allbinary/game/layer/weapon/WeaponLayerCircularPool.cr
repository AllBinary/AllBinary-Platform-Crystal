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
# package org.allbinary.game.layer.weapon

class WeaponLayerCircularPool < AllBinaryLayerCircularPool
    

    def jinit_WeaponLayerCircularPool : self
        jinit_AllBinaryLayerCircularPool()
        self
    end
    

    def getInstanceWeaponLayer(sourceLayerInterface : AllBinaryLayer?, x : Int, y : Int, z : Int, angle : Int, otherAngle : Int, weaponProperties : WeaponProperties?, scoreable : ScoreableInterface?) : WeaponLayer?
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        angle = angle.to_i32!
        otherAngle = otherAngle.to_i32!
        weaponLayer : WeaponLayer? = JR.cast(getNextInstance(), WeaponLayer)
        weaponLayer.not_nil!.initXYZ(x, y, z)
        weaponLayer.not_nil!.init(sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable)
        return weaponLayer
    end
end

