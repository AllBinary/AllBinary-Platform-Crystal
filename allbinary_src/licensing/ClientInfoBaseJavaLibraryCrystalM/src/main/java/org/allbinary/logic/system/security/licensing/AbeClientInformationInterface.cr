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
# package org.allbinary.logic.system.security.licensing

module AbeClientInformationInterface
    include JObjectI
end

module JObjectI
    def init(*jargs) : NoReturn
        raise JR.abstractMethod("init")
    end
    def getOperatingSystemInterface(*jargs) : NoReturn
        raise JR.abstractMethod("getOperatingSystemInterface")
    end
    def getName(*jargs) : NoReturn
        raise JR.abstractMethod("getName")
    end
    def getSpecialName(*jargs) : NoReturn
        raise JR.abstractMethod("getSpecialName")
    end
    def getVersion(*jargs) : NoReturn
        raise JR.abstractMethod("getVersion")
    end
    def getLicenseId(*jargs) : NoReturn
        raise JR.abstractMethod("getLicenseId")
    end
    def getLicenseServers(*jargs) : NoReturn
        raise JR.abstractMethod("getLicenseServers")
    end
    def getLicenseServer(*jargs) : NoReturn
        raise JR.abstractMethod("getLicenseServer")
    end
    def getNumberOfLicenseServers(*jargs) : NoReturn
        raise JR.abstractMethod("getNumberOfLicenseServers")
    end
    def toHashtable(*jargs) : NoReturn
        raise JR.abstractMethod("toHashtable")
    end
    def isSameId(*jargs) : NoReturn
        raise JR.abstractMethod("isSameId")
    end
    def isLargerOrDifferentServerList(*jargs) : NoReturn
        raise JR.abstractMethod("isLargerOrDifferentServerList")
    end
    def isHardSale(*jargs) : NoReturn
        raise JR.abstractMethod("isHardSale")
    end
    def toShortString(*jargs) : NoReturn
        raise JR.abstractMethod("toShortString")
    end
end

