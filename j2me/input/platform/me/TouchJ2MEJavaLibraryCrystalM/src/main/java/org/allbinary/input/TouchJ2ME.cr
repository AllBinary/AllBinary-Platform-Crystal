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
# package org.allbinary.input

class TouchJ2ME < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_DEVICE_ID : Int32 = 0

    def jf_DEVICE_ID : Int32
        @j_DEVICE_ID
    end

    def jf_DEVICE_ID=(value : Int32) : Int32
        @j_DEVICE_ID = value
    end
    @motionRecognizer : AllMotionRecognizer? = nil

    def jf_motionRecognizer : AllMotionRecognizer?
        @motionRecognizer
    end

    def jf_motionRecognizer=(value : AllMotionRecognizer?) : AllMotionRecognizer?
        @motionRecognizer = value
    end

    # Java field initializers run after the super constructor
    def jfields_TouchJ2ME : Nil
    @logUtil = LogUtil.getInstance()
    @j_DEVICE_ID = 0
    @motionRecognizer = AllMotionRecognizer.new.jinit_AllMotionRecognizer()
    end
    

    def jinit_TouchJ2ME : self
        jfields_TouchJ2ME()
        motionGesturesHandler : BasicMotionGesturesHandler? = @motionRecognizer.not_nil!.getMotionGestureRecognizer().not_nil!.getMotionGesturesHandler()
        motionGesturesHandler.not_nil!.addListenerInterface(GameMotionGestureListener.new.jinit_GameMotionGestureListener(MotionGestureReceiveInterfaceFactory.getInstance()))
        self
    end
    

    def pointerDragged(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        begin
            @motionRecognizer.not_nil!.processDraggedMotionEvent(x, y, @j_DEVICE_ID, 0)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, "pointerDragged", e)
            else
                raise jex1
            end
        end
    end
    

    def pointerPressed(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        begin
            @motionRecognizer.not_nil!.processStartMotionEvent(x, y, @j_DEVICE_ID, 0)
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, "pointerPressed", e)
            else
                raise jex2
            end
        end
    end
    

    def pointerReleased(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        begin
            @motionRecognizer.not_nil!.processEndMotionEvent(x, y, @j_DEVICE_ID, 0)
        rescue jexc3 : ::Exception
            jex3 = JR.jthrowable(jexc3)
            if jex3.is_a?(JException)
                e = jex3.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, "pointerReleased", e)
            else
                raise jex3
            end
        end
    end
end

