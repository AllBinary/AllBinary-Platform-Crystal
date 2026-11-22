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
    

    def jinit_SystemProperties : self
        self
    end
    

    def getName : String
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getArch : String
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getVersion : String
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getUserHomePath : String
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
end

