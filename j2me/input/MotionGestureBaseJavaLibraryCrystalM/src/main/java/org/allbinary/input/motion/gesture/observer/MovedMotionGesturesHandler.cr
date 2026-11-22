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
# package org.allbinary.input.motion.gesture.observer

class MovedMotionGesturesHandler < BasicEventHandler

    @@jst_SINGLETON : MovedMotionGesturesHandler? = nil

    def self.jst_SINGLETON : MovedMotionGesturesHandler?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : MovedMotionGesturesHandler?) : MovedMotionGesturesHandler?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = MovedMotionGesturesHandler.new.jinit_MovedMotionGesturesHandler()
    end
    

    def self.getInstance : MovedMotionGesturesHandler?
        return MovedMotionGesturesHandler.jst_SINGLETON
    end
    

    def jinit_MovedMotionGesturesHandler : self
        jinit_BasicEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        baseMotionGestureEventListener : BaseMotionGestureEventListener? = JR.cast(eventListenerInterface, BaseMotionGestureEventListener)
        baseMotionGestureEventListener.not_nil!.onMotionGestureEvent(JR.cast(eventObject, MotionGestureEvent))
    end
end

