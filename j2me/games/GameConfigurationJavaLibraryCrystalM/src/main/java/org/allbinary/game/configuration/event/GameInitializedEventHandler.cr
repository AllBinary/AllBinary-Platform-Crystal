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
# package org.allbinary.game.configuration.event

class GameInitializedEventHandler < BasicEventHandler

    @@jst_gameKeyEventHandler : GameInitializedEventHandler? = nil

    def self.jst_gameKeyEventHandler : GameInitializedEventHandler?
        jclinit
        @@jst_gameKeyEventHandler
    end

    def self.jst_gameKeyEventHandler=(value : GameInitializedEventHandler?) : GameInitializedEventHandler?
        jclinit
        @@jst_gameKeyEventHandler = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_gameKeyEventHandler = GameInitializedEventHandler.new.jinit_GameInitializedEventHandler()
    end
    

    def self.getInstance : GameInitializedEventHandler?
        return GameInitializedEventHandler.jst_gameKeyEventHandler
    end
    

    def jinit_GameInitializedEventHandler : self
        jinit_BasicEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        gameInitializedListenerInterface : GameInitializedListenerInterface? = (JR.cast(eventListenerInterface, GameInitializedListenerInterface))
        gameInitializedListenerInterface.not_nil!.onGameInitialized(JR.cast(eventObject, GameInitializedEvent))
    end
end

