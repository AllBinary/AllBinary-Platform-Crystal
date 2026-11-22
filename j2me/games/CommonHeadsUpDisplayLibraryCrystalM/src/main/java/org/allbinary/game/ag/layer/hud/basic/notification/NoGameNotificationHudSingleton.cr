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

class NoGameNotificationHudSingleton < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @gameNotificationHud : GameNotificationHud? = nil

    def jf_gameNotificationHud : GameNotificationHud?
        @gameNotificationHud
    end

    def jf_gameNotificationHud=(value : GameNotificationHud?) : GameNotificationHud?
        @gameNotificationHud = value
    end

    @@jst_instance : NoGameNotificationHudSingleton? = nil

    def self.jst_instance : NoGameNotificationHudSingleton?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NoGameNotificationHudSingleton?) : NoGameNotificationHudSingleton?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NoGameNotificationHudSingleton.new.jinit_NoGameNotificationHudSingleton()
    end
    

    def self.getInstance : NoGameNotificationHudSingleton?
        return NoGameNotificationHudSingleton.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_NoGameNotificationHudSingleton : Nil
    @logUtil = LogUtil.getInstance()
    @gameNotificationHud = GameNotificationHud.jst_NULL_GAME_NOTIFICATION
    end
    

    def jinit_NoGameNotificationHudSingleton : self
        jfields_NoGameNotificationHudSingleton()
        begin
            basicHudFactory : BasicHudFactory? = BasicHudFactory.getInstance()
            @gameNotificationHud = NoGameGameNotificationHud.new.jinit_NoGameGameNotificationHud()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_CONSTRUCTOR, e)
            else
                raise jex1
            end
        end
        self
    end
    

    def getGameNotificationHud : GameNotificationHud?
        return @gameNotificationHud
    end
end

