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
# package org.allbinary.business.init

class LicenseInitInfoUtil < JObject
    @j_INITFILENAME : String = ""

    def jf_INITFILENAME : String
        @j_INITFILENAME
    end

    def jf_INITFILENAME=(value : String) : String
        @j_INITFILENAME = value
    end
    @j_ABOUT : String = ""

    def jf_ABOUT : String
        @j_ABOUT
    end

    def jf_ABOUT=(value : String) : String
        @j_ABOUT = value
    end
    @j_PRIVACY_POLICY : String = ""

    def jf_PRIVACY_POLICY : String
        @j_PRIVACY_POLICY
    end

    def jf_PRIVACY_POLICY=(value : String) : String
        @j_PRIVACY_POLICY = value
    end
    @j_OFFICIAL_ALLBINARY_SERVICES_SERVER : String = ""

    def jf_OFFICIAL_ALLBINARY_SERVICES_SERVER : String
        @j_OFFICIAL_ALLBINARY_SERVICES_SERVER
    end

    def jf_OFFICIAL_ALLBINARY_SERVICES_SERVER=(value : String) : String
        @j_OFFICIAL_ALLBINARY_SERVICES_SERVER = value
    end

    @@jst_instance : LicenseInitInfoUtil? = nil

    def self.jst_instance : LicenseInitInfoUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LicenseInitInfoUtil?) : LicenseInitInfoUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LicenseInitInfoUtil.new.jinit_LicenseInitInfoUtil()
    end
    

    def self.getInstance : LicenseInitInfoUtil?
        return LicenseInitInfoUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LicenseInitInfoUtil : Nil
    @j_INITFILENAME = "licenseinitdata.dat"
    @j_ABOUT = "about"
    @j_PRIVACY_POLICY = "privacy_policy"
    @j_OFFICIAL_ALLBINARY_SERVICES_SERVER = "https://services.allbinary.com/LicServ/serverssl.php"
    end
    

    def setFilePath(filePath : String) : Nil
    end
    

    def jinit_LicenseInitInfoUtil : self
        jfields_LicenseInitInfoUtil()
        self
    end
    

    def write(initData : LicenseInitInfo?) : Nil
    end
    

    def read : LicenseInitInfo?
        return self.readAgain(0)
    end
    

    def readAgain(initializeCounter : Int) : LicenseInitInfo?
        initializeCounter = initializeCounter.to_i32!
        licenseInitInfo : LicenseInitInfo? = LicenseInitInfo.new.jinit_LicenseInitInfo()
        licenseInitInfo.not_nil!.clearServers()
        licenseInitInfo.not_nil!.addServer(@j_OFFICIAL_ALLBINARY_SERVICES_SERVER)
        return licenseInitInfo
    end
end

