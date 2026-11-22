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
# package org.allbinary.debug

module DebugInterface
    include JObjectI
end

module JObjectI
    def start(*jargs) : NoReturn
        raise JR.abstractMethod("start")
    end
    def stop(*jargs) : NoReturn
        raise JR.abstractMethod("stop")
    end
    def getStartTime(*jargs) : NoReturn
        raise JR.abstractMethod("getStartTime")
    end
    def getMaxTime(*jargs) : NoReturn
        raise JR.abstractMethod("getMaxTime")
    end
    def isRunning(*jargs) : NoReturn
        raise JR.abstractMethod("isRunning")
    end
end

