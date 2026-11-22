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

class GameKeyCompleteMotionGestureInputEvent < CompleteMotionGestureInputEvent
    include GameKeyEventSourceInterface
    @gameKeyEventFactory : GameKeyEventFactory? = nil

    def jf_gameKeyEventFactory : GameKeyEventFactory?
        @gameKeyEventFactory
    end

    def jf_gameKeyEventFactory=(value : GameKeyEventFactory?) : GameKeyEventFactory?
        @gameKeyEventFactory = value
    end
    @j_SOURCE_ID : Int32 = 0

    def jf_SOURCE_ID : Int32
        @j_SOURCE_ID
    end

    def jf_SOURCE_ID=(value : Int32) : Int32
        @j_SOURCE_ID = value
    end
    @gameKey : GameKey? = nil

    def jf_gameKey : GameKey?
        @gameKey
    end

    def jf_gameKey=(value : GameKey?) : GameKey?
        @gameKey = value
    end
    @gameKeyEvent : GameKeyEvent? = nil

    def jf_gameKeyEvent : GameKeyEvent?
        @gameKeyEvent
    end

    def jf_gameKeyEvent=(value : GameKeyEvent?) : GameKeyEvent?
        @gameKeyEvent = value
    end
    @inputToGameKeyMapping : InputToGameKeyMapping? = nil

    def jf_inputToGameKeyMapping : InputToGameKeyMapping?
        @inputToGameKeyMapping
    end

    def jf_inputToGameKeyMapping=(value : InputToGameKeyMapping?) : InputToGameKeyMapping?
        @inputToGameKeyMapping = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameKeyCompleteMotionGestureInputEvent : Nil
    @gameKeyEventFactory = GameKeyEventFactory.getInstance()
    @j_SOURCE_ID = @gameKeyEventFactory.not_nil!.jf_MOTION_GESTURE_SOURCE_ID
    @gameKey = GameKey.jst_NULL_GAME_KEY
    @gameKeyEvent = GameKeyEvent.jst_NONE
    
    end
    

    def jinit_GameKeyCompleteMotionGestureInputEvent(name : String, motionGestureInput : MotionGestureInput?, inputToGameKeyMapping : InputToGameKeyMapping?) : self
        jinit_CompleteMotionGestureInputEvent(name, motionGestureInput)
        jfields_GameKeyCompleteMotionGestureInputEvent()
        @inputToGameKeyMapping = inputToGameKeyMapping
        GameKeyCompleteMotionGestureInputEventFactory.getInstance().not_nil!.add(self)
        self.update()
        self
    end
    

    def getSourceId : Int32
        return @j_SOURCE_ID
    end
    

    def update : Nil
        begin
            self.setGameKey(@inputToGameKeyMapping.not_nil!.getInstance(self.getMotionGestureInput().not_nil!.getId()))
            self.setGameKeyEvent(@gameKeyEventFactory.not_nil!.getInstanceForInput(self, self.getGameKey()))
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
    

    def setGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
        @gameKeyEvent = gameKeyEvent
    end
    

    def getGameKeyEvent : GameKeyEvent?
        return @gameKeyEvent
    end
    

    def setGameKey(gameKey : GameKey?) : Nil
        @gameKey = gameKey
    end
    

    def getGameKey : GameKey?
        return @gameKey
    end
end

