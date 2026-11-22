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

module CollidableInterface
    include JObjectI
    include NamedInterface
end

module JObjectI
    def isCollidable(*jargs) : NoReturn
        raise JR.abstractMethod("isCollidable")
    end
    def isCollision(*jargs) : NoReturn
        raise JR.abstractMethod("isCollision")
    end
    def collide(*jargs) : NoReturn
        raise JR.abstractMethod("collide")
    end
    def getCollisionTypeWith(*jargs) : NoReturn
        raise JR.abstractMethod("getCollisionTypeWith")
    end
end

