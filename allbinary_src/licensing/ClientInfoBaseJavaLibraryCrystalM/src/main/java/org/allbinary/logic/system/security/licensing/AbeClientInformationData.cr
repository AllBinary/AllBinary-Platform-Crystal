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

class AbeClientInformationData < JObject
    @j_KEY : String = ""

    def jf_KEY : String
        @j_KEY
    end

    def jf_KEY=(value : String) : String
        @j_KEY = value
    end
    @j_NAME : String = ""

    def jf_NAME : String
        @j_NAME
    end

    def jf_NAME=(value : String) : String
        @j_NAME = value
    end
    @j_VERSION : String = ""

    def jf_VERSION : String
        @j_VERSION
    end

    def jf_VERSION=(value : String) : String
        @j_VERSION = value
    end
    @j_SPECIALNAME : String = ""

    def jf_SPECIALNAME : String
        @j_SPECIALNAME
    end

    def jf_SPECIALNAME=(value : String) : String
        @j_SPECIALNAME = value
    end
    @j_LICENSEID : String = ""

    def jf_LICENSEID : String
        @j_LICENSEID
    end

    def jf_LICENSEID=(value : String) : String
        @j_LICENSEID = value
    end
    @j_LICENSE_TYPE : String = ""

    def jf_LICENSE_TYPE : String
        @j_LICENSE_TYPE
    end

    def jf_LICENSE_TYPE=(value : String) : String
        @j_LICENSE_TYPE = value
    end
    @j_PREVIOUSLICENSEID : String = ""

    def jf_PREVIOUSLICENSEID : String
        @j_PREVIOUSLICENSEID
    end

    def jf_PREVIOUSLICENSEID=(value : String) : String
        @j_PREVIOUSLICENSEID = value
    end
    @j_OSNAME : String = ""

    def jf_OSNAME : String
        @j_OSNAME
    end

    def jf_OSNAME=(value : String) : String
        @j_OSNAME = value
    end
    @j_OSARCH : String = ""

    def jf_OSARCH : String
        @j_OSARCH
    end

    def jf_OSARCH=(value : String) : String
        @j_OSARCH = value
    end
    @j_OSVERSION : String = ""

    def jf_OSVERSION : String
        @j_OSVERSION
    end

    def jf_OSVERSION=(value : String) : String
        @j_OSVERSION = value
    end
    @j_OS : String = ""

    def jf_OS : String
        @j_OS
    end

    def jf_OS=(value : String) : String
        @j_OS = value
    end
    @j_HARDWARE : String = ""

    def jf_HARDWARE : String
        @j_HARDWARE
    end

    def jf_HARDWARE=(value : String) : String
        @j_HARDWARE = value
    end
    @j_LICENSESERVERS : String = ""

    def jf_LICENSESERVERS : String
        @j_LICENSESERVERS
    end

    def jf_LICENSESERVERS=(value : String) : String
        @j_LICENSESERVERS = value
    end
    @j_NEWLICENSE : String = ""

    def jf_NEWLICENSE : String
        @j_NEWLICENSE
    end

    def jf_NEWLICENSE=(value : String) : String
        @j_NEWLICENSE = value
    end
    @j_ISNEW : String = ""

    def jf_ISNEW : String
        @j_ISNEW
    end

    def jf_ISNEW=(value : String) : String
        @j_ISNEW = value
    end
    @j_SPECIAL : String = ""

    def jf_SPECIAL : String
        @j_SPECIAL
    end

    def jf_SPECIAL=(value : String) : String
        @j_SPECIAL = value
    end

    @@jst_instance : AbeClientInformationData? = nil

    def self.jst_instance : AbeClientInformationData?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AbeClientInformationData?) : AbeClientInformationData?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AbeClientInformationData.new.jinit_AbeClientInformationData()
    end
    

    def self.getInstance : AbeClientInformationData?
        return AbeClientInformationData.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AbeClientInformationData : Nil
    @j_KEY = "KEY"
    @j_NAME = "NAME"
    @j_VERSION = "VERSION"
    @j_SPECIALNAME = "SPECIALNAME"
    @j_LICENSEID = "LICENSEID"
    @j_LICENSE_TYPE = "LICENSETYPE"
    @j_PREVIOUSLICENSEID = "PREVIOUSLICENSEID"
    @j_OSNAME = "OSNAME"
    @j_OSARCH = "OSARCH"
    @j_OSVERSION = "OSVERSION"
    @j_OS = "OS"
    @j_HARDWARE = "HARDWARE"
    @j_LICENSESERVERS = "LICENSESERVERS"
    @j_NEWLICENSE = "NEWLICENSE"
    @j_ISNEW = "ISNEW"
    @j_SPECIAL = "SPECIAL"
    end
    

    def jinit_AbeClientInformationData : self
        jfields_AbeClientInformationData()
        self
    end
end

