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
# package org.allbinary.animation.compound

module CompoundAnimationInterface
    include JObjectI
    include AnimationInterface
end

module JObjectI
    def nextAnimation(*jargs) : NoReturn
        raise JR.abstractMethod("nextAnimation")
    end
    def previousAnimation(*jargs) : NoReturn
        raise JR.abstractMethod("previousAnimation")
    end
    def setAnimation(*jargs) : NoReturn
        raise JR.abstractMethod("setAnimation")
    end
    def getCurrentAnimation(*jargs) : NoReturn
        raise JR.abstractMethod("getCurrentAnimation")
    end
end

