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
# package org.allbinary.business.error

class ErrorData < JObject
    @j_NAME : String = ""

    def jf_NAME : String
        @j_NAME
    end

    def jf_NAME=(value : String) : String
        @j_NAME = value
    end
    @j_TEXT : String = ""

    def jf_TEXT : String
        @j_TEXT
    end

    def jf_TEXT=(value : String) : String
        @j_TEXT = value
    end

    @@jst_instance : ErrorData? = nil

    def self.jst_instance : ErrorData?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ErrorData?) : ErrorData?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ErrorData.new.jinit_ErrorData()
    end
    

    def self.getInstance : ErrorData?
        return ErrorData.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ErrorData : Nil
    @j_NAME = "ERROR_NAME"
    @j_TEXT = "ERROR_TEXT"
    end
    

    def jinit_ErrorData : self
        jfields_ErrorData()
        self
    end
end

