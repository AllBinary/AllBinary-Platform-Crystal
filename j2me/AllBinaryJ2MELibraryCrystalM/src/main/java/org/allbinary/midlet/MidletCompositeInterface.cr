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
# package org.allbinary.midlet

module MidletCompositeInterface
    include JObjectI
end

module JObjectI
    def setMidlet(*jargs) : NoReturn
        raise JR.abstractMethod("setMidlet")
    end
    def getMidlet(*jargs) : NoReturn
        raise JR.abstractMethod("getMidlet")
    end
    def getDisplayable(*jargs) : NoReturn
        raise JR.abstractMethod("getDisplayable")
    end
end

