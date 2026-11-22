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
# package org.allbinary.logic.system.os

module OperatingSystemInterface
    include JObjectI
end

module JObjectI
    def getName(*jargs) : NoReturn
        raise JR.abstractMethod("getName")
    end
    def getVersion(*jargs) : NoReturn
        raise JR.abstractMethod("getVersion")
    end
    def getArch(*jargs) : NoReturn
        raise JR.abstractMethod("getArch")
    end
    def getCharacterSet(*jargs) : NoReturn
        raise JR.abstractMethod("getCharacterSet")
    end
    def isOverScan(*jargs) : NoReturn
        raise JR.abstractMethod("isOverScan")
    end
    def getOverScanXPercent(*jargs) : NoReturn
        raise JR.abstractMethod("getOverScanXPercent")
    end
    def getOverScanYPercent(*jargs) : NoReturn
        raise JR.abstractMethod("getOverScanYPercent")
    end
    def isScalable(*jargs) : NoReturn
        raise JR.abstractMethod("isScalable")
    end
    def isAutoHide(*jargs) : NoReturn
        raise JR.abstractMethod("isAutoHide")
    end
end

