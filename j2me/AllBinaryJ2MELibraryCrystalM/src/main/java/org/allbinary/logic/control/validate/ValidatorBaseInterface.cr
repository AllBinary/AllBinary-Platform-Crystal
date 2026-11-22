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
# package org.allbinary.logic.control.validate

module ValidatorBaseInterface
    include JObjectI
end

module JObjectI
    def isValid(*jargs) : NoReturn
        raise JR.abstractMethod("isValid")
    end
    def validationInfo(*jargs) : NoReturn
        raise JR.abstractMethod("validationInfo")
    end
    def toHashtable(*jargs) : NoReturn
        raise JR.abstractMethod("toHashtable")
    end
    def toList(*jargs) : NoReturn
        raise JR.abstractMethod("toList")
    end
end

