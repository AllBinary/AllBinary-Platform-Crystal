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
# package org.allbinary.game.ag.life

module LifeInterface
    include JObjectI
end

module JObjectI
    def get(*jargs) : NoReturn
        raise JR.abstractMethod("get")
    end
    def set(*jargs) : NoReturn
        raise JR.abstractMethod("set")
    end
    def reset(*jargs) : NoReturn
        raise JR.abstractMethod("reset")
    end
    def add(*jargs) : NoReturn
        raise JR.abstractMethod("add")
    end
    def deaths(*jargs) : NoReturn
        raise JR.abstractMethod("deaths")
    end
    def getMaxlives(*jargs) : NoReturn
        raise JR.abstractMethod("getMaxlives")
    end
    def isAlive(*jargs) : NoReturn
        raise JR.abstractMethod("isAlive")
    end
end

