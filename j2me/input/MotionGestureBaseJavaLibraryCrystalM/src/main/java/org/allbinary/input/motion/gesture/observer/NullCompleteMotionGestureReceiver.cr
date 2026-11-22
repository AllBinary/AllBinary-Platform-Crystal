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

class NullCompleteMotionGestureReceiver < JObject
    include CompleteMotionGestureListenerInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_NullCompleteMotionGestureReceiver : Nil
    @logUtil = LogUtil.getInstance()
    end
    

    def jinit_NullCompleteMotionGestureReceiver : self
        jfields_NullCompleteMotionGestureReceiver()
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        @logUtil.not_nil!.putF("Null Gesture Reciever", self, commonStrings.not_nil!.jf_CONSTRUCTOR)
        self
    end
    

    def onMotionGestureCompleted(list : BasicArrayList?) : Nil
    end
end

