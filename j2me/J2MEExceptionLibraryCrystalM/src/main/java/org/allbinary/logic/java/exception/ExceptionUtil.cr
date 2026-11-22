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
# package org.allbinary.logic.java.exception

class ExceptionUtil < JObject
    @j_PRETEND_EXCEPTION : JException? = nil

    def jf_PRETEND_EXCEPTION : JException?
        @j_PRETEND_EXCEPTION
    end

    def jf_PRETEND_EXCEPTION=(value : JException?) : JException?
        @j_PRETEND_EXCEPTION = value
    end
    @j_NONE : String = ""

    def jf_NONE : String
        @j_NONE
    end

    def jf_NONE=(value : String) : String
        @j_NONE = value
    end

    @@jst_instance : ExceptionUtil? = nil

    def self.jst_instance : ExceptionUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ExceptionUtil?) : ExceptionUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ExceptionUtil.new.jinit_ExceptionUtil()
    end
    

    def self.getInstance : ExceptionUtil?
        return ExceptionUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ExceptionUtil : Nil
    @j_PRETEND_EXCEPTION = JException.new.jinit_JException("Not Really An Exception")
    @j_NONE = "No Stack Trace"
    end
    

    def jinit_ExceptionUtil : self
        jfields_ExceptionUtil()
        self
    end
    

    def getStackTrace(e : JThrowable?) : String
        bs : JByteArrayOutputStream? = JByteArrayOutputStream.new.jinit_JByteArrayOutputStream()
        e.not_nil!.printStackTrace()
        output : String = bs.not_nil!.toString()
        return JR.newString(output)
    end
end

