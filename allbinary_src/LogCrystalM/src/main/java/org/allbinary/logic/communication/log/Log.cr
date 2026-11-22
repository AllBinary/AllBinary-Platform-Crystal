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

class Log < JObject
    @logFormatUtil : LogFormatUtil? = nil

    def jf_logFormatUtil : LogFormatUtil?
        @logFormatUtil
    end

    def jf_logFormatUtil=(value : LogFormatUtil?) : LogFormatUtil?
        @logFormatUtil = value
    end
    @specialMessage : String = ""

    def jf_specialMessage : String
        @specialMessage
    end

    def jf_specialMessage=(value : String) : String
        @specialMessage = value
    end
    @anyType : JAny = nil

    def jf_anyType : JAny
        @anyType
    end

    def jf_anyType=(value : JAny) : JAny
        @anyType = value
    end
    @functionName : String = ""

    def jf_functionName : String
        @functionName
    end

    def jf_functionName=(value : String) : String
        @functionName = value
    end
    @exception : JAny = nil

    def jf_exception : JAny
        @exception
    end

    def jf_exception=(value : JAny) : JAny
        @exception = value
    end

    # Java field initializers run after the super constructor
    def jfields_Log : Nil
    @logFormatUtil = LogFormatUtil.getInstance()
    
    
    
    
    end
    

    def jinit_Log(specialMessage : String, anyType : JAny, functionName : String, exception : JAny) : self
        jfields_Log()
        @specialMessage = specialMessage
        @anyType = anyType
        @functionName = functionName
        @exception = exception
        self
    end
    

    def getSpecialMessage : String
        return @specialMessage
    end
    

    def getObject : JAny
        return @anyType
    end
    

    def getFunctionName : String
        return @functionName
    end
    

    def getThrowable : JAny
        return @exception
    end
    

    def toString : String
        className : String = CommonStrings.getInstance().not_nil!.jf_EMPTY
        clazz : String = JR.jclass(@anyType)
        if !(clazz).empty?
            className = clazz
        end
        return @logFormatUtil.not_nil!.get(className, @functionName, @specialMessage, @exception)
    end
end

