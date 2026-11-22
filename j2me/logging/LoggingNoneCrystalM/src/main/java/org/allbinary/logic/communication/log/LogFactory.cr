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

    @@jst_LOG : Log? = nil

    def self.jst_LOG : Log?
        jclinit
        @@jst_LOG
    end

    def self.jst_LOG=(value : Log?) : Log?
        jclinit
        @@jst_LOG = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_LOG = Log.new.jinit_Log(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, NullUtil.getInstance().not_nil!.jf_NULL_OBJECT, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, NullUtil.getInstance().not_nil!.jf_NULL_OBJECT)
    end
    

    def self.getInstanceD : Log?
        stringUtil : StringUtil? = StringUtil.getInstance()
        nullUtil : NullUtil? = NullUtil.getInstance()
        return Log.new.jinit_Log(stringUtil.not_nil!.jf_EMPTY_STRING, nullUtil.not_nil!.jf_NULL_OBJECT, stringUtil.not_nil!.jf_EMPTY_STRING, nullUtil.not_nil!.jf_NULL_OBJECT)
    end
    

    def self.getInstance(specialMessage : String, anyType : JAny, functionName : String, exception : JAny) : Log?
        return LogFactory.jst_LOG
    end
    

    def self.getInstanceF(specialMessage : String, anyType : JAny, functionName : String) : Log?
        return LogFactory.jst_LOG
    end

    def jinit_LogFactory : self
        self
    end
end

