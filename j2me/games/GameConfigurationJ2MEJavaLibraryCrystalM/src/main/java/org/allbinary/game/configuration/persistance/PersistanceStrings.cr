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

class PersistanceStrings < JObject
    @j_SAVING : String = ""

    def jf_SAVING : String
        @j_SAVING
    end

    def jf_SAVING=(value : String) : String
        @j_SAVING = value
    end
    @j_NUMBER_OF_RECORDS : String = ""

    def jf_NUMBER_OF_RECORDS : String
        @j_NUMBER_OF_RECORDS
    end

    def jf_NUMBER_OF_RECORDS=(value : String) : String
        @j_NUMBER_OF_RECORDS = value
    end
    @j_LOADING_ID : String = ""

    def jf_LOADING_ID : String
        @j_LOADING_ID
    end

    def jf_LOADING_ID=(value : String) : String
        @j_LOADING_ID = value
    end
    @j_LOAD_ALL : String = ""

    def jf_LOAD_ALL : String
        @j_LOAD_ALL
    end

    def jf_LOAD_ALL=(value : String) : String
        @j_LOAD_ALL = value
    end
    @j_DELETING_WITH_ID : String = ""

    def jf_DELETING_WITH_ID : String
        @j_DELETING_WITH_ID
    end

    def jf_DELETING_WITH_ID=(value : String) : String
        @j_DELETING_WITH_ID = value
    end
    @j_CLOSING_RECORDSTORE : String = ""

    def jf_CLOSING_RECORDSTORE : String
        @j_CLOSING_RECORDSTORE
    end

    def jf_CLOSING_RECORDSTORE=(value : String) : String
        @j_CLOSING_RECORDSTORE = value
    end
    @j_NOT_SAVING : String = ""

    def jf_NOT_SAVING : String
        @j_NOT_SAVING
    end

    def jf_NOT_SAVING=(value : String) : String
        @j_NOT_SAVING = value
    end
    @j_ERROR_LOADING : String = ""

    def jf_ERROR_LOADING : String
        @j_ERROR_LOADING
    end

    def jf_ERROR_LOADING=(value : String) : String
        @j_ERROR_LOADING = value
    end
    @j_ERROR_LOADING_ID : String = ""

    def jf_ERROR_LOADING_ID : String
        @j_ERROR_LOADING_ID
    end

    def jf_ERROR_LOADING_ID=(value : String) : String
        @j_ERROR_LOADING_ID = value
    end
    @j_ID : String = ""

    def jf_ID : String
        @j_ID
    end

    def jf_ID=(value : String) : String
        @j_ID = value
    end
    @j_GAME_ACTION_INPUT : String = ""

    def jf_GAME_ACTION_INPUT : String
        @j_GAME_ACTION_INPUT
    end

    def jf_GAME_ACTION_INPUT=(value : String) : String
        @j_GAME_ACTION_INPUT = value
    end

    @@jst_instance : PersistanceStrings? = nil

    def self.jst_instance : PersistanceStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PersistanceStrings?) : PersistanceStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PersistanceStrings.new.jinit_PersistanceStrings()
    end
    

    def self.getInstance : PersistanceStrings?
        return PersistanceStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_PersistanceStrings : Nil
    @j_SAVING = "Saving: "
    @j_NUMBER_OF_RECORDS = "Number of records: "
    @j_LOADING_ID = "Loading data with id: "
    @j_LOAD_ALL = "loadAll"
    @j_DELETING_WITH_ID = "Deleting data with id: "
    @j_CLOSING_RECORDSTORE = "Closing RecordStore"
    @j_NOT_SAVING = "Not Saving: "
    @j_ERROR_LOADING = "Error Loading gameActionInput: "
    @j_ERROR_LOADING_ID = "Error Loading id: "
    @j_ID = " id: "
    @j_GAME_ACTION_INPUT = " GameActionInput: "
    end

    def jinit_PersistanceStrings : self
        jfields_PersistanceStrings()
        self
    end
end

