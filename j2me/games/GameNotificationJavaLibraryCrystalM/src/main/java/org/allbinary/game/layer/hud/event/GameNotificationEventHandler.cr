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
# package org.allbinary.game.layer.hud.event

class GameNotificationEventHandler < BasicEventHandler
    @enabled : Bool = false

    def jf_enabled : Bool
        @enabled
    end

    def jf_enabled=(value : Bool) : Bool
        @enabled = value
    end

    @@jst_instance : GameNotificationEventHandler? = nil

    def self.jst_instance : GameNotificationEventHandler?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameNotificationEventHandler?) : GameNotificationEventHandler?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameNotificationEventHandler.new.jinit_GameNotificationEventHandler()
    end
    

    def self.getInstance : GameNotificationEventHandler?
        return GameNotificationEventHandler.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameNotificationEventHandler : Nil
    @enabled = true
    end
    

    def jinit_GameNotificationEventHandler : self
        jinit_BasicEventHandler()
        jfields_GameNotificationEventHandler()
        self
    end
    

    def removeAllListeners : Nil
        eventListenerInterface : EventListenerInterface? = NullEventListener.jst_NULL_EVENT_LISTENER
        list : BasicArrayList? = @eventListenerInterfaceList
        if list.not_nil!.size() > 0
            eventListenerInterface = JR.cast(list.not_nil!.jf_objectArray.not_nil![0], EventListenerInterface)
        end
        super()
        if eventListenerInterface != NullEventListener.jst_NULL_EVENT_LISTENER
            self.addListenerInterface(eventListenerInterface)
        end
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        if !@enabled
            return
        end
        gameNotificationListenerInterface : GameNotificationListenerInterface? = JR.cast(eventListenerInterface, GameNotificationListenerInterface)
        gameNotificationListenerInterface.not_nil!.onGameNotificationEvent(JR.cast(eventObject, GameNotificationEvent))
    end
end

