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
# package org.allbinary.game.configuration.feature

class GameFeatureItemCommandListener < JObject
    include ItemCommandListener
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @gameOptionsForm : GameOptionsForm? = nil

    def jf_gameOptionsForm : GameOptionsForm?
        @gameOptionsForm
    end

    def jf_gameOptionsForm=(value : GameOptionsForm?) : GameOptionsForm?
        @gameOptionsForm = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameFeatureItemCommandListener : Nil
    @logUtil = LogUtil.getInstance()
    
    end
    

    def jinit_GameFeatureItemCommandListener(gameOptionsForm : GameOptionsForm?) : self
        jfields_GameFeatureItemCommandListener()
        @gameOptionsForm = gameOptionsForm
        self
    end
    

    def commandAction(command : Command?, item : Item?) : Nil
        begin
            itemLabel : String = item.not_nil!.getLabel()
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_ITEM_LABEL).not_nil!.append(itemLabel).not_nil!.toString(), self, MidletStrings.getInstance().not_nil!.jf_COMMAND_ACTION)
            if (item).is_a?(GameConfigurationGauge)
                GameConfigurationUtil.getInstance().not_nil!.change(@gameOptionsForm, JR.cast(item, GameConfigurationGauge))
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, MidletStrings.getInstance().not_nil!.jf_COMMAND_ACTION, e)
            else
                raise jex1
            end
        end
    end
end

