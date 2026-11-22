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
# package org.allbinary.game.midlet

class LicenseLoadingTypeFactory < JObject
    @j_INITIAL_LOADING : LicenseLoadingType? = nil

    def jf_INITIAL_LOADING : LicenseLoadingType?
        @j_INITIAL_LOADING
    end

    def jf_INITIAL_LOADING=(value : LicenseLoadingType?) : LicenseLoadingType?
        @j_INITIAL_LOADING = value
    end
    @j_GAME_START : LicenseLoadingType? = nil

    def jf_GAME_START : LicenseLoadingType?
        @j_GAME_START
    end

    def jf_GAME_START=(value : LicenseLoadingType?) : LicenseLoadingType?
        @j_GAME_START = value
    end
    @j_LOGIN : LicenseLoadingType? = nil

    def jf_LOGIN : LicenseLoadingType?
        @j_LOGIN
    end

    def jf_LOGIN=(value : LicenseLoadingType?) : LicenseLoadingType?
        @j_LOGIN = value
    end
    @j_OTHER : LicenseLoadingType? = nil

    def jf_OTHER : LicenseLoadingType?
        @j_OTHER
    end

    def jf_OTHER=(value : LicenseLoadingType?) : LicenseLoadingType?
        @j_OTHER = value
    end

    @@jst_instance : LicenseLoadingTypeFactory? = nil

    def self.jst_instance : LicenseLoadingTypeFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LicenseLoadingTypeFactory?) : LicenseLoadingTypeFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LicenseLoadingTypeFactory.new.jinit_LicenseLoadingTypeFactory()
    end
    

    def self.getIntance : LicenseLoadingTypeFactory?
        return LicenseLoadingTypeFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LicenseLoadingTypeFactory : Nil
    @j_INITIAL_LOADING = LicenseLoadingType.new.jinit_LicenseLoadingType("Initial Loading")
    @j_GAME_START = LicenseLoadingType.new.jinit_LicenseLoadingType("Game Start")
    @j_LOGIN = LicenseLoadingType.new.jinit_LicenseLoadingType("Login")
    @j_OTHER = LicenseLoadingType.new.jinit_LicenseLoadingType("Other/Usually The First Non Demo Level")
    end

    def jinit_LicenseLoadingTypeFactory : self
        jfields_LicenseLoadingTypeFactory()
        self
    end
end

