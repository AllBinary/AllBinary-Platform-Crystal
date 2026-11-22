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
# package org.allbinary.game.score

module ScoreableInterface
    include JObjectI
end

module JObjectI
    def getPoints(*jargs) : NoReturn
        raise JR.abstractMethod("getPoints")
    end
    def addPoints(*jargs) : NoReturn
        raise JR.abstractMethod("addPoints")
    end
    def removePoints(*jargs) : NoReturn
        raise JR.abstractMethod("removePoints")
    end
end

