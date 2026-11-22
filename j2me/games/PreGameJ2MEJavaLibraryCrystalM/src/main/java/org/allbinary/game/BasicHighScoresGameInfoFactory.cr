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

class BasicHighScoresGameInfoFactory < JObject
    @j_MULTI_PLAYER_SERVER : GameInfo? = nil

    def jf_MULTI_PLAYER_SERVER : GameInfo?
        @j_MULTI_PLAYER_SERVER
    end

    def jf_MULTI_PLAYER_SERVER=(value : GameInfo?) : GameInfo?
        @j_MULTI_PLAYER_SERVER = value
    end
    @j_SINGLE_PLAYER_SERVER : GameInfo? = nil

    def jf_SINGLE_PLAYER_SERVER : GameInfo?
        @j_SINGLE_PLAYER_SERVER
    end

    def jf_SINGLE_PLAYER_SERVER=(value : GameInfo?) : GameInfo?
        @j_SINGLE_PLAYER_SERVER = value
    end

    @@jst_SINGLETON : BasicHighScoresGameInfoFactory? = nil

    def self.jst_SINGLETON : BasicHighScoresGameInfoFactory?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : BasicHighScoresGameInfoFactory?) : BasicHighScoresGameInfoFactory?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = BasicHighScoresGameInfoFactory.new.jinit_BasicHighScoresGameInfoFactory()
    end
    

    def self.getInstance : BasicHighScoresGameInfoFactory?
        return BasicHighScoresGameInfoFactory.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_BasicHighScoresGameInfoFactory : Nil
    @j_MULTI_PLAYER_SERVER = GameInfo.new.jinit_GameInfo(GameTypeFactory.getInstance().not_nil!.jf_MULTI_PLAYER, GameMode.jst_SERVER, PlayerTypesFactory.getInstance().not_nil!.jf_PLAYER_TYPE_ONE, 0, 0)
    @j_SINGLE_PLAYER_SERVER = GameInfo.new.jinit_GameInfo(GameTypeFactory.getInstance().not_nil!.jf_SINGLE_PLAYER, GameMode.jst_SERVER, PlayerTypesFactory.getInstance().not_nil!.jf_PLAYER_TYPE_ONE, 0, 0)
    end

    def jinit_BasicHighScoresGameInfoFactory : self
        jfields_BasicHighScoresGameInfoFactory()
        self
    end
end

