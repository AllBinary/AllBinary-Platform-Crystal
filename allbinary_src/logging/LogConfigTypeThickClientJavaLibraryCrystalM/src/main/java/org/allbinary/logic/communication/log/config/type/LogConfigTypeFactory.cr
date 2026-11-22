# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.logic.communication.log.config.type

class LogConfigTypeFactory < JObject
    @j_NO_DESCRIPTION : String = ""

    def jf_NO_DESCRIPTION : String
        @j_NO_DESCRIPTION
    end

    def jf_NO_DESCRIPTION=(value : String) : String
        @j_NO_DESCRIPTION = value
    end
    @j_OS : LogConfigType? = nil

    def jf_OS : LogConfigType?
        @j_OS
    end

    def jf_OS=(value : LogConfigType?) : LogConfigType?
        @j_OS = value
    end
    @j_FACTORYERROR : LogConfigType? = nil

    def jf_FACTORYERROR : LogConfigType?
        @j_FACTORYERROR
    end

    def jf_FACTORYERROR=(value : LogConfigType?) : LogConfigType?
        @j_FACTORYERROR = value
    end
    @j_FILE : LogConfigType? = nil

    def jf_FILE : LogConfigType?
        @j_FILE
    end

    def jf_FILE=(value : LogConfigType?) : LogConfigType?
        @j_FILE = value
    end
    @j_FILEERROR : LogConfigType? = nil

    def jf_FILEERROR : LogConfigType?
        @j_FILEERROR
    end

    def jf_FILEERROR=(value : LogConfigType?) : LogConfigType?
        @j_FILEERROR = value
    end
    @j_IDLOGGING : LogConfigType? = nil

    def jf_IDLOGGING : LogConfigType?
        @j_IDLOGGING
    end

    def jf_IDLOGGING=(value : LogConfigType?) : LogConfigType?
        @j_IDLOGGING = value
    end
    @j_REPLACE : LogConfigType? = nil

    def jf_REPLACE : LogConfigType?
        @j_REPLACE
    end

    def jf_REPLACE=(value : LogConfigType?) : LogConfigType?
        @j_REPLACE = value
    end
    @j_REPLACE_INFO : LogConfigType? = nil

    def jf_REPLACE_INFO : LogConfigType?
        @j_REPLACE_INFO
    end

    def jf_REPLACE_INFO=(value : LogConfigType?) : LogConfigType?
        @j_REPLACE_INFO = value
    end
    @j_REPLACEERROR : LogConfigType? = nil

    def jf_REPLACEERROR : LogConfigType?
        @j_REPLACEERROR
    end

    def jf_REPLACEERROR=(value : LogConfigType?) : LogConfigType?
        @j_REPLACEERROR = value
    end

    @@jst_instance : LogConfigTypeFactory? = nil

    def self.jst_instance : LogConfigTypeFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LogConfigTypeFactory?) : LogConfigTypeFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LogConfigTypeFactory.new.jinit_LogConfigTypeFactory()
    end
    

    def self.getInstance : LogConfigTypeFactory?
        return LogConfigTypeFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LogConfigTypeFactory : Nil
    @j_NO_DESCRIPTION = "No Description"
    @j_OS = LogConfigType.new.jinit_LogConfigType("Operating System", @j_NO_DESCRIPTION)
    @j_FACTORYERROR = LogConfigType.new.jinit_LogConfigType("Factory Error", @j_NO_DESCRIPTION)
    @j_FILE = LogConfigType.new.jinit_LogConfigType("File", @j_NO_DESCRIPTION)
    @j_FILEERROR = LogConfigType.new.jinit_LogConfigType("File Error", @j_NO_DESCRIPTION)
    @j_IDLOGGING = LogConfigType.new.jinit_LogConfigType("ID Logging", @j_NO_DESCRIPTION)
    @j_REPLACE = LogConfigType.new.jinit_LogConfigType("Replace", @j_NO_DESCRIPTION)
    @j_REPLACE_INFO = LogConfigType.new.jinit_LogConfigType("Replace Info", @j_NO_DESCRIPTION)
    @j_REPLACEERROR = LogConfigType.new.jinit_LogConfigType("Replace Error", @j_NO_DESCRIPTION)
    end
    

    def jinit_LogConfigTypeFactory : self
        jfields_LogConfigTypeFactory()
        LogConfigTypes.jst_LOGGING.not_nil!.add(@j_OS)
        LogConfigTypes.jst_LOGGING.not_nil!.add(@j_FACTORYERROR)
        self
    end
end

