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
# package org.allbinary.logic.java.characters

class CharacterSetData < JObject
    @j_US_ASCII : String = ""

    def jf_US_ASCII : String
        @j_US_ASCII
    end

    def jf_US_ASCII=(value : String) : String
        @j_US_ASCII = value
    end
    @j_ISO_8859_1 : String = ""

    def jf_ISO_8859_1 : String
        @j_ISO_8859_1
    end

    def jf_ISO_8859_1=(value : String) : String
        @j_ISO_8859_1 = value
    end
    @j_UTF_8 : String = ""

    def jf_UTF_8 : String
        @j_UTF_8
    end

    def jf_UTF_8=(value : String) : String
        @j_UTF_8 = value
    end
    @j_UTF_16 : String = ""

    def jf_UTF_16 : String
        @j_UTF_16
    end

    def jf_UTF_16=(value : String) : String
        @j_UTF_16 = value
    end
    @j_UTF_16BE : String = ""

    def jf_UTF_16BE : String
        @j_UTF_16BE
    end

    def jf_UTF_16BE=(value : String) : String
        @j_UTF_16BE = value
    end
    @j_UTF_16LE : String = ""

    def jf_UTF_16LE : String
        @j_UTF_16LE
    end

    def jf_UTF_16LE=(value : String) : String
        @j_UTF_16LE = value
    end

    @@jst_instance : CharacterSetData? = nil

    def self.jst_instance : CharacterSetData?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CharacterSetData?) : CharacterSetData?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CharacterSetData.new.jinit_CharacterSetData()
    end
    

    def self.getInstance : CharacterSetData?
        return CharacterSetData.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CharacterSetData : Nil
    @j_US_ASCII = "US-ASCII"
    @j_ISO_8859_1 = "ISO-8859-1"
    @j_UTF_8 = "UTF-8"
    @j_UTF_16 = "UTF-16"
    @j_UTF_16BE = "UTF-16BE"
    @j_UTF_16LE = "UTF-16LE"
    end
    

    def jinit_CharacterSetData : self
        jfields_CharacterSetData()
        self
    end
end

