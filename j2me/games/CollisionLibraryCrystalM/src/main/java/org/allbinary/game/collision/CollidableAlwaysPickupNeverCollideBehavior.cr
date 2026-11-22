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

class CollidableAlwaysPickupNeverCollideBehavior < CollidableNeverCollideBehavior
    

    def jinit_CollidableAlwaysPickupNeverCollideBehavior : self
        jinit_CollidableNeverCollideBehavior(true)
        self
    end
    

    def getCollisionTypeWith(layerInterface : AllBinaryLayer?) : CollisionType?
        return CollisionTypeFactory.getInstance().not_nil!.jf_PICKUP
    end
end

