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

class RunAtEndAnimationListener < JObject
    include AnimationListenerInterface
    @runnable : JRunnable? = nil

    def jf_runnable : JRunnable?
        @runnable
    end

    def jf_runnable=(value : JRunnable?) : JRunnable?
        @runnable = value
    end
    

    def jinit_RunAtEndAnimationListener(runnable : JRunnable?) : self
        @runnable = runnable
        self
    end
    

    def onPlatformAnimationStart : Nil
    end
    

    def onPlatformAnimationEnd : Nil
    end
    

    def onPlatformAnimationRepeat : Nil
    end
end

