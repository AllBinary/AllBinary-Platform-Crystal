#
# AllBinary Open License Version 1
# Copyright (c) 2022 AllBinary
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
# package org.allbinary.graphics.displayable.screen

class WebCommandProcessor < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @aboutCommandProcessor : AboutCommandProcessor? = nil

    def jf_aboutCommandProcessor : AboutCommandProcessor?
        @aboutCommandProcessor
    end

    def jf_aboutCommandProcessor=(value : AboutCommandProcessor?) : AboutCommandProcessor?
        @aboutCommandProcessor = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_instance : WebCommandProcessor? = nil

    def self.jst_instance : WebCommandProcessor?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : WebCommandProcessor?) : WebCommandProcessor?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = WebCommandProcessor.new.jinit_WebCommandProcessor()
    end
    

    def self.getInstance : WebCommandProcessor?
        return WebCommandProcessor.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_WebCommandProcessor : Nil
    @logUtil = LogUtil.getInstance()
    @aboutCommandProcessor = AboutCommandProcessor.getInstance()
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end

    def jinit_WebCommandProcessor : self
        jfields_WebCommandProcessor()
        self
    end
    

    def process(midletCommandListener : CommandListener?, command : Command?, canvas : Canvas?) : Nil
        begin
            if JDesktop.isDesktopSupported() && JDesktop.getDesktop().not_nil!.isSupported(JDesktop.jst_Action.not_nil!.jf_BROWSE)
                JDesktop.getDesktop().not_nil!.browse(JURI.new.jinit_JURI(JR.castString(@list.not_nil!.removeAt(0))))
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_PROCESS, e)
            else
                raise jex1
            end
        end
    end
end

