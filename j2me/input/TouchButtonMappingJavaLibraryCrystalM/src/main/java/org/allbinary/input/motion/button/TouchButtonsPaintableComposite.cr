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
# package org.allbinary.input.motion.button

class TouchButtonsPaintableComposite < ProcessPaintable
    include CompleteMotionGestureInputEventListenerInterface
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
    @inputMappingInterface : InputMappingInterface? = nil

    def jf_inputMappingInterface : InputMappingInterface?
        @inputMappingInterface
    end

    def jf_inputMappingInterface=(value : InputMappingInterface?) : InputMappingInterface?
        @inputMappingInterface = value
    end
    @touchButtonsPaintable : TouchButtonsMappingPaintable? = nil

    def jf_touchButtonsPaintable : TouchButtonsMappingPaintable?
        @touchButtonsPaintable
    end

    def jf_touchButtonsPaintable=(value : TouchButtonsMappingPaintable?) : TouchButtonsMappingPaintable?
        @touchButtonsPaintable = value
    end
    @timeHelper : TimeDelayHelper? = nil

    def jf_timeHelper : TimeDelayHelper?
        @timeHelper
    end

    def jf_timeHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeHelper = value
    end
    @released : Bool = false

    def jf_released : Bool
        @released
    end

    def jf_released=(value : Bool) : Bool
        @released = value
    end
    @j_METHOD_NAME : String = ""

    def jf_METHOD_NAME : String
        @j_METHOD_NAME
    end

    def jf_METHOD_NAME=(value : String) : String
        @j_METHOD_NAME = value
    end
    @j_RELEASE : String = ""

    def jf_RELEASE : String
        @j_RELEASE
    end

    def jf_RELEASE=(value : String) : String
        @j_RELEASE = value
    end
    @j_FAST_REPEAT : String = ""

    def jf_FAST_REPEAT : String
        @j_FAST_REPEAT
    end

    def jf_FAST_REPEAT=(value : String) : String
        @j_FAST_REPEAT = value
    end
    @j_IGNORE : String = ""

    def jf_IGNORE : String
        @j_IGNORE
    end

    def jf_IGNORE=(value : String) : String
        @j_IGNORE = value
    end

    # Java field initializers run after the super constructor
    def jfields_TouchButtonsPaintableComposite : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    
    @timeHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(250)
    @released = true
    @j_METHOD_NAME = "onCompleteMotionGestureInputEvent"
    @j_RELEASE = "Ignoring: MotionGestureInput Release"
    @j_FAST_REPEAT = "Ignoring: MotionGestureInput Repeated To Quickly"
    @j_IGNORE = "Ignoring: Until Released"
    end
    

    def jinit_TouchButtonsPaintableComposite(inputMappingInterface : InputMappingInterface?, basicColor : BasicColor?) : self
        jinit_ProcessPaintable()
        jfields_TouchButtonsPaintableComposite()
        @inputMappingInterface = JR.cast(inputMappingInterface, InputMappingInterface)
        CompleteMotionGestureInputEventHandler.getInstance().not_nil!.addListenerInterface(self)
        @touchButtonsPaintable = TouchButtonsMappingPaintable.new.jinit_TouchButtonsMappingPaintable(basicColor)
        self
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent : CompleteMotionGestureInputEvent?) : Nil
        begin
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, "onCompleteMotionGestureInputEvent")
            touchMotionGestureFactory : TouchMotionGestureFactory? = TouchMotionGestureFactory.getInstance()
            gameKeyCompleteMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent? = JR.cast(completeMotionGestureInputEvent, GameKeyCompleteMotionGestureInputEvent)
            gameKey : GameKey? = gameKeyCompleteMotionGestureInputEvent.not_nil!.getGameKey()
            motionGestureInput : MotionGestureInput? = completeMotionGestureInputEvent.not_nil!.getMotionGestureInput()
            if motionGestureInput == touchMotionGestureFactory.not_nil!.jf_RELEASED
                @logUtil.not_nil!.putF(@j_RELEASE, self, @j_METHOD_NAME)
                @released = true
                return
            end
            if motionGestureInput == TouchMotionGestureFactory.getInstance().not_nil!.jf_NO_MOTION && !@timeHelper.not_nil!.isTimeTNT()
                @logUtil.not_nil!.putF(@j_FAST_REPEAT, self, @j_METHOD_NAME)
                return
            end
            if !@released
                @logUtil.not_nil!.putF(@j_IGNORE, self, @j_METHOD_NAME)
                return
            end
            @released = false
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("GameKey: ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(gameKey)).not_nil!.append(" MotionGestureInput: ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(motionGestureInput)).not_nil!.toString(), self, @j_METHOD_NAME)
            @inputMappingInterface.not_nil!.processInputMapping(gameKey, motionGestureInput)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @j_METHOD_NAME, e)
            else
                raise jex1
            end
        end
    end
    

    def process : Nil
        CompleteMotionGestureInputEventHandler.getInstance().not_nil!.removeListener(self)
    end
end

