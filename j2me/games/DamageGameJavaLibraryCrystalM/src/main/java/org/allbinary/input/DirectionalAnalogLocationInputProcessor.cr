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

class DirectionalAnalogLocationInputProcessor < AnalogLocationInputProcessor
    include GameKeyEventSourceInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @inputProcessorArray : Array(GameInputProcessor?)? = nil

    def jf_inputProcessorArray : Array(GameInputProcessor?)?
        @inputProcessorArray
    end

    def jf_inputProcessorArray=(value : Array(GameInputProcessor?)?) : Array(GameInputProcessor?)?
        @inputProcessorArray = value
    end
    @gameKeyFactory : GameKeyFactory? = nil

    def jf_gameKeyFactory : GameKeyFactory?
        @gameKeyFactory
    end

    def jf_gameKeyFactory=(value : GameKeyFactory?) : GameKeyFactory?
        @gameKeyFactory = value
    end
    @leftGameKeyEvent : GameKeyEvent? = nil

    def jf_leftGameKeyEvent : GameKeyEvent?
        @leftGameKeyEvent
    end

    def jf_leftGameKeyEvent=(value : GameKeyEvent?) : GameKeyEvent?
        @leftGameKeyEvent = value
    end
    @rightGameKeyEvent : GameKeyEvent? = nil

    def jf_rightGameKeyEvent : GameKeyEvent?
        @rightGameKeyEvent
    end

    def jf_rightGameKeyEvent=(value : GameKeyEvent?) : GameKeyEvent?
        @rightGameKeyEvent = value
    end
    @upGameKeyEvent : GameKeyEvent? = nil

    def jf_upGameKeyEvent : GameKeyEvent?
        @upGameKeyEvent
    end

    def jf_upGameKeyEvent=(value : GameKeyEvent?) : GameKeyEvent?
        @upGameKeyEvent = value
    end
    @downGameKeyEvent : GameKeyEvent? = nil

    def jf_downGameKeyEvent : GameKeyEvent?
        @downGameKeyEvent
    end

    def jf_downGameKeyEvent=(value : GameKeyEvent?) : GameKeyEvent?
        @downGameKeyEvent = value
    end
    @leftTriggerGameKeyEvent : GameKeyEvent? = nil

    def jf_leftTriggerGameKeyEvent : GameKeyEvent?
        @leftTriggerGameKeyEvent
    end

    def jf_leftTriggerGameKeyEvent=(value : GameKeyEvent?) : GameKeyEvent?
        @leftTriggerGameKeyEvent = value
    end
    @rightTriggerGameKeyEvent : GameKeyEvent? = nil

    def jf_rightTriggerGameKeyEvent : GameKeyEvent?
        @rightTriggerGameKeyEvent
    end

    def jf_rightTriggerGameKeyEvent=(value : GameKeyEvent?) : GameKeyEvent?
        @rightTriggerGameKeyEvent = value
    end

    # Java field initializers run after the super constructor
    def jfields_DirectionalAnalogLocationInputProcessor : Nil
    @logUtil = LogUtil.getInstance()
    
    @gameKeyFactory = GameKeyFactory.getInstance()
    @leftGameKeyEvent = GameKeyEvent.jst_NONE
    @rightGameKeyEvent = GameKeyEvent.jst_NONE
    @upGameKeyEvent = GameKeyEvent.jst_NONE
    @downGameKeyEvent = GameKeyEvent.jst_NONE
    @leftTriggerGameKeyEvent = GameKeyEvent.jst_NONE
    @rightTriggerGameKeyEvent = GameKeyEvent.jst_NONE
    end
    

    def jinit_DirectionalAnalogLocationInputProcessor(inputProcessorArray : Array(GameInputProcessor?)?) : self
        jinit_AnalogLocationInputProcessor()
        jfields_DirectionalAnalogLocationInputProcessor()
        @inputProcessorArray = inputProcessorArray
        begin
            @leftGameKeyEvent = GameKeyEventFactory.getInstance().not_nil!.getInstanceForInput(self, @gameKeyFactory.not_nil!.jf_LEFT)
            @rightGameKeyEvent = GameKeyEventFactory.getInstance().not_nil!.getInstanceForInput(self, @gameKeyFactory.not_nil!.jf_RIGHT)
            @upGameKeyEvent = GameKeyEventFactory.getInstance().not_nil!.getInstanceForInput(self, @gameKeyFactory.not_nil!.jf_UP)
            @downGameKeyEvent = GameKeyEventFactory.getInstance().not_nil!.getInstanceForInput(self, @gameKeyFactory.not_nil!.jf_DOWN)
            @leftTriggerGameKeyEvent = GameKeyEventFactory.getInstance().not_nil!.getInstanceForInput(self, @gameKeyFactory.not_nil!.jf_KEY_NUM0)
            @rightTriggerGameKeyEvent = GameKeyEventFactory.getInstance().not_nil!.getInstanceForInput(self, @gameKeyFactory.not_nil!.jf_KEY_NUM5)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_CONSTRUCTOR, e)
            else
                raise jex1
            end
        end
        self
    end
    

    def process(allbinaryLayerManager : AllBinaryLayerManager?, analogLocationInput : AnalogLocationInput?) : Nil
        begin
            customGPoint : CustomGPoint? = nil
            customGPoint = analogLocationInput.not_nil!.getCustomGPoint()
            x : Int32 = customGPoint.not_nil!.getX()
            y : Int32 = customGPoint.not_nil!.getY()
            leftTrigger : Int32 = analogLocationInput.not_nil!.getLeftTrigger()
            rightTrigger : Int32 = analogLocationInput.not_nil!.getRightTrigger()
            if x < 0
                @inputProcessorArray.not_nil![@leftGameKeyEvent.not_nil!.getKey()].not_nil!.processAnalog(allbinaryLayerManager, @leftGameKeyEvent, x)
            elsif x > 0
                @inputProcessorArray.not_nil![@rightGameKeyEvent.not_nil!.getKey()].not_nil!.processAnalog(allbinaryLayerManager, @rightGameKeyEvent, x)
            end
            if y < 0
                @inputProcessorArray.not_nil![@downGameKeyEvent.not_nil!.getKey()].not_nil!.processAnalog(allbinaryLayerManager, @downGameKeyEvent, y)
            elsif y > 0
                @inputProcessorArray.not_nil![@upGameKeyEvent.not_nil!.getKey()].not_nil!.processAnalog(allbinaryLayerManager, @upGameKeyEvent, y)
            end
            if leftTrigger > 0
                @inputProcessorArray.not_nil![@leftTriggerGameKeyEvent.not_nil!.getKey()].not_nil!.processAnalog(allbinaryLayerManager, @leftTriggerGameKeyEvent, leftTrigger)
            end
            if rightTrigger > 0
                @inputProcessorArray.not_nil![@rightTriggerGameKeyEvent.not_nil!.getKey()].not_nil!.processAnalog(allbinaryLayerManager, @rightTriggerGameKeyEvent, rightTrigger)
            end
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put("Unable to process analog input", self, commonStrings.not_nil!.jf_PROCESS, e)
            else
                raise jex2
            end
        end
    end
    

    def getSourceId : Int32
        return 0
    end
end

