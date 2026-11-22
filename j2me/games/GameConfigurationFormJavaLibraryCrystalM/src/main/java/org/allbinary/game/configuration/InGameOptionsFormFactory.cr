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

class InGameOptionsFormFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_SINGLETON : CommandForm? = nil

    def jf_SINGLETON : CommandForm?
        @j_SINGLETON
    end

    def jf_SINGLETON=(value : CommandForm?) : CommandForm?
        @j_SINGLETON = value
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
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : InGameOptionsFormFactory?
        if InGameOptionsFormFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            InGameOptionsFormFactory.jst_instance = InGameOptionsFormFactory.new.jinit_InGameOptionsFormFactory()
        end
        return JR.cast(InGameOptionsFormFactory.jst_instance, InGameOptionsFormFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_InGameOptionsFormFactory : Nil
    @logUtil = LogUtil.getInstance()
    @j_SINGLETON = CommandForm.getNullCommandForm()
    end

    def jinit_InGameOptionsFormFactory : self
        jfields_InGameOptionsFormFactory()
        self
    end
    

    def init(commandListener : CommandListener?, initInterface : Init?, title : String, backgrounBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : Nil
        begin
            if @j_SINGLETON == CommandForm.getNullCommandForm()
                initInterface.not_nil!.init()
                @j_SINGLETON = InGameOptionsForm.new.jinit_InGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_INIT, e)
            else
                raise jex1
            end
        end
    end
    

    def get : CommandForm?
        return @j_SINGLETON
    end
end

