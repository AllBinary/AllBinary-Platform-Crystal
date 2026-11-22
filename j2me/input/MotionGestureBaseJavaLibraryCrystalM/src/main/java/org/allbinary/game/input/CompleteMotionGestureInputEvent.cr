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
# package org.allbinary.game.input

class CompleteMotionGestureInputEvent < AllBinaryEventObject
    include CompleteMotionGestureInputInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @motionGestureInput : MotionGestureInput? = nil

    def jf_motionGestureInput : MotionGestureInput?
        @motionGestureInput
    end

    def jf_motionGestureInput=(value : MotionGestureInput?) : MotionGestureInput?
        @motionGestureInput = value
    end

    # Java field initializers run after the super constructor
    def jfields_CompleteMotionGestureInputEvent : Nil
    @logUtil = LogUtil.getInstance()
    @name = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @motionGestureInput = TouchMotionGestureFactory.getInstance().not_nil!.jf_NO_MOTION
    end
    

    def jinit_CompleteMotionGestureInputEvent(name : String, motionGestureInput : MotionGestureInput?) : self
        jinit_AllBinaryEventObject(motionGestureInput)
        jfields_CompleteMotionGestureInputEvent()
        self.setName(name)
        begin
            self.setMotionGestureInput(motionGestureInput)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, "InputToGameKeyEventAction", e)
            else
                raise jex1
            end
        end
        self
    end
    

    def setName(name : String) : Nil
        @name = name
    end
    

    def getName : String
        return @name
    end
    

    def setMotionGestureInput(motionGestureInput : MotionGestureInput?) : Nil
        @motionGestureInput = motionGestureInput
    end
    

    def getMotionGestureInput : MotionGestureInput?
        return @motionGestureInput
    end
end

