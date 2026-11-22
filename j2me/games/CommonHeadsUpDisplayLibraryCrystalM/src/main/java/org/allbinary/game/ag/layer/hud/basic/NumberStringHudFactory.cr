# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.ag.layer.hud.basic

class NumberStringHudFactory < JObject
    @j_NULL_NUMBER_STRING_HUD : NumberStringHud? = nil

    def jf_NULL_NUMBER_STRING_HUD : NumberStringHud?
        @j_NULL_NUMBER_STRING_HUD
    end

    def jf_NULL_NUMBER_STRING_HUD=(value : NumberStringHud?) : NumberStringHud?
        @j_NULL_NUMBER_STRING_HUD = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance()
    end
    

    def self.getInstance : NumberStringHudFactory?
        if NumberStringHudFactory.jst_instance == NullUtil.getInstance()
            NumberStringHudFactory.jst_instance = NumberStringHudFactory.new.jinit_NumberStringHudFactory()
        end
        return JR.cast(NumberStringHudFactory.jst_instance, NumberStringHudFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_NumberStringHudFactory : Nil
    @j_NULL_NUMBER_STRING_HUD = self.createHud()
    end

    def jinit_NumberStringHudFactory : self
        jfields_NumberStringHudFactory()
        self
    end
    

    def createHud : NumberStringHud?
        begin
            return NumberStringHud.new.jinit_NumberStringHud(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, 9, BasicHudFactory.getInstance().not_nil!.jf_ABSOLUTE, 1, 0, BasicColorFactory.getInstance().not_nil!.jf_NULL_COLOR)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            logUtil : LogUtil? = LogUtil.getInstance()
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_CONSTRUCTOR, e)
            raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
            else
                raise jex1
            end
        end
        return nil
    end
end

