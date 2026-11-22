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

class BasicMotionGesturesHandler < BasicEventHandler

    @@jst_SINGLETON : BasicMotionGesturesHandler? = nil

    def self.jst_SINGLETON : BasicMotionGesturesHandler?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : BasicMotionGesturesHandler?) : BasicMotionGesturesHandler?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = BasicMotionGesturesHandler.new.jinit_BasicMotionGesturesHandler()
    end
    

    def self.getInstance : BasicMotionGesturesHandler?
        return BasicMotionGesturesHandler.jst_SINGLETON
    end
    

    def jinit_BasicMotionGesturesHandler : self
        jinit_BasicEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        baseMotionGestureEventListener : BaseMotionGestureEventListener? = JR.cast(eventListenerInterface, BaseMotionGestureEventListener)
        baseMotionGestureEventListener.not_nil!.onMotionGestureEvent(JR.cast(eventObject, MotionGestureEvent))
    end
end

