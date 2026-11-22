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

class ScrolledMotionGesturesHandler < BasicEventHandler

    @@jst_SINGLETON : ScrolledMotionGesturesHandler? = nil

    def self.jst_SINGLETON : ScrolledMotionGesturesHandler?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : ScrolledMotionGesturesHandler?) : ScrolledMotionGesturesHandler?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = ScrolledMotionGesturesHandler.new.jinit_ScrolledMotionGesturesHandler()
    end
    

    def self.getInstance : ScrolledMotionGesturesHandler?
        return ScrolledMotionGesturesHandler.jst_SINGLETON
    end
    

    def jinit_ScrolledMotionGesturesHandler : self
        jinit_BasicEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        baseMotionGestureEventListener : BaseMotionGestureEventListener? = JR.cast(eventListenerInterface, BaseMotionGestureEventListener)
        baseMotionGestureEventListener.not_nil!.onScrolledMotionGestureEvent(JR.cast(eventObject, MotionGestureEvent))
    end
end

