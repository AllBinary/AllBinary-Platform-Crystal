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
# package org.allbinary.logic.communication.http

class HttpData < JObject
    @j_EQUALS : String = ""

    def jf_EQUALS : String
        @j_EQUALS
    end

    def jf_EQUALS=(value : String) : String
        @j_EQUALS = value
    end
    @j_PARAM_SEP : String = ""

    def jf_PARAM_SEP : String
        @j_PARAM_SEP
    end

    def jf_PARAM_SEP=(value : String) : String
        @j_PARAM_SEP = value
    end
    @j_URL_PARAM_SEP : String = ""

    def jf_URL_PARAM_SEP : String
        @j_URL_PARAM_SEP
    end

    def jf_URL_PARAM_SEP=(value : String) : String
        @j_URL_PARAM_SEP = value
    end
    @j_URL_LABEL : String = ""

    def jf_URL_LABEL : String
        @j_URL_LABEL
    end

    def jf_URL_LABEL=(value : String) : String
        @j_URL_LABEL = value
    end

    @@jst_instance : HttpData? = nil

    def self.jst_instance : HttpData?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : HttpData?) : HttpData?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = HttpData.new.jinit_HttpData()
    end
    

    def self.getInstance : HttpData?
        return HttpData.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_HttpData : Nil
    
    
    
    @j_URL_LABEL = "Url: "
    end
    

    def jinit_HttpData : self
        jfields_HttpData()
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        @j_EQUALS = commonSeps.not_nil!.jf_EQUALS
        @j_PARAM_SEP = commonSeps.not_nil!.jf_AMPERSAND
        @j_URL_PARAM_SEP = commonSeps.not_nil!.jf_QUESTION
        self
    end
end

