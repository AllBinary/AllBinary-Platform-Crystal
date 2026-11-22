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

class CollidableWeaponBehavior < CollidableDestroyableDamageableBehavior
    @collided : Bool = false

    def jf_collided : Bool
        @collided
    end

    def jf_collided=(value : Bool) : Bool
        @collided = value
    end
    @collisionHelper : CollisionHelper? = nil

    def jf_collisionHelper : CollisionHelper?
        @collisionHelper
    end

    def jf_collisionHelper=(value : CollisionHelper?) : CollisionHelper?
        @collisionHelper = value
    end

    @@jst_NULL_COLLIDABLE_WEAPON_BEHAVIOR : JAny = nil

    def self.jst_NULL_COLLIDABLE_WEAPON_BEHAVIOR : JAny
        jclinit
        @@jst_NULL_COLLIDABLE_WEAPON_BEHAVIOR
    end

    def self.jst_NULL_COLLIDABLE_WEAPON_BEHAVIOR=(value : JAny) : JAny
        jclinit
        @@jst_NULL_COLLIDABLE_WEAPON_BEHAVIOR = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_COLLIDABLE_WEAPON_BEHAVIOR = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getNullInstance : CollidableWeaponBehavior?
        if CollidableWeaponBehavior.jst_NULL_COLLIDABLE_WEAPON_BEHAVIOR == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            CollidableWeaponBehavior.jst_NULL_COLLIDABLE_WEAPON_BEHAVIOR = CollidableWeaponBehavior.new.jinit_CollidableWeaponBehavior(false)
        end
        return JR.cast(CollidableWeaponBehavior.jst_NULL_COLLIDABLE_WEAPON_BEHAVIOR, CollidableWeaponBehavior)
    end
    

    def jinit_CollidableWeaponBehavior(collidable : Bool) : self
        jinit_CollidableDestroyableDamageableBehavior(collidable)
        self.setCollided(false)
        self.setCollidable(true)
        @collisionHelper = CollidableHelperFactory.getInstance()
        self
    end
    

    def init(sourceLayerInterface : AllBinaryLayer?) : Nil
        self.setCollided(false)
        @collisionHelper.not_nil!.setOwnerLayerInterface(sourceLayerInterface)
    end
    

    def isCollision(ownerLayer : CollidableCompositeLayer?, collisionLayer : CollidableCompositeLayer?) : Bool
        if @collisionHelper.not_nil!.isCollidable(collisionLayer)
            if ownerLayer.not_nil!.getGroupInterface().not_nil![0] != collisionLayer.not_nil!.getGroupInterface().not_nil![0]
                return super(ownerLayer, collisionLayer)
            end
        end
        return false
    end
    

    def collide(ownerLayer : CollidableCompositeLayer?, collisionLayer : CollidableCompositeLayer?) : Nil
        super(ownerLayer, collisionLayer)
        @collided = true
    end
    

    def isCollisionInterface(ownerLayer : CollidableCompositeLayer?, collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface?) : Bool
        if @collisionHelper.not_nil!.isCollidable(JR.cast(collidableInterfaceCompositeInterface, CollidableCompositeLayer))
            layerInterface : AllBinaryLayer? = JR.cast(collidableInterfaceCompositeInterface, AllBinaryLayer)
            if ownerLayer.not_nil!.getGroupInterface().not_nil![0] != layerInterface.not_nil!.getGroupInterface().not_nil![0]
                if @layerCollisionUtil.not_nil!.isCollision(ownerLayer, layerInterface)
                    return true
                end
            end
        end
        return false
    end
    

    def collideInterface(ownerLayer : CollidableCompositeLayer?, collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface?) : Nil
        ownerDamageableInterface : DamageableInterface? = JR.cast(ownerLayer, DamageableInterface)
        damageableInterface : DamageableInterface? = JR.cast(collidableInterfaceCompositeInterface, DamageableInterface)
        @damageUtil.not_nil!.process(ownerDamageableInterface, damageableInterface)
        @collided = true
    end
    

    def getCollisionTypeWith(layerInterface : AllBinaryLayer?) : CollisionType?
        return CollisionTypeFactory.getInstance().not_nil!.jf_COLLISION
    end
    

    def isCollided : Bool
        return @collided
    end
    

    def setCollided(collided : Bool) : Nil
        @collided = collided
    end
end

