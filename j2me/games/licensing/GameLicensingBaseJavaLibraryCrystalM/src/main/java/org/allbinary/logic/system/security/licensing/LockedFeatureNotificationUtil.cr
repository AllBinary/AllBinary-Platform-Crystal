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
# package org.allbinary.logic.system.security.licensing

class LockedFeatureNotificationUtil < JObject
    @gameNotificationEvent : GameNotificationEvent? = nil

    def jf_gameNotificationEvent : GameNotificationEvent?
        @gameNotificationEvent
    end

    def jf_gameNotificationEvent=(value : GameNotificationEvent?) : GameNotificationEvent?
        @gameNotificationEvent = value
    end

    @@jst_instance : LockedFeatureNotificationUtil? = nil

    def self.jst_instance : LockedFeatureNotificationUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LockedFeatureNotificationUtil?) : LockedFeatureNotificationUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LockedFeatureNotificationUtil.new.jinit_LockedFeatureNotificationUtil()
    end
    

    def self.getInstance : LockedFeatureNotificationUtil?
        return LockedFeatureNotificationUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LockedFeatureNotificationUtil : Nil
    @gameNotificationEvent = GameNotificationEvent.new.jinit_GameNotificationEvent(self, LicenseStrings.getInstance().not_nil!.jf_LOCKED, SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(3), BasicColorFactory.getInstance().not_nil!.jf_RED, BooleanFactory.getInstance().not_nil!.jf_FALSE)
    end

    def jinit_LockedFeatureNotificationUtil : self
        jfields_LockedFeatureNotificationUtil()
        self
    end
    

    def fire : Nil
        PrimaryPlayerQueueFactory.getInstance().not_nil!.add(ErrorSound.getInstance())
        GameNotificationEventHandler.getInstance().not_nil!.fireEvent(@gameNotificationEvent)
    end
    

    def fireWithColor(basicColor : BasicColor?) : Nil
        PrimaryPlayerQueueFactory.getInstance().not_nil!.add(ErrorSound.getInstance())
        @gameNotificationEvent.not_nil!.setBasicColorP(basicColor)
        GameNotificationEventHandler.getInstance().not_nil!.fireEvent(@gameNotificationEvent)
    end
end

