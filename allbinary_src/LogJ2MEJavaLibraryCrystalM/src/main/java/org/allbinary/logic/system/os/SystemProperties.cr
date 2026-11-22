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
# package org.allbinary.logic.system.os

class SystemProperties < JObject
    @j_OS_NAME : String = ""

    def jf_OS_NAME : String
        @j_OS_NAME
    end

    def jf_OS_NAME=(value : String) : String
        @j_OS_NAME = value
    end
    @j_OS_ARCH : String = ""

    def jf_OS_ARCH : String
        @j_OS_ARCH
    end

    def jf_OS_ARCH=(value : String) : String
        @j_OS_ARCH = value
    end
    @j_OS_VERSION : String = ""

    def jf_OS_VERSION : String
        @j_OS_VERSION
    end

    def jf_OS_VERSION=(value : String) : String
        @j_OS_VERSION = value
    end
    @j_USER_HOME : String = ""

    def jf_USER_HOME : String
        @j_USER_HOME
    end

    def jf_USER_HOME=(value : String) : String
        @j_USER_HOME = value
    end

    @@jst_instance : SystemProperties? = nil

    def self.jst_instance : SystemProperties?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : SystemProperties?) : SystemProperties?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = SystemProperties.new.jinit_SystemProperties()
    end
    

    def self.getInstance : SystemProperties?
        return SystemProperties.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_SystemProperties : Nil
    @j_OS_NAME = "os.name"
    @j_OS_ARCH = "os.arch"
    @j_OS_VERSION = "os.version"
    @j_USER_HOME = "user.home"
    end
    

    def jinit_SystemProperties : self
        jfields_SystemProperties()
        self
    end
    

    def getName : String
        return JSystem.getProperty(@j_OS_NAME)
    end
    

    def getArch : String
        return JSystem.getProperty(@j_OS_ARCH)
    end
    

    def getVersion : String
        return JSystem.getProperty(@j_OS_VERSION)
    end
    

    def getUserHomePath : String
        return JSystem.getProperty(@j_USER_HOME)
    end
end

