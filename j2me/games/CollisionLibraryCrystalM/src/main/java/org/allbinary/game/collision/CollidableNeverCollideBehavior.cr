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
# package org.allbinary.game.collision

class CollidableNeverCollideBehavior < CollidableBaseBehavior
    

    def jinit_CollidableNeverCollideBehavior(isCollidable : Bool) : self
        jinit_CollidableBaseBehavior(isCollidable)
        self
    end
    

    def isCollision(ownerLayer : CollidableCompositeLayer?, allbinaryCollidableLayer : CollidableCompositeLayer?) : Bool
        return false
    end
    

    def collide(ownerLayer : CollidableCompositeLayer?, allbinaryCollidableLayer : CollidableCompositeLayer?) : Nil
    end
    

    def collideInterface(ownerLayer : CollidableCompositeLayer?, collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface?) : Nil
    end
    

    def isCollisionInterface(ownerLayer : CollidableCompositeLayer?, collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface?) : Bool
        return false
    end
end

