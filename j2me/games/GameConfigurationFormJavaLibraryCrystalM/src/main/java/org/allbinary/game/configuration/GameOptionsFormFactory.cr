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
# package org.allbinary.game.configuration

class GameOptionsFormFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_instance : GameOptionsFormFactory? = nil

    def self.jst_instance : GameOptionsFormFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameOptionsFormFactory?) : GameOptionsFormFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameOptionsFormFactory.new.jinit_GameOptionsFormFactory()
    end
    

    def self.getInstance : GameOptionsFormFactory?
        return GameOptionsFormFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameOptionsFormFactory : Nil
    @logUtil = LogUtil.getInstance()
    end
    

    def jinit_GameOptionsFormFactory : self
        jfields_GameOptionsFormFactory()
        self
    end
    

    def init(commandListener : CommandListener?, title : String, backgrounBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : CommandForm?
        begin
            return GameOptionsForm.new.jinit_GameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_INIT, e)
            return CommandForm.getNullCommandForm()
            else
                raise jex1
            end
        end
        return nil
    end
end

