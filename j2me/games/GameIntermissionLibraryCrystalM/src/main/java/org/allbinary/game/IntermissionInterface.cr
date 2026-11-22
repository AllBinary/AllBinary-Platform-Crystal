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
# package org.allbinary.game

module IntermissionInterface
    include JObjectI
end

module JObjectI
    def getTimeDelayHelper(*jargs) : NoReturn
        raise JR.abstractMethod("getTimeDelayHelper")
    end
    def isEnabled(*jargs) : NoReturn
        raise JR.abstractMethod("isEnabled")
    end
    def setEnabled(*jargs) : NoReturn
        raise JR.abstractMethod("setEnabled")
    end
    def setListener(*jargs) : NoReturn
        raise JR.abstractMethod("setListener")
    end
end

