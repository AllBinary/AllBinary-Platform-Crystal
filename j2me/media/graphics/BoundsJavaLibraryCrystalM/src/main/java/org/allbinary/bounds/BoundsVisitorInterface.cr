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
# package org.allbinary.bounds

module BoundsVisitorInterface
    include JObjectI
end

module JObjectI
    def getX(*jargs) : NoReturn
        raise JR.abstractMethod("getX")
    end
    def getY(*jargs) : NoReturn
        raise JR.abstractMethod("getY")
    end
    def maxX(*jargs) : NoReturn
        raise JR.abstractMethod("maxX")
    end
    def maxY(*jargs) : NoReturn
        raise JR.abstractMethod("maxY")
    end
    def minX(*jargs) : NoReturn
        raise JR.abstractMethod("minX")
    end
    def minY(*jargs) : NoReturn
        raise JR.abstractMethod("minY")
    end
end

