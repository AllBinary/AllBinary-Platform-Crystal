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
# package org.allbinary.game.midlet

class GameMidletEventHandler < BasicEventHandler

    @@jst_gameKeyEventHandler : GameMidletEventHandler? = nil

    def self.jst_gameKeyEventHandler : GameMidletEventHandler?
        jclinit
        @@jst_gameKeyEventHandler
    end

    def self.jst_gameKeyEventHandler=(value : GameMidletEventHandler?) : GameMidletEventHandler?
        jclinit
        @@jst_gameKeyEventHandler = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_gameKeyEventHandler = GameMidletEventHandler.new.jinit_GameMidletEventHandler()
    end
    

    def self.getInstance : GameMidletEventHandler?
        return GameMidletEventHandler.jst_gameKeyEventHandler
    end
    

    def jinit_GameMidletEventHandler : self
        jinit_BasicEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        gameMidletEventListener : GameMidletEventListener? = JR.cast(eventListenerInterface, GameMidletEventListener)
        gameMidletEventListener.not_nil!.onGameEnd(eventObject)
    end
end

