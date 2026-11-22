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

class CollidableCharacterNoDamageBehavior < CollidableDestroyableDamageableBehavior
    

    def jinit_CollidableCharacterNoDamageBehavior(collidable : Bool) : self
        jinit_CollidableDestroyableDamageableBehavior(collidable)
        self
    end
    

    def collide(ownerLayer : CollidableCompositeLayer?, collidableInterfaceCompositeInterface : CollidableCompositeLayer?) : Nil
        collisionTypeFactory : CollisionTypeFactory? = CollisionTypeFactory.getInstance()
        collisionType : CollisionType? = collidableInterfaceCompositeInterface.not_nil!.getCollidableInferface().not_nil!.getCollisionTypeWith(ownerLayer)
        if collisionType == collisionTypeFactory.not_nil!.jf_PICKUP
            collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer? = JR.cast(ownerLayer, CollidableDestroyableDamageableLayer)
            collidableDestroyableDamageableLayer.not_nil!.getPickupBehavior().not_nil!.doPickupLayer(JR.cast(collidableInterfaceCompositeInterface, PickedUpLayerInterface))
        else
        end
    end
    

    def collideInterface(ownerLayer : CollidableCompositeLayer?, collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface?) : Nil
        ForcedLogUtil.log(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED, self)
    end
end

