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

class SingleKeyPressGameKeyFromMotionGestureEventListener < CompleteMotionGestureInputEventListener
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_SingleKeyPressGameKeyFromMotionGestureEventListener : Nil
    @logUtil = LogUtil.getInstance()
    end

    def jinit_SingleKeyPressGameKeyFromMotionGestureEventListener : self
        jinit_CompleteMotionGestureInputEventListener()
        jfields_SingleKeyPressGameKeyFromMotionGestureEventListener()
        self
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent : CompleteMotionGestureInputEvent?) : Nil
        begin
            gameKeyCompleteMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent? = JR.cast(completeMotionGestureInputEvent, GameKeyCompleteMotionGestureInputEvent)
            gameKeyEvent : GameKeyEvent? = gameKeyCompleteMotionGestureInputEvent.not_nil!.getGameKeyEvent()
            PressGameKeyEventHandler.getInstance().not_nil!.fireEvent(gameKeyEvent)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, "onCompleteMotionGestureInputEvent", e)
            else
                raise jex1
            end
        end
    end
end

