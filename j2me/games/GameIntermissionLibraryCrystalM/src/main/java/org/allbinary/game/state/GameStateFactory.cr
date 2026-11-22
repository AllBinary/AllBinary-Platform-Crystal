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
# package org.allbinary.game.state

class GameStateFactory < JObject
    @index : Int32 = 0

    def jf_index : Int32
        @index
    end

    def jf_index=(value : Int32) : Int32
        @index = value
    end
    @j_NO_GAME_STATE : GameState? = nil

    def jf_NO_GAME_STATE : GameState?
        @j_NO_GAME_STATE
    end

    def jf_NO_GAME_STATE=(value : GameState?) : GameState?
        @j_NO_GAME_STATE = value
    end
    @j_PLAYING_GAME_STATE : GameState? = nil

    def jf_PLAYING_GAME_STATE : GameState?
        @j_PLAYING_GAME_STATE
    end

    def jf_PLAYING_GAME_STATE=(value : GameState?) : GameState?
        @j_PLAYING_GAME_STATE = value
    end
    @j_SHOW_END_RESULT_GAME_STATE : GameState? = nil

    def jf_SHOW_END_RESULT_GAME_STATE : GameState?
        @j_SHOW_END_RESULT_GAME_STATE
    end

    def jf_SHOW_END_RESULT_GAME_STATE=(value : GameState?) : GameState?
        @j_SHOW_END_RESULT_GAME_STATE = value
    end
    @j_SHOW_HIGH_SCORE_GAME_STATE : GameState? = nil

    def jf_SHOW_HIGH_SCORE_GAME_STATE : GameState?
        @j_SHOW_HIGH_SCORE_GAME_STATE
    end

    def jf_SHOW_HIGH_SCORE_GAME_STATE=(value : GameState?) : GameState?
        @j_SHOW_HIGH_SCORE_GAME_STATE = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : GameStateFactory?
        if GameStateFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            GameStateFactory.jst_instance = GameStateFactory.new.jinit_GameStateFactory()
        end
        return JR.cast(GameStateFactory.jst_instance, GameStateFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_GameStateFactory : Nil
    @index = 0
    @j_NO_GAME_STATE = self.createGameState("NO_GAME_STATE")
    @j_PLAYING_GAME_STATE = self.createGameState("PLAYING_GAME_STATE")
    @j_SHOW_END_RESULT_GAME_STATE = self.createGameState("SHOW_END_RESULT_GAME_STATE")
    @j_SHOW_HIGH_SCORE_GAME_STATE = self.createGameState("SHOW_HIGH_SCORE_GAME_STATE")
    end
    

    def jinit_GameStateFactory : self
        jfields_GameStateFactory()
        self
    end
    

    def createGameState(name : String) : GameState?
        return GameState.new.jinit_GameState(name, ((@index &+= 1) &- 1))
    end
end

