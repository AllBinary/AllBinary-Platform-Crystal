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
# package org.allbinary.game.physics.velocity

module VelocityInterface
    include JObjectI
    include BasicVelocityInterface
end

module JObjectI
    def getMaxForwardVelocity(*jargs) : NoReturn
        raise JR.abstractMethod("getMaxForwardVelocity")
    end
    def getMaxReverseVelocity(*jargs) : NoReturn
        raise JR.abstractMethod("getMaxReverseVelocity")
    end
    def limitMaxXYForwardVelocity(*jargs) : NoReturn
        raise JR.abstractMethod("limitMaxXYForwardVelocity")
    end
    def limitMaxXYReverseVelocity(*jargs) : NoReturn
        raise JR.abstractMethod("limitMaxXYReverseVelocity")
    end
    def limitXYToForwardAndReverseMaxVelocity(*jargs) : NoReturn
        raise JR.abstractMethod("limitXYToForwardAndReverseMaxVelocity")
    end
    def limitMaxXYVelocity(*jargs) : NoReturn
        raise JR.abstractMethod("limitMaxXYVelocity")
    end
    def setMaxForwardVelocity(*jargs) : NoReturn
        raise JR.abstractMethod("setMaxForwardVelocity")
    end
    def setMaxReverseVelocity(*jargs) : NoReturn
        raise JR.abstractMethod("setMaxReverseVelocity")
    end
end

