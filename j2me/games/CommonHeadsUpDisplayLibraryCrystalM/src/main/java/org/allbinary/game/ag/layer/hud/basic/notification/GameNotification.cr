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

class GameNotification < JObject
    @stringList : BasicArrayList? = nil

    def jf_stringList : BasicArrayList?
        @stringList
    end

    def jf_stringList=(value : BasicArrayList?) : BasicArrayList?
        @stringList = value
    end
    @timeList : BasicArrayList? = nil

    def jf_timeList : BasicArrayList?
        @timeList
    end

    def jf_timeList=(value : BasicArrayList?) : BasicArrayList?
        @timeList = value
    end
    @colorList : BasicArrayList? = nil

    def jf_colorList : BasicArrayList?
        @colorList
    end

    def jf_colorList=(value : BasicArrayList?) : BasicArrayList?
        @colorList = value
    end

    @@jst_NULL_GAME_NOTIFICATION_EVENT : GameNotificationEvent? = nil

    def self.jst_NULL_GAME_NOTIFICATION_EVENT : GameNotificationEvent?
        jclinit
        @@jst_NULL_GAME_NOTIFICATION_EVENT
    end

    def self.jst_NULL_GAME_NOTIFICATION_EVENT=(value : GameNotificationEvent?) : GameNotificationEvent?
        jclinit
        @@jst_NULL_GAME_NOTIFICATION_EVENT = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_GAME_NOTIFICATION_EVENT = GameNotificationEvent.new.jinit_GameNotificationEvent(NullUtil.getInstance().not_nil!.jf_NULL_OBJECT, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, JInteger.new.jinit_JInteger(0), BasicColorFactory.getInstance().not_nil!.jf_RED, BooleanFactory.getInstance().not_nil!.jf_FALSE)
    end

    # Java field initializers run after the super constructor
    def jfields_GameNotification : Nil
    @stringList = BasicArrayListD.new.jinit_BasicArrayListD()
    @timeList = BasicArrayListD.new.jinit_BasicArrayListD()
    @colorList = BasicArrayListD.new.jinit_BasicArrayListD()
    end

    def jinit_GameNotification : self
        jfields_GameNotification()
        self
    end
    

    def add(string : String, seconds : JInteger?, basicColor : BasicColor?) : Nil
        if !@stringList.not_nil!.contains(string)
            @stringList.not_nil!.add(string)
            @timeList.not_nil!.add(seconds)
            @colorList.not_nil!.add(basicColor)
        end
    end
    

    def clear : Nil
        @stringList.not_nil!.clear()
        @timeList.not_nil!.clear()
        @colorList.not_nil!.clear()
    end
    

    def getSize : Int32
        return @stringList.not_nil!.size()
    end
end

