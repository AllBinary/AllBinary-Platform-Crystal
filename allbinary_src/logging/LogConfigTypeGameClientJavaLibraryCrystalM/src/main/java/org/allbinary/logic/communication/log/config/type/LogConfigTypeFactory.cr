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
    end
    

    def jinit_LogConfigTypeFactory : self
        jfields_LogConfigTypeFactory()
        LogConfigTypes.jst_LOGGING.not_nil!.add(@j_OS)
        LogConfigTypes.jst_LOGGING.not_nil!.add(@j_FACTORYERROR)
        self
    end
end

