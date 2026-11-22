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

class IntermissionFactory < JObject
    @j_START_LEVEL_INTERMISSION_GAME_STATE : GameState? = nil

    def jf_START_LEVEL_INTERMISSION_GAME_STATE : GameState?
        @j_START_LEVEL_INTERMISSION_GAME_STATE
    end

    def jf_START_LEVEL_INTERMISSION_GAME_STATE=(value : GameState?) : GameState?
        @j_START_LEVEL_INTERMISSION_GAME_STATE = value
    end
    @j_WAIT_LEVEL_INTERMISSION_GAME_STATE : GameState? = nil

    def jf_WAIT_LEVEL_INTERMISSION_GAME_STATE : GameState?
        @j_WAIT_LEVEL_INTERMISSION_GAME_STATE
    end

    def jf_WAIT_LEVEL_INTERMISSION_GAME_STATE=(value : GameState?) : GameState?
        @j_WAIT_LEVEL_INTERMISSION_GAME_STATE = value
    end
    @j_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE : GameState? = nil

    def jf_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE : GameState?
        @j_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE
    end

    def jf_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE=(value : GameState?) : GameState?
        @j_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = value
    end
    @j_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE : GameState? = nil

    def jf_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE : GameState?
        @j_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE
    end

    def jf_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE=(value : GameState?) : GameState?
        @j_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = value
    end

    @@jst_instance : IntermissionFactory? = nil

    def self.jst_instance : IntermissionFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : IntermissionFactory?) : IntermissionFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = IntermissionFactory.new.jinit_IntermissionFactory()
    end
    

    def self.getInstance : IntermissionFactory?
        return IntermissionFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_IntermissionFactory : Nil
    @j_START_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().not_nil!.createGameState("START_LEVEL_INTERMISSION_GAME_STATE")
    @j_WAIT_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().not_nil!.createGameState("WAIT_LEVEL_INTERMISSION_GAME_STATE")
    @j_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().not_nil!.createGameState("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE")
    @j_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().not_nil!.createGameState("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE")
    end

    def jinit_IntermissionFactory : self
        jfields_IntermissionFactory()
        self
    end
end

