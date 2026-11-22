# Generated Code Do Not Modify
# package org.allbinary.game.midlet

class GameMidletStateFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @currentGameState : GameState? = nil

    def jf_currentGameState : GameState?
        @currentGameState
    end

    def jf_currentGameState=(value : GameState?) : GameState?
        @currentGameState = value
    end

    @@jst_INSTANCE : GameMidletStateFactory? = nil

    def self.jst_INSTANCE : GameMidletStateFactory?
        jclinit
        @@jst_INSTANCE
    end

    def self.jst_INSTANCE=(value : GameMidletStateFactory?) : GameMidletStateFactory?
        jclinit
        @@jst_INSTANCE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_INSTANCE = GameMidletStateFactory.new.jinit_GameMidletStateFactory()
    end
    

    def self.getInstance : GameMidletStateFactory?
        return GameMidletStateFactory.jst_INSTANCE
    end

    # Java field initializers run after the super constructor
    def jfields_GameMidletStateFactory : Nil
    @logUtil = LogUtil.getInstance()
    @currentGameState = GameStateFactory.getInstance().not_nil!.jf_NO_GAME_STATE
    end
    

    def jinit_GameMidletStateFactory : self
        jfields_GameMidletStateFactory()
        self
    end
    

    def getCurrentGameState : GameState?
        return @currentGameState
    end
    

    def setCurrentGameState(currentGameState : GameState?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_CURRENT).not_nil!.append(" GameState: ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(currentGameState)).not_nil!.toString(), self, "setCurrentGameState")
        @currentGameState = currentGameState
    end
end

