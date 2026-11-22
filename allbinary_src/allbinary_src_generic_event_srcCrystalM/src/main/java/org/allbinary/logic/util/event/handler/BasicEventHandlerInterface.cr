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
# package org.allbinary.logic.util.event.handler

module BasicEventHandlerInterface
    include JObjectI
end

module JObjectI
    def addListenerInterface(*jargs) : NoReturn
        raise JR.abstractMethod("addListenerInterface")
    end
    def fireEvent(*jargs) : NoReturn
        raise JR.abstractMethod("fireEvent")
    end
    def removeAllListeners(*jargs) : NoReturn
        raise JR.abstractMethod("removeAllListeners")
    end
    def removeListener(*jargs) : NoReturn
        raise JR.abstractMethod("removeListener")
    end
end

