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

class GameMotionGestureListener < JObject
    include MotionGestureEventListener
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @motionGestureCollection : BasicArrayList? = nil

    def jf_motionGestureCollection : BasicArrayList?
        @motionGestureCollection
    end

    def jf_motionGestureCollection=(value : BasicArrayList?) : BasicArrayList?
        @motionGestureCollection = value
    end
    @touchGestureCollection : BasicArrayList? = nil

    def jf_touchGestureCollection : BasicArrayList?
        @touchGestureCollection
    end

    def jf_touchGestureCollection=(value : BasicArrayList?) : BasicArrayList?
        @touchGestureCollection = value
    end
    @signed : CompleteMotionGestureListenerInterface? = nil

    def jf_signed : CompleteMotionGestureListenerInterface?
        @signed
    end

    def jf_signed=(value : CompleteMotionGestureListenerInterface?) : CompleteMotionGestureListenerInterface?
        @signed = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameMotionGestureListener : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @motionGestureCollection = BasicArrayListD.new.jinit_BasicArrayListD()
    @touchGestureCollection = BasicArrayListD.new.jinit_BasicArrayListD()
    
    end
    

    def jinit_GameMotionGestureListener(signed : CompleteMotionGestureListenerInterface?) : self
        jfields_GameMotionGestureListener()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        @signed = JR.cast(signed, CompleteMotionGestureListenerInterface)
        self
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED, self)
    end
    

    def onUpMotionGestureEvent(ev : MotionGestureEvent?) : Nil
        self.onMotionGestureEvent(ev)
    end
    

    def onDownMotionGestureEvent(ev : MotionGestureEvent?) : Nil
        self.onMotionGestureEvent(ev)
    end
    

    def onLeftMotionGestureEvent(ev : MotionGestureEvent?) : Nil
        self.onMotionGestureEvent(ev)
    end
    

    def onRightMotionGestureEvent(ev : MotionGestureEvent?) : Nil
        self.onMotionGestureEvent(ev)
    end
    

    def onDiagonalDownRightMotionGestureEvent(ev : MotionGestureEvent?) : Nil
        self.onMotionGestureEvent(ev)
    end
    

    def onDiagonalDownLeftMotionGestureEvent(ev : MotionGestureEvent?) : Nil
        self.onMotionGestureEvent(ev)
    end
    

    def onDiagonalUpRightMotionGestureEvent(ev : MotionGestureEvent?) : Nil
        self.onMotionGestureEvent(ev)
    end
    

    def onDiagonalUpLeftMotionGestureEvent(ev : MotionGestureEvent?) : Nil
        self.onMotionGestureEvent(ev)
    end
    

    def onPressedMotionGestureEvent(ev : MotionGestureEvent?) : Nil
        @touchGestureCollection.not_nil!.add(ev.not_nil!.getMotionGesture())
    end
    

    def released(ev : MotionGestureEvent?) : Nil
        begin
            @touchGestureCollection.not_nil!.add(ev.not_nil!.getMotionGesture())
            @signed.not_nil!.onMotionGestureCompleted(@touchGestureCollection)
            @touchGestureCollection.not_nil!.clear()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append(@commonStrings.not_nil!.jf_EXCEPTION_LABEL)
            stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(ev.not_nil!.getMotionGesture()))
            @logUtil.not_nil!.put(stringBuffer.not_nil!.toString(), self, "release", e)
            else
                raise jex1
            end
        end
    end
    

    def onScrolledMotionGestureEvent(motionGestureEvent : MotionGestureEvent?) : Nil
    end
    

    def onMotionGestureEvent(ev : MotionGestureEvent?) : Nil
        begin
            motionGestureInput : MotionGestureInput? = ev.not_nil!.getMotionGesture()
            if motionGestureInput == TouchMotionGestureFactory.getInstance().not_nil!.jf_PRESSED
                self.onPressedMotionGestureEvent(ev)
            elsif motionGestureInput == TouchMotionGestureFactory.getInstance().not_nil!.jf_RELEASED
                self.released(ev)
            else
                @motionGestureCollection.not_nil!.add(motionGestureInput)
                @signed.not_nil!.onMotionGestureCompleted(@motionGestureCollection)
                @motionGestureCollection.not_nil!.clear()
                @touchGestureCollection.not_nil!.clear()
            end
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append(@commonStrings.not_nil!.jf_EXCEPTION_LABEL)
            stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(ev.not_nil!.getMotionGesture()))
            @logUtil.not_nil!.put(stringBuffer.not_nil!.toString(), self, "onMotionGestureEvent", e)
            else
                raise jex2
            end
        end
    end
end

