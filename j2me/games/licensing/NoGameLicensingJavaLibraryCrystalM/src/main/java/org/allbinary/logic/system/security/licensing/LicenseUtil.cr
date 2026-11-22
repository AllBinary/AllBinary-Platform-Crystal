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
# package org.allbinary.logic.system.security.licensing

class LicenseUtil < JObject

    @@jst_instance : LicenseUtil? = nil

    def self.jst_instance : LicenseUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LicenseUtil?) : LicenseUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LicenseUtil.new.jinit_LicenseUtil()
    end
    

    def self.getInstance : LicenseUtil?
        return LicenseUtil.jst_instance
    end

    def jinit_LicenseUtil : self
        self
    end
    

    def init : Nil
    end
    

    def isRunning : Bool
        return false
    end
    

    def setRunning(running : Bool) : Nil
    end
    

    def shouldWait(commandListener : CommandListener?) : Bool
        return self.isRunning()
    end
end

