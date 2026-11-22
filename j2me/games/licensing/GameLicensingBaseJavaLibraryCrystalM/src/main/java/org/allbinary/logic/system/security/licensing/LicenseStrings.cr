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

class LicenseStrings < JObject
    @j_LOCKED : String = ""

    def jf_LOCKED : String
        @j_LOCKED
    end

    def jf_LOCKED=(value : String) : String
        @j_LOCKED = value
    end

    @@jst_instance : LicenseStrings? = nil

    def self.jst_instance : LicenseStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LicenseStrings?) : LicenseStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LicenseStrings.new.jinit_LicenseStrings()
    end
    

    def self.getInstance : LicenseStrings?
        return LicenseStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LicenseStrings : Nil
    @j_LOCKED = "Demo Locked Feature"
    end

    def jinit_LicenseStrings : self
        jfields_LicenseStrings()
        self
    end
end

