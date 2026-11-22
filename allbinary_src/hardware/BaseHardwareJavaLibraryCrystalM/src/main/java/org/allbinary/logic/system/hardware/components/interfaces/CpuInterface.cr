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
# package org.allbinary.logic.system.hardware.components.interfaces

module CpuInterface
    include JObjectI
end

module JObjectI
    def getProcessor(*jargs) : NoReturn
        raise JR.abstractMethod("getProcessor")
    end
    def getVendorId(*jargs) : NoReturn
        raise JR.abstractMethod("getVendorId")
    end
    def getCpuFamily(*jargs) : NoReturn
        raise JR.abstractMethod("getCpuFamily")
    end
    def getModel(*jargs) : NoReturn
        raise JR.abstractMethod("getModel")
    end
    def getModelName(*jargs) : NoReturn
        raise JR.abstractMethod("getModelName")
    end
    def getStepping(*jargs) : NoReturn
        raise JR.abstractMethod("getStepping")
    end
    def getCpuSpeed(*jargs) : NoReturn
        raise JR.abstractMethod("getCpuSpeed")
    end
    def getCacheSize(*jargs) : NoReturn
        raise JR.abstractMethod("getCacheSize")
    end
    def compareTo(*jargs) : NoReturn
        raise JR.abstractMethod("compareTo")
    end
end

