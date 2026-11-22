# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.configuration.persistance

class GamePersistanceStrings < JObject
    @j_SAVED_GAME_RECORD_ID : String = ""

    def jf_SAVED_GAME_RECORD_ID : String
        @j_SAVED_GAME_RECORD_ID
    end

    def jf_SAVED_GAME_RECORD_ID=(value : String) : String
        @j_SAVED_GAME_RECORD_ID = value
    end
    @j_SAVED_GAME_CONFIGURATION_RECORD_ID : String = ""

    def jf_SAVED_GAME_CONFIGURATION_RECORD_ID : String
        @j_SAVED_GAME_CONFIGURATION_RECORD_ID
    end

    def jf_SAVED_GAME_CONFIGURATION_RECORD_ID=(value : String) : String
        @j_SAVED_GAME_CONFIGURATION_RECORD_ID = value
    end
    @j_DEFAULT_INPUT_MAPPING_RECORD_ID : String = ""

    def jf_DEFAULT_INPUT_MAPPING_RECORD_ID : String
        @j_DEFAULT_INPUT_MAPPING_RECORD_ID
    end

    def jf_DEFAULT_INPUT_MAPPING_RECORD_ID=(value : String) : String
        @j_DEFAULT_INPUT_MAPPING_RECORD_ID = value
    end
    @j_SAVED_INPUT_CONFIGURATION_RECORD_ID : String = ""

    def jf_SAVED_INPUT_CONFIGURATION_RECORD_ID : String
        @j_SAVED_INPUT_CONFIGURATION_RECORD_ID
    end

    def jf_SAVED_INPUT_CONFIGURATION_RECORD_ID=(value : String) : String
        @j_SAVED_INPUT_CONFIGURATION_RECORD_ID = value
    end

    @@jst_instance : GamePersistanceStrings? = nil

    def self.jst_instance : GamePersistanceStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GamePersistanceStrings?) : GamePersistanceStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GamePersistanceStrings.new.jinit_GamePersistanceStrings()
    end
    

    def self.getInstance : GamePersistanceStrings?
        return GamePersistanceStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GamePersistanceStrings : Nil
    @j_SAVED_GAME_RECORD_ID = "_SG"
    @j_SAVED_GAME_CONFIGURATION_RECORD_ID = "_SGC"
    @j_DEFAULT_INPUT_MAPPING_RECORD_ID = "_DIM"
    @j_SAVED_INPUT_CONFIGURATION_RECORD_ID = "_SIC"
    end

    def jinit_GamePersistanceStrings : self
        jfields_GamePersistanceStrings()
        self
    end
end

