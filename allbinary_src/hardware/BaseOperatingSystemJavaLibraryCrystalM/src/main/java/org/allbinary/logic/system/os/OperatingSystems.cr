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

class OperatingSystems < JObject
    @j_LINUX : String = ""

    def jf_LINUX : String
        @j_LINUX
    end

    def jf_LINUX=(value : String) : String
        @j_LINUX = value
    end
    @j_WINDOWS : String = ""

    def jf_WINDOWS : String
        @j_WINDOWS
    end

    def jf_WINDOWS=(value : String) : String
        @j_WINDOWS = value
    end
    @j_SOLARIS : String = ""

    def jf_SOLARIS : String
        @j_SOLARIS
    end

    def jf_SOLARIS=(value : String) : String
        @j_SOLARIS = value
    end
    @j_WINDOWS2000 : String = ""

    def jf_WINDOWS2000 : String
        @j_WINDOWS2000
    end

    def jf_WINDOWS2000=(value : String) : String
        @j_WINDOWS2000 = value
    end
    @j_WINDOWS_NT : String = ""

    def jf_WINDOWS_NT : String
        @j_WINDOWS_NT
    end

    def jf_WINDOWS_NT=(value : String) : String
        @j_WINDOWS_NT = value
    end
    @j_WINDOWS_10 : String = ""

    def jf_WINDOWS_10 : String
        @j_WINDOWS_10
    end

    def jf_WINDOWS_10=(value : String) : String
        @j_WINDOWS_10 = value
    end
    @j_WINDOWS_11 : String = ""

    def jf_WINDOWS_11 : String
        @j_WINDOWS_11
    end

    def jf_WINDOWS_11=(value : String) : String
        @j_WINDOWS_11 = value
    end
    @j_WINDOWS_VISTA : String = ""

    def jf_WINDOWS_VISTA : String
        @j_WINDOWS_VISTA
    end

    def jf_WINDOWS_VISTA=(value : String) : String
        @j_WINDOWS_VISTA = value
    end
    @j_WINDOWS_XP : String = ""

    def jf_WINDOWS_XP : String
        @j_WINDOWS_XP
    end

    def jf_WINDOWS_XP=(value : String) : String
        @j_WINDOWS_XP = value
    end
    @j_ANDROID : String = ""

    def jf_ANDROID : String
        @j_ANDROID
    end

    def jf_ANDROID=(value : String) : String
        @j_ANDROID = value
    end
    @j_HARMONY : String = ""

    def jf_HARMONY : String
        @j_HARMONY
    end

    def jf_HARMONY=(value : String) : String
        @j_HARMONY = value
    end
    @unknownSpecificOSAllowed : Bool = false

    def jf_unknownSpecificOSAllowed : Bool
        @unknownSpecificOSAllowed
    end

    def jf_unknownSpecificOSAllowed=(value : Bool) : Bool
        @unknownSpecificOSAllowed = value
    end

    @@jst_instance : OperatingSystems? = nil

    def self.jst_instance : OperatingSystems?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OperatingSystems?) : OperatingSystems?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OperatingSystems.new.jinit_OperatingSystems()
    end
    

    def self.getInstance : OperatingSystems?
        return OperatingSystems.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_OperatingSystems : Nil
    @j_LINUX = "Linux"
    @j_WINDOWS = "Windows"
    @j_SOLARIS = "Solaris"
    @j_WINDOWS2000 = "Windows 2000"
    @j_WINDOWS_NT = "Windows NT"
    @j_WINDOWS_10 = "Windows 10"
    @j_WINDOWS_11 = "Windows 11"
    @j_WINDOWS_VISTA = "Windows Vista"
    @j_WINDOWS_XP = "Windows XP"
    @j_ANDROID = @j_LINUX
    @j_HARMONY = "HarmonyOS"
    @unknownSpecificOSAllowed = true
    end
    

    def jinit_OperatingSystems : self
        jfields_OperatingSystems()
        self
    end
    

    def isUnknownSpecificOSAllowed : Bool
        return @unknownSpecificOSAllowed
    end
    

    def setUnknownSpecificOSAllowed(aUnknownSpecificOSAllowed : Bool) : Nil
        @unknownSpecificOSAllowed = aUnknownSpecificOSAllowed
    end
end

