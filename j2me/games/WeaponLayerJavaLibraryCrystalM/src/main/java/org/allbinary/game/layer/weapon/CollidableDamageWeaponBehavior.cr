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

class CollidableDamageWeaponBehavior < CollidableDestroyableDamageableBehavior
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
    

    def jinit_CollidableDamageWeaponBehavior(collidable : Bool) : self
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
        @damageUtil.not_nil!.process(JR.cast(ownerLayer, DamageableInterface), JR.cast(collidableInterfaceCompositeInterface, DamageableInterface))
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

