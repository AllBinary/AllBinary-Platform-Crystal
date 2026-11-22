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
# package org.allbinary.game.health

module HealthInterface
    include JObjectI
end

module JObjectI
    def isAlive(*jargs) : NoReturn
        raise JR.abstractMethod("isAlive")
    end
    def damage(*jargs) : NoReturn
        raise JR.abstractMethod("damage")
    end
    def heal(*jargs) : NoReturn
        raise JR.abstractMethod("heal")
    end
    def healMax(*jargs) : NoReturn
        raise JR.abstractMethod("healMax")
    end
    def getMaxHealth(*jargs) : NoReturn
        raise JR.abstractMethod("getMaxHealth")
    end
    def setMaxHealth(*jargs) : NoReturn
        raise JR.abstractMethod("setMaxHealth")
    end
    def getHealth(*jargs) : NoReturn
        raise JR.abstractMethod("getHealth")
    end
    def addListener(*jargs) : NoReturn
        raise JR.abstractMethod("addListener")
    end
end

