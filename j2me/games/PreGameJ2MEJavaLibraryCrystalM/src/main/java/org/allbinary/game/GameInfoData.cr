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
# package org.allbinary.game

class GameInfoData < JObject
    @j_GAME_TYPE : String = ""

    def jf_GAME_TYPE : String
        @j_GAME_TYPE
    end

    def jf_GAME_TYPE=(value : String) : String
        @j_GAME_TYPE = value
    end
    @j_GAME_MODE : String = ""

    def jf_GAME_MODE : String
        @j_GAME_MODE
    end

    def jf_GAME_MODE=(value : String) : String
        @j_GAME_MODE = value
    end
    @j_PLAYER_TYPE : String = ""

    def jf_PLAYER_TYPE : String
        @j_PLAYER_TYPE
    end

    def jf_PLAYER_TYPE=(value : String) : String
        @j_PLAYER_TYPE = value
    end
    @j_HIGHEST_LEVEL : String = ""

    def jf_HIGHEST_LEVEL : String
        @j_HIGHEST_LEVEL
    end

    def jf_HIGHEST_LEVEL=(value : String) : String
        @j_HIGHEST_LEVEL = value
    end
    @j_CURRENT_LEVEL : String = ""

    def jf_CURRENT_LEVEL : String
        @j_CURRENT_LEVEL
    end

    def jf_CURRENT_LEVEL=(value : String) : String
        @j_CURRENT_LEVEL = value
    end
    @j_SOFTWARE_INFORMATION : String = ""

    def jf_SOFTWARE_INFORMATION : String
        @j_SOFTWARE_INFORMATION
    end

    def jf_SOFTWARE_INFORMATION=(value : String) : String
        @j_SOFTWARE_INFORMATION = value
    end

    @@jst_instance : GameInfoData? = nil

    def self.jst_instance : GameInfoData?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameInfoData?) : GameInfoData?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameInfoData.new.jinit_GameInfoData()
    end
    

    def self.getInstance : GameInfoData?
        return GameInfoData.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameInfoData : Nil
    @j_GAME_TYPE = "GAME_TYPE"
    @j_GAME_MODE = "GAME_MODE"
    @j_PLAYER_TYPE = "PLAYER_TYPE"
    @j_HIGHEST_LEVEL = "HIGHEST_LEVEL"
    @j_CURRENT_LEVEL = "CURRENT_LEVEL"
    @j_SOFTWARE_INFORMATION = "SOFTWARE_INFORMATION"
    end
    

    def jinit_GameInfoData : self
        jfields_GameInfoData()
        self
    end
end

