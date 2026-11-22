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
# package org.allbinary.globals

class PATH_GLOBALS < JObject
    @j_DATA_PATH : String = ""

    def jf_DATA_PATH : String
        @j_DATA_PATH
    end

    def jf_DATA_PATH=(value : String) : String
        @j_DATA_PATH = value
    end
    @j_INIT_PATH : String = ""

    def jf_INIT_PATH : String
        @j_INIT_PATH
    end

    def jf_INIT_PATH=(value : String) : String
        @j_INIT_PATH = value
    end
    @j_VIEWS_PATH : String = ""

    def jf_VIEWS_PATH : String
        @j_VIEWS_PATH
    end

    def jf_VIEWS_PATH=(value : String) : String
        @j_VIEWS_PATH = value
    end
    @j_LOG_PATH : String = ""

    def jf_LOG_PATH : String
        @j_LOG_PATH
    end

    def jf_LOG_PATH=(value : String) : String
        @j_LOG_PATH = value
    end
    @j_BACKUP_PATH : String = ""

    def jf_BACKUP_PATH : String
        @j_BACKUP_PATH
    end

    def jf_BACKUP_PATH=(value : String) : String
        @j_BACKUP_PATH = value
    end

    @@jst_instance : PATH_GLOBALS? = nil

    def self.jst_instance : PATH_GLOBALS?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PATH_GLOBALS?) : PATH_GLOBALS?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PATH_GLOBALS.new.jinit_PATH_GLOBALS()
    end
    

    def self.getInstance : PATH_GLOBALS?
        return PATH_GLOBALS.jst_instance
    end
    

    def jinit_PATH_GLOBALS : self
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        abPathData : AbPathData? = AbPathData.getInstance()
        stringBuffer.not_nil!.append("data")
        stringBuffer.not_nil!.append(abPathData.not_nil!.jf_SEPARATOR)
        @j_DATA_PATH = stringBuffer.not_nil!.toString()
        stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
        stringBuffer.not_nil!.append(@j_DATA_PATH)
        stringBuffer.not_nil!.append(CommonStrings.getInstance().not_nil!.jf_INIT)
        stringBuffer.not_nil!.append(abPathData.not_nil!.jf_SEPARATOR)
        @j_INIT_PATH = stringBuffer.not_nil!.toString()
        stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
        stringBuffer.not_nil!.append(@j_DATA_PATH)
        stringBuffer.not_nil!.append("log")
        stringBuffer.not_nil!.append(abPathData.not_nil!.jf_SEPARATOR)
        @j_LOG_PATH = stringBuffer.not_nil!.toString()
        stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
        stringBuffer.not_nil!.append(@j_DATA_PATH)
        stringBuffer.not_nil!.append("backup")
        stringBuffer.not_nil!.append(abPathData.not_nil!.jf_SEPARATOR)
        @j_BACKUP_PATH = stringBuffer.not_nil!.toString()
        stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
        stringBuffer.not_nil!.append(@j_INIT_PATH)
        stringBuffer.not_nil!.append("views")
        stringBuffer.not_nil!.append(abPathData.not_nil!.jf_SEPARATOR)
        @j_VIEWS_PATH = stringBuffer.not_nil!.toString()
        self
    end
end

