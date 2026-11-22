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

class PlayerGameInput < GameInput
    include GameKeyEventListenerInterface
    @gameInputStrings : GameInputStrings? = nil

    def jf_gameInputStrings : GameInputStrings?
        @gameInputStrings
    end

    def jf_gameInputStrings=(value : GameInputStrings?) : GameInputStrings?
        @gameInputStrings = value
    end
    @playerInputId : Int32 = 0

    def jf_playerInputId : Int32
        @playerInputId
    end

    def jf_playerInputId=(value : Int32) : Int32
        @playerInputId = value
    end

    # Java field initializers run after the super constructor
    def jfields_PlayerGameInput : Nil
    @gameInputStrings = GameInputStrings.getInstance()
    
    end
    

    def jinit_PlayerGameInput(gameKeyEventList : BasicArrayList?, removalGameKeyEventList : BasicArrayList?, playerInputId : Int) : self
        playerInputId = playerInputId.to_i32!
        jinit_GameInput(gameKeyEventList, removalGameKeyEventList)
        jfields_PlayerGameInput()
        @playerInputId = playerInputId
        self
    end
    

    def onPressGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
        self.add(gameKeyEvent)
        self.addForRemoval(gameKeyEvent)
    end
    

    def onDownGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
        self.add(gameKeyEvent)
    end
    

    def onDownKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
        self.add(gameKeyEvent)
        self.addForRemoval(gameKeyEvent)
    end
    

    def onDownKey(gameKeyEvent : JInteger?) : Nil
        PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL).not_nil!.append(gameKeyEvent.not_nil!.toString()).not_nil!.toString(), self, @gameInputStrings.not_nil!.jf_ON_DOWN_GAME_KEY)
    end
    

    def onUpGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
        self.addForRemoval(gameKeyEvent)
    end
    

    def onUpKeyEvent(gameKeyEvent : JInteger?) : Nil
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def getPlayerInputId : Int32
        return @playerInputId
    end
end

