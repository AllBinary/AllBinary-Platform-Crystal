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
# package org.allbinary.globals

class Globals < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_instance : Globals? = nil

    def self.jst_instance : Globals?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : Globals?) : Globals?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = Globals.new.jinit_Globals()
    end
    

    def self.getInstance : Globals?
        return Globals.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_Globals : Nil
    @logUtil = LogUtil.getInstance()
    end
    

    def jinit_Globals : self
        jfields_Globals()
        self
    end
    

    def init(classLoader : JClassLoader?, pathString : String) : Nil
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        appUrlGlobals : AppUrlGlobals? = AppUrlGlobals.new.jinit_AppUrlGlobals()
        appUrlGlobals.not_nil!.setWebappPath(pathString)
        URLGLOBALS.init(appUrlGlobals)
        WebappClassLoaderInfo.setLoader(classLoader)
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Setting Up AllBinary System Configuration Args: ")
        stringBuffer.not_nil!.append(pathString)
        stringBuffer.not_nil!.append(" ClassLoader: ")
        stringBuffer.not_nil!.append(JR.jclass(classLoader))
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, commonStrings.not_nil!.jf_INIT)
        stringValidationUtil : StringValidationUtil? = StringValidationUtil.getInstance()
        if stringValidationUtil.not_nil!.isEmpty(pathString)
            stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
            stringBuffer.not_nil!.append("No Path Provided. Using Process Path: ")
            stringBuffer.not_nil!.append(pathString)
            stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
            stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_EQUALS)
            stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
            stringBuffer.not_nil!.append(URLGLOBALS.getWebappPath())
            @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, commonStrings.not_nil!.jf_INIT)
        end
        stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
        stringBuffer.not_nil!.append("Webapp Path Set To: ")
        stringBuffer.not_nil!.append(URLGLOBALS.getWebappPath())
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, commonStrings.not_nil!.jf_INIT)
    end
end

