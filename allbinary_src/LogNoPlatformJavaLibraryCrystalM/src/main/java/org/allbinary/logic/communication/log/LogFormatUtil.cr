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
    

    def jinit_LogFormatUtil : self
        self
    end
    

    def get(className : String, functionName : String, specialMessage : String, exception : JAny) : String
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getS(className : String, functionName : String, specialMessage : String) : String
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getO(exception : JAny) : String
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
end

