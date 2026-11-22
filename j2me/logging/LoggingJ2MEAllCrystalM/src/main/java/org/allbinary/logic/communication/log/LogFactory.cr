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

class LogFactory < JObject
    

    def self.getInstanceD : Log?
        stringUtil : StringUtil? = StringUtil.getInstance()
        nullUtil : NullUtil? = NullUtil.getInstance()
        return Log.new.jinit_Log(stringUtil.not_nil!.jf_EMPTY_STRING, nullUtil.not_nil!.jf_NULL_OBJECT, stringUtil.not_nil!.jf_EMPTY_STRING, nullUtil.not_nil!.jf_NULL_OBJECT)
    end
    

    def self.getInstanceNoF(specialMessage : String, anyType : JAny, exception : JAny) : Log?
        return Log.new.jinit_Log(specialMessage, anyType, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, exception)
    end
    

    def self.getInstance(specialMessage : String, anyType : JAny, functionName : String, exception : JAny) : Log?
        return Log.new.jinit_Log(specialMessage, anyType, functionName, exception)
    end
    

    def self.getInstanceF(specialMessage : String, anyType : JAny, functionName : String) : Log?
        nullUtil : NullUtil? = NullUtil.getInstance()
        return Log.new.jinit_Log(specialMessage, anyType, functionName, nullUtil.not_nil!.jf_NULL_OBJECT)
    end

    def jinit_LogFactory : self
        self
    end
end

