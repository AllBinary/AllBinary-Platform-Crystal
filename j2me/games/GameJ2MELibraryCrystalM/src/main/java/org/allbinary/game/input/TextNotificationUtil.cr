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

class TextNotificationUtil < JObject
    @j_TWO : JInteger? = nil

    def jf_TWO : JInteger?
        @j_TWO
    end

    def jf_TWO=(value : JInteger?) : JInteger?
        @j_TWO = value
    end
    @j_FALSE : JBoolean? = nil

    def jf_FALSE : JBoolean?
        @j_FALSE
    end

    def jf_FALSE=(value : JBoolean?) : JBoolean?
        @j_FALSE = value
    end
    @gameNotificationEventHandler : GameNotificationEventHandler? = nil

    def jf_gameNotificationEventHandler : GameNotificationEventHandler?
        @gameNotificationEventHandler
    end

    def jf_gameNotificationEventHandler=(value : GameNotificationEventHandler?) : GameNotificationEventHandler?
        @gameNotificationEventHandler = value
    end

    @@jst_instance : TextNotificationUtil? = nil

    def self.jst_instance : TextNotificationUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TextNotificationUtil?) : TextNotificationUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TextNotificationUtil.new.jinit_TextNotificationUtil()
    end
    

    def self.getInstance : TextNotificationUtil?
        return TextNotificationUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_TextNotificationUtil : Nil
    @j_TWO = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(2)
    @j_FALSE = BooleanFactory.getInstance().not_nil!.jf_FALSE
    @gameNotificationEventHandler = GameNotificationEventHandler.getInstance()
    end

    def jinit_TextNotificationUtil : self
        jfields_TextNotificationUtil()
        self
    end
    

    def fireError(message : String) : Nil
        PrimaryPlayerQueueFactory.getInstance().not_nil!.add(ErrorSound.getInstance())
        self.fire(message)
    end
    

    def fireNew(message : String) : Nil
        PrimaryPlayerQueueFactory.getInstance().not_nil!.add(SelectSound.getInstance())
        self.fire(message)
    end
    

    def fireSuccess(message : String) : Nil
        PrimaryPlayerQueueFactory.getInstance().not_nil!.add(SelectSound.getInstance())
        self.fire(message)
    end
    

    def fire(message : String) : Nil
        gameNotificationEvent : GameNotificationEvent? = GameNotificationEvent.new.jinit_GameNotificationEvent(self, message, @j_TWO, BasicColorFactory.getInstance().not_nil!.jf_RED, @j_FALSE)
        @gameNotificationEventHandler.not_nil!.fireEvent(gameNotificationEvent)
    end
end

