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
# package org.allbinary.logic.communication.log

class LogUtil < JObject
    @logFormatUtil : LogFormatUtil? = nil

    def jf_logFormatUtil : LogFormatUtil?
        @logFormatUtil
    end

    def jf_logFormatUtil=(value : LogFormatUtil?) : LogFormatUtil?
        @logFormatUtil = value
    end
    @j_LOG_SUCCESS : String = ""

    def jf_LOG_SUCCESS : String
        @j_LOG_SUCCESS
    end

    def jf_LOG_SUCCESS=(value : String) : String
        @j_LOG_SUCCESS = value
    end

    @@jst_instance : LogUtil? = nil

    def self.jst_instance : LogUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LogUtil?) : LogUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LogUtil.new.jinit_LogUtil()
    end
    

    def self.getInstance : LogUtil?
        return LogUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LogUtil : Nil
    @logFormatUtil = LogFormatUtil.getInstance()
    @j_LOG_SUCCESS = "org.allbinary: "
    end
    

    def jinit_LogUtil : self
        jfields_LogUtil()
        self
    end
    

    def putL(log : Log?) : Nil
        specialMessage : String = log.not_nil!.getSpecialMessage()
        anyType : JAny = log.not_nil!.getObject()
        functionName : String = log.not_nil!.getFunctionName()
        exception : JAny = log.not_nil!.getThrowable()
        self.put(specialMessage, anyType, functionName, exception)
    end
    

    def putF(specialMessage : String, anyType : JAny, functionName : String) : Nil
        className : String = CommonStrings.getInstance().not_nil!.jf_EMPTY
        if !(JR.jclass(anyType)).empty?
            className = JR.newString(StringMaker.new.jinit_StringMaker().not_nil!.append(JR.jclass(anyType)).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_COLON).not_nil!.append(JInteger.toHexString(TsUtil.getInstance().not_nil!.hashCode(anyType))).not_nil!.toString())
        end
        message : String = @logFormatUtil.not_nil!.getS(className, functionName, specialMessage)
        JSystem.out_print(@j_LOG_SUCCESS)
        JSystem.out_println(message)
    end
    

    def putFS(specialMessage : String, className : String, functionName : String) : Nil
        message : String = @logFormatUtil.not_nil!.getS(className, functionName, specialMessage)
        JSystem.out_print(@j_LOG_SUCCESS)
        JSystem.out_println(message)
    end
    

    def put(specialMessage : String, anyType : JAny, functionName : String, exception : JAny) : Nil
        className : String = CommonStrings.getInstance().not_nil!.jf_EMPTY
        if !(JR.jclass(anyType)).empty?
            hashCodeValue : Int32 = TsUtil.getInstance().not_nil!.hashCode(anyType)
            hexString : String = JInteger.toHexString(hashCodeValue)
            className = JR.newString(StringMaker.new.jinit_StringMaker().not_nil!.append(JR.jclass(anyType)).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_COLON).not_nil!.append(hexString).not_nil!.toString())
        end
        message : String = @logFormatUtil.not_nil!.get(className, functionName, specialMessage, exception)
        JSystem.out_print(@j_LOG_SUCCESS)
        JSystem.out_println(message)
    end
end

