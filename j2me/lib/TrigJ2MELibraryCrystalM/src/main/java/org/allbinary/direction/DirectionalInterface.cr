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
# package org.allbinary.direction

module DirectionalInterface
    include JObjectI
end

module JObjectI
    def setFrameByDirection(*jargs) : NoReturn
        raise JR.abstractMethod("setFrameByDirection")
    end
    def setFrameToAngle(*jargs) : NoReturn
        raise JR.abstractMethod("setFrameToAngle")
    end
    def adjustFrameToAngle(*jargs) : NoReturn
        raise JR.abstractMethod("adjustFrameToAngle")
    end
    def adjustFrame(*jargs) : NoReturn
        raise JR.abstractMethod("adjustFrame")
    end
end

