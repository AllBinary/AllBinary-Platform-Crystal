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
    

    def jinit_LogUtil : self
        self
    end
    

    def putP(log : Log?) : Nil
    end
    

    def putF(specialMessage : String, anyType : JAny, functionName : String) : Nil
    end
    

    def putFS(specialMessage : String, className : String, functionName : String) : Nil
    end
    

    def put(specialMessage : String, anyType : JAny, functionName : String, exception : JAny) : Nil
    end
end

