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
# package org.allbinary.logic.system.security.licensing.registration

class RegistrationConfiguration < JObject
    @registrationCode : String = ""

    def jf_registrationCode : String
        @registrationCode
    end

    def jf_registrationCode=(value : String) : String
        @registrationCode = value
    end
    @j_NAME : String = ""

    def jf_NAME : String
        @j_NAME
    end

    def jf_NAME=(value : String) : String
        @j_NAME = value
    end

    @@jst_SINGLETON : RegistrationConfiguration? = nil

    def self.jst_SINGLETON : RegistrationConfiguration?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : RegistrationConfiguration?) : RegistrationConfiguration?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = RegistrationConfiguration.new.jinit_RegistrationConfiguration()
    end
    

    def self.getInstance : RegistrationConfiguration?
        return RegistrationConfiguration.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_RegistrationConfiguration : Nil
    @registrationCode = "No Registration Code"
    @j_NAME = "registrationid"
    end
    

    def jinit_RegistrationConfiguration : self
        jfields_RegistrationConfiguration()
        self
    end
    

    def read : Nil
    end
    

    def write : Nil
    end
    

    def toString : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append("Registration Code: ").not_nil!.append(self.getRegistrationCode()).not_nil!.toString()
    end
    

    def setRegistrationCode(registrationCode : String) : Nil
        @registrationCode = registrationCode
    end
    

    def getRegistrationCode : String
        return @registrationCode
    end
end

