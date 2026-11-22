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
# package org.allbinary.game.layer.special

class CollidableDestroyableDamageableBehavior < CollidableBaseBehavior
    @damageUtil : DamageUtil? = nil

    def jf_damageUtil : DamageUtil?
        @damageUtil
    end

    def jf_damageUtil=(value : DamageUtil?) : DamageUtil?
        @damageUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_CollidableDestroyableDamageableBehavior : Nil
    @damageUtil = DamageUtil.getInstance()
    end
    

    def jinit_CollidableDestroyableDamageableBehavior(collidable : Bool) : self
        jinit_CollidableBaseBehavior(collidable)
        jfields_CollidableDestroyableDamageableBehavior()
        self
    end
    

    def isCollision(ownerLayer : CollidableCompositeLayer?, collisionLayer : CollidableCompositeLayer?) : Bool
        if ownerLayer.not_nil!.getGroupInterface().not_nil![0] != collisionLayer.not_nil!.getGroupInterface().not_nil![0]
            return super(ownerLayer, collisionLayer)
        end
        return false
    end
    

    def collide(ownerLayer : CollidableCompositeLayer?, collidableInterfaceCompositeInterface : CollidableCompositeLayer?) : Nil
        ownerCollidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer? = JR.cast(ownerLayer, CollidableDestroyableDamageableLayer)
        collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer? = JR.cast(collidableInterfaceCompositeInterface, CollidableDestroyableDamageableLayer)
        ownerCollidableDestroyableDamageableLayer.not_nil!.damage(collidableDestroyableDamageableLayer.not_nil!.getDamage(0), 0)
    end
    

    def isCollisionInterface(ownerLayer : CollidableCompositeLayer?, collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface?) : Bool
        ForcedLogUtil.log("No Longer Used", self)
        return false
    end
    

    def collideInterface(ownerLayer : CollidableCompositeLayer?, collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface?) : Nil
        ForcedLogUtil.log("No Longer Used", self)
    end
end

