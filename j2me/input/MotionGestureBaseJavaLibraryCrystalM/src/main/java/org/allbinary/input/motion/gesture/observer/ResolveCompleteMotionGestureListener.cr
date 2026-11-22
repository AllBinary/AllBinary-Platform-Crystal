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

class ResolveCompleteMotionGestureListener < JObject
    include CompleteMotionGestureListenerInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_ResolveCompleteMotionGestureListener : Nil
    @logUtil = LogUtil.getInstance()
    end
    

    def jinit_ResolveCompleteMotionGestureListener : self
        jfields_ResolveCompleteMotionGestureListener()
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        @logUtil.not_nil!.putF("MotionGesture to CompleteMotionGesture Reciever", self, commonStrings.not_nil!.jf_CONSTRUCTOR)
        CompleteMotionGestureInputEventHandler.getInstance().not_nil!.addListener(GameKeyFromMotionGestureEventListener.new.jinit_GameKeyFromMotionGestureEventListener())
        self
    end
    

    def onMotionGestureCompleted(list : BasicArrayList?) : Nil
        configuration : MotionGestureConfiguration? = MotionGestureConfigurationFactory.getInstance()
        commandActionsList : BasicArrayList? = configuration.not_nil!.getAssociateCommandActionsList()
        size : Int32 = commandActionsList.not_nil!.size()
        index : Int32 = size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            association : MotionGestureToMotionGestureActionAssociation? = JR.cast(commandActionsList.not_nil!.jf_objectArray.not_nil![index], MotionGestureToMotionGestureActionAssociation)
            if association.not_nil!.isMotionGestureArrayEquals(list) == true
                completeMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent? = JR.cast(association.not_nil!.getCommandAction(), GameKeyCompleteMotionGestureInputEvent)
                CompleteMotionGestureInputEventHandler.getInstance().not_nil!.fireEvent(completeMotionGestureInputEvent)
                break
            end
        end
    end
end

