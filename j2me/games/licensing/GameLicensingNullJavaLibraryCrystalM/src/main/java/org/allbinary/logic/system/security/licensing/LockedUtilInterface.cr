# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

module LockedUtilInterface
    include JObjectI
end

module JObjectI
    def isLocked(*jargs) : NoReturn
        raise JR.abstractMethod("isLocked")
    end
    def isLockedFeature(*jargs) : NoReturn
        raise JR.abstractMethod("isLockedFeature")
    end
end

