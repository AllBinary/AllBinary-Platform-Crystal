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
# package org.allbinary.thirdparty.store

class ThirdPartyMessageFactory < JObject
    @j_AUTHORIZED : String = ""

    def jf_AUTHORIZED : String
        @j_AUTHORIZED
    end

    def jf_AUTHORIZED=(value : String) : String
        @j_AUTHORIZED = value
    end
    @j_NOT_AUTHORIZED : String = ""

    def jf_NOT_AUTHORIZED : String
        @j_NOT_AUTHORIZED
    end

    def jf_NOT_AUTHORIZED=(value : String) : String
        @j_NOT_AUTHORIZED = value
    end
    @j_LINKAGE_ERROR : String = ""

    def jf_LINKAGE_ERROR : String
        @j_LINKAGE_ERROR
    end

    def jf_LINKAGE_ERROR=(value : String) : String
        @j_LINKAGE_ERROR = value
    end

    @@jst_instance : ThirdPartyMessageFactory? = nil

    def self.jst_instance : ThirdPartyMessageFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ThirdPartyMessageFactory?) : ThirdPartyMessageFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ThirdPartyMessageFactory.new.jinit_ThirdPartyMessageFactory()
    end
    

    def self.getInstance : ThirdPartyMessageFactory?
        return ThirdPartyMessageFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ThirdPartyMessageFactory : Nil
    @j_AUTHORIZED = "Authorized"
    @j_NOT_AUTHORIZED = "Not Authorized"
    @j_LINKAGE_ERROR = "Linkage Error"
    end

    def jinit_ThirdPartyMessageFactory : self
        jfields_ThirdPartyMessageFactory()
        self
    end
end

