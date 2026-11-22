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
# package org.allbinary.animation.transition.shake

class NoShakeAnimationListener < ShakeAnimationListener

    @@jst_NO_SHAKE_ANIMATION_LISTENER : ShakeAnimationListener? = nil

    def self.jst_NO_SHAKE_ANIMATION_LISTENER : ShakeAnimationListener?
        jclinit
        @@jst_NO_SHAKE_ANIMATION_LISTENER
    end

    def self.jst_NO_SHAKE_ANIMATION_LISTENER=(value : ShakeAnimationListener?) : ShakeAnimationListener?
        jclinit
        @@jst_NO_SHAKE_ANIMATION_LISTENER = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NO_SHAKE_ANIMATION_LISTENER = NoShakeAnimationListener.new.jinit_NoShakeAnimationListener()
    end

    def jinit_NoShakeAnimationListener : self
        jinit_ShakeAnimationListener()
        self
    end
end

