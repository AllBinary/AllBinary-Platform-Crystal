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
# package org.allbinary.animation.transition

module AnimationListenerInterface
    include JObjectI
end

module JObjectI
    def onPlatformAnimationStart(*jargs) : NoReturn
        raise JR.abstractMethod("onPlatformAnimationStart")
    end
    def onPlatformAnimationEnd(*jargs) : NoReturn
        raise JR.abstractMethod("onPlatformAnimationEnd")
    end
    def onPlatformAnimationRepeat(*jargs) : NoReturn
        raise JR.abstractMethod("onPlatformAnimationRepeat")
    end
end

