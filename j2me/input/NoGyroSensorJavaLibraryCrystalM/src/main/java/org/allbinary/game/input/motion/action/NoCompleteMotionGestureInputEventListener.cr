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
# package org.allbinary.game.input.motion.action

class NoCompleteMotionGestureInputEventListener < JObject
    include CompleteMotionGestureInputEventListenerInterface

    @@jst_instance : NoCompleteMotionGestureInputEventListener? = nil

    def self.jst_instance : NoCompleteMotionGestureInputEventListener?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NoCompleteMotionGestureInputEventListener?) : NoCompleteMotionGestureInputEventListener?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NoCompleteMotionGestureInputEventListener.new.jinit_NoCompleteMotionGestureInputEventListener()
    end
    

    def self.getInstance : NoCompleteMotionGestureInputEventListener?
        return NoCompleteMotionGestureInputEventListener.jst_instance
    end
    

    def jinit_NoCompleteMotionGestureInputEventListener : self
        self
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent : CompleteMotionGestureInputEvent?) : Nil
    end
end

