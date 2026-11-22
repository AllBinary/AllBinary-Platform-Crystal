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

    # Java field initializers run after the super constructor
    def jfields_GameKeyCompleteMotionGestureInputEvent : Nil
    @gameKey = GameKey.jst_NULL_GAME_KEY
    @gameKeyEvent = GameKeyEvent.jst_NONE
    end
    

    def jinit_GameKeyCompleteMotionGestureInputEvent(name : String, motionGestureInput : MotionGestureInput?, inputToGameKeyMapping : InputToGameKeyMapping?) : self
        jinit_CompleteMotionGestureInputEvent(name, motionGestureInput)
        jfields_GameKeyCompleteMotionGestureInputEvent()
        self
    end
    

    def getSourceId : Int32
        return 0
    end
    

    def update : Nil
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

