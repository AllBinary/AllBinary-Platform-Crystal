# Generated Code Do Not Modify
# package org.bouncycastle.jce.provider

class BouncyCastleProvider < JProvider

    @@jst_info : String = ""

    def self.jst_info : String
        jclinit
        @@jst_info
    end

    def self.jst_info=(value : String) : String
        jclinit
        @@jst_info = value
    end

    @@jst_PROVIDER_NAME : String = ""

    def self.jst_PROVIDER_NAME : String
        jclinit
        @@jst_PROVIDER_NAME
    end

    def self.jst_PROVIDER_NAME=(value : String) : String
        jclinit
        @@jst_PROVIDER_NAME = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_info = "BouncyCastle Security Provider v1.41"
        @@jst_PROVIDER_NAME = "BC"
    end
    

    def jinit_BouncyCastleProvider : self
        jinit_JProvider(BouncyCastleProvider.jst_PROVIDER_NAME, 1.41, BouncyCastleProvider.jst_info)
        self
    end
    

    def setParameter(parameterName : String, parameter : JAny) : Nil
    end
end

