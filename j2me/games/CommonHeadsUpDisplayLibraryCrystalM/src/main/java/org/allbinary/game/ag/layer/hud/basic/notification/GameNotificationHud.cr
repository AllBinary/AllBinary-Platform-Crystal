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
# package org.allbinary.game.ag.layer.hud.basic.notification

class GameNotificationHud < BasicHud
    include GameNotificationListenerInterface
    @j_METHOD_NAME : String = ""

    def jf_METHOD_NAME : String
        @j_METHOD_NAME
    end

    def jf_METHOD_NAME=(value : String) : String
        @j_METHOD_NAME = value
    end
    @lastGameNotificationEvent : GameNotificationEvent? = nil

    def jf_lastGameNotificationEvent : GameNotificationEvent?
        @lastGameNotificationEvent
    end

    def jf_lastGameNotificationEvent=(value : GameNotificationEvent?) : GameNotificationEvent?
        @lastGameNotificationEvent = value
    end

    @@jst_NULL_GAME_NOTIFICATION : GameNotificationHud? = nil

    def self.jst_NULL_GAME_NOTIFICATION : GameNotificationHud?
        jclinit
        @@jst_NULL_GAME_NOTIFICATION
    end

    def self.jst_NULL_GAME_NOTIFICATION=(value : GameNotificationHud?) : GameNotificationHud?
        jclinit
        @@jst_NULL_GAME_NOTIFICATION = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_GAME_NOTIFICATION = GameNotificationHud.new.jinit_GameNotificationHud(BasicHudFactory.getInstance().not_nil!.jf_TOPCENTER, BasicHudFactory.getInstance().not_nil!.jf_HORIZONTAL, 0, BasicColorFactory.getInstance().not_nil!.jf_RED)
    end

    # Java field initializers run after the super constructor
    def jfields_GameNotificationHud : Nil
    @j_METHOD_NAME = "onGameNotificationEvent"
    @lastGameNotificationEvent = GameNotification.jst_NULL_GAME_NOTIFICATION_EVENT
    end
    

    def jinit_GameNotificationHud(location : Int, direction : Int, bufferZone : Int, basicColor : BasicColor?) : self
        location = location.to_i32!
        direction = direction.to_i32!
        bufferZone = bufferZone.to_i32!
        jinit_BasicHud(location, direction, bufferZone, basicColor)
        jfields_GameNotificationHud()
        self
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onGameNotificationEvent(gameNotificationEvent : GameNotificationEvent?) : Nil
        if @lastGameNotificationEvent != gameNotificationEvent
            @lastGameNotificationEvent = gameNotificationEvent
            @logUtil.not_nil!.putF(gameNotificationEvent.not_nil!.getString(), self, @j_METHOD_NAME)
        end
        self.add(gameNotificationEvent.not_nil!.getString(), gameNotificationEvent.not_nil!.getSeconds(), gameNotificationEvent.not_nil!.getBasicColorP(), gameNotificationEvent.not_nil!.getPermanent())
    end
    

    def add(string : String, seconds : JInteger?, basicColor : BasicColor?, permanent : JBoolean?) : Nil
    end
    

    def processTick : Nil
    end
    

    def paint(graphics : Graphics?) : Nil
    end
    

    def clear : Nil
    end
end

