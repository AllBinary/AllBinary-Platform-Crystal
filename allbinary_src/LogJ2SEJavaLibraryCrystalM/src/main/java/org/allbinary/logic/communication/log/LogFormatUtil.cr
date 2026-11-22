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

class LogFormatUtil < JObject
    @timeStampUtil : TimeStampUtil? = nil

    def jf_timeStampUtil : TimeStampUtil?
        @timeStampUtil
    end

    def jf_timeStampUtil=(value : TimeStampUtil?) : TimeStampUtil?
        @timeStampUtil = value
    end
    @commonSeps : CommonSeps? = nil

    def jf_commonSeps : CommonSeps?
        @commonSeps
    end

    def jf_commonSeps=(value : CommonSeps?) : CommonSeps?
        @commonSeps = value
    end
    @j_NONE : String = ""

    def jf_NONE : String
        @j_NONE
    end

    def jf_NONE=(value : String) : String
        @j_NONE = value
    end
    @j_LOG_ERROR : String = ""

    def jf_LOG_ERROR : String
        @j_LOG_ERROR
    end

    def jf_LOG_ERROR=(value : String) : String
        @j_LOG_ERROR = value
    end
    @j_EMPTY : String = ""

    def jf_EMPTY : String
        @j_EMPTY
    end

    def jf_EMPTY=(value : String) : String
        @j_EMPTY = value
    end
    @j_STACK_TRACE : String = ""

    def jf_STACK_TRACE : String
        @j_STACK_TRACE
    end

    def jf_STACK_TRACE=(value : String) : String
        @j_STACK_TRACE = value
    end
    @j_TIME : String = ""

    def jf_TIME : String
        @j_TIME
    end

    def jf_TIME=(value : String) : String
        @j_TIME = value
    end
    @j_CLASS_NAME : String = ""

    def jf_CLASS_NAME : String
        @j_CLASS_NAME
    end

    def jf_CLASS_NAME=(value : String) : String
        @j_CLASS_NAME = value
    end
    @j_FUNCTION_CALL : String = ""

    def jf_FUNCTION_CALL : String
        @j_FUNCTION_CALL
    end

    def jf_FUNCTION_CALL=(value : String) : String
        @j_FUNCTION_CALL = value
    end
    @j_SPECIAL_MESSAGE : String = ""

    def jf_SPECIAL_MESSAGE : String
        @j_SPECIAL_MESSAGE
    end

    def jf_SPECIAL_MESSAGE=(value : String) : String
        @j_SPECIAL_MESSAGE = value
    end
    @stringUtil : StringUtil? = nil

    def jf_stringUtil : StringUtil?
        @stringUtil
    end

    def jf_stringUtil=(value : StringUtil?) : StringUtil?
        @stringUtil = value
    end
    @exceptionUtil : ExceptionUtil? = nil

    def jf_exceptionUtil : ExceptionUtil?
        @exceptionUtil
    end

    def jf_exceptionUtil=(value : ExceptionUtil?) : ExceptionUtil?
        @exceptionUtil = value
    end
    @nullUtil : NullUtil? = nil

    def jf_nullUtil : NullUtil?
        @nullUtil
    end

    def jf_nullUtil=(value : NullUtil?) : NullUtil?
        @nullUtil = value
    end

    @@jst_instance : LogFormatUtil? = nil

    def self.jst_instance : LogFormatUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LogFormatUtil?) : LogFormatUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LogFormatUtil.new.jinit_LogFormatUtil()
    end
    

    def self.getInstance : LogFormatUtil?
        return LogFormatUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LogFormatUtil : Nil
    @timeStampUtil = TimeStampUtil.getInstance()
    @commonSeps = CommonSeps.getInstance()
    @j_NONE = "None"
    @j_LOG_ERROR = "\nLog-Error: "
    @j_EMPTY = "Empty"
    @j_STACK_TRACE = "\nStack Trace: "
    @j_TIME = "Time: "
    @j_CLASS_NAME = @commonSeps.not_nil!.jf_SPACE
    @j_FUNCTION_CALL = CommonLabels.getInstance().not_nil!.jf_COLON_SEP
    @j_SPECIAL_MESSAGE = "> "
    @stringUtil = StringUtil.getInstance()
    @exceptionUtil = ExceptionUtil.getInstance()
    @nullUtil = NullUtil.getInstance()
    end
    

    def jinit_LogFormatUtil : self
        jfields_LogFormatUtil()
        self
    end
    

    def get(className : String, functionName : String, specialMessage : String, exception : JAny) : String
        stringBuffer : StringMaker? = self.getF(className, functionName)
        stringBuffer.not_nil!.append(self.getO(exception))
        stringBuffer.not_nil!.append(@j_SPECIAL_MESSAGE)
        stringBuffer.not_nil!.append(specialMessage)
        stringBuffer.not_nil!.append(@commonSeps.not_nil!.jf_NEW_LINE)
        return stringBuffer.not_nil!.toString()
    end
    

    def getS(className : String, functionName : String, specialMessage : String) : String
        stringBuffer : StringMaker? = self.getF(className, functionName)
        stringBuffer.not_nil!.append(@j_SPECIAL_MESSAGE)
        stringBuffer.not_nil!.append(specialMessage)
        stringBuffer.not_nil!.append(@commonSeps.not_nil!.jf_NEW_LINE)
        return stringBuffer.not_nil!.toString()
    end
    

    def getF(className : String, functionName : String) : StringMaker?
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(@j_TIME)
        stringBuffer.not_nil!.append(@timeStampUtil.not_nil!.getAsString())
        stringBuffer.not_nil!.append(@j_CLASS_NAME)
        stringBuffer.not_nil!.append(className)
        stringBuffer.not_nil!.append(@j_FUNCTION_CALL)
        stringBuffer.not_nil!.append(functionName)
        return stringBuffer
    end
    

    def getO(exception : JAny) : String
        if exception != @nullUtil.not_nil!.jf_NULL_OBJECT
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append(@j_LOG_ERROR)
            exceptionAsString : String = exception.not_nil!.toString()
            stringBuffer.not_nil!.append(exceptionAsString)
            stringBuffer.not_nil!.append(@j_STACK_TRACE)
            if exception != @nullUtil.not_nil!.jf_NULL_OBJECT
                stringBuffer.not_nil!.append(@exceptionUtil.not_nil!.getStackTrace(JR.cast(exception, JThrowable)))
            else
                stringBuffer.not_nil!.append(@stringUtil.not_nil!.jf_NULL_STRING)
            end
            return stringBuffer.not_nil!.toString()
        else
            return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
        end
        return ""
    end
end

