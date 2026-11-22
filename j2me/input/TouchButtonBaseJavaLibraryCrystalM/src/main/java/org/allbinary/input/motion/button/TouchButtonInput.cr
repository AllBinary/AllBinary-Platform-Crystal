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

class TouchButtonInput < Input
    include GameKeyEventSourceInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @gameKeyEventFactory : GameKeyEventFactory? = nil

    def jf_gameKeyEventFactory : GameKeyEventFactory?
        @gameKeyEventFactory
    end

    def jf_gameKeyEventFactory=(value : GameKeyEventFactory?) : GameKeyEventFactory?
        @gameKeyEventFactory = value
    end
    @j_TOUCH_BUTTON_SOURCE_ID : Int32 = 0

    def jf_TOUCH_BUTTON_SOURCE_ID : Int32
        @j_TOUCH_BUTTON_SOURCE_ID
    end

    def jf_TOUCH_BUTTON_SOURCE_ID=(value : Int32) : Int32
        @j_TOUCH_BUTTON_SOURCE_ID = value
    end
    @gameKeyEvent : GameKeyEvent? = nil

    def jf_gameKeyEvent : GameKeyEvent?
        @gameKeyEvent
    end

    def jf_gameKeyEvent=(value : GameKeyEvent?) : GameKeyEvent?
        @gameKeyEvent = value
    end

    # Java field initializers run after the super constructor
    def jfields_TouchButtonInput : Nil
    @logUtil = LogUtil.getInstance()
    @gameKeyEventFactory = GameKeyEventFactory.getInstance()
    @j_TOUCH_BUTTON_SOURCE_ID = @gameKeyEventFactory.not_nil!.jf_TOUCH_BUTTON_SOURCE_ID
    @gameKeyEvent = GameKeyEvent.jst_NONE
    end
    

    def jinit_TouchButtonInput(id : Int, name : String) : self
        id = id.to_i32!
        jinit_Input(id, name)
        jfields_TouchButtonInput()
        inputFactory : InputFactory? = InputFactory.getInstance()
        inputFactory.not_nil!.add(self.getId(), self)
        self
    end
    

    def update(inputToGameKeyMapping : InputToGameKeyMapping?) : Nil
        begin
            gameKey : GameKey? = inputToGameKeyMapping.not_nil!.getInstance(self.getId())
            @gameKeyEvent = @gameKeyEventFactory.not_nil!.getInstanceForInput(self, gameKey)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_UPDATE, e)
            else
                raise jex1
            end
        end
    end
    

    def getSourceId : Int32
        return @j_TOUCH_BUTTON_SOURCE_ID
    end
    

    def getGameKeyEvent : GameKeyEvent?
        return @gameKeyEvent
    end
end

