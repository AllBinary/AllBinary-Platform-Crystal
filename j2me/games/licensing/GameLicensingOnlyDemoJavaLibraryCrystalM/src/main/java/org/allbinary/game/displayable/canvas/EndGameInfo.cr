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
# package org.allbinary.game.displayable.canvas

class EndGameInfo < JObject
    @j_NORMAL_GAME_OVER_WIN : String = ""

    def jf_NORMAL_GAME_OVER_WIN : String
        @j_NORMAL_GAME_OVER_WIN
    end

    def jf_NORMAL_GAME_OVER_WIN=(value : String) : String
        @j_NORMAL_GAME_OVER_WIN = value
    end
    @j_TEASER_DEMO_GAME_END_LAST_LEVEL : String = ""

    def jf_TEASER_DEMO_GAME_END_LAST_LEVEL : String
        @j_TEASER_DEMO_GAME_END_LAST_LEVEL
    end

    def jf_TEASER_DEMO_GAME_END_LAST_LEVEL=(value : String) : String
        @j_TEASER_DEMO_GAME_END_LAST_LEVEL = value
    end
    @j_TEASER_DEMO_GAME_END : String = ""

    def jf_TEASER_DEMO_GAME_END : String
        @j_TEASER_DEMO_GAME_END
    end

    def jf_TEASER_DEMO_GAME_END=(value : String) : String
        @j_TEASER_DEMO_GAME_END = value
    end
    @gameOverStr : String = ""

    def jf_gameOverStr : String
        @gameOverStr
    end

    def jf_gameOverStr=(value : String) : String
        @gameOverStr = value
    end
    @winStr : String = ""

    def jf_winStr : String
        @winStr
    end

    def jf_winStr=(value : String) : String
        @winStr = value
    end

    # Java field initializers run after the super constructor
    def jfields_EndGameInfo : Nil
    @j_NORMAL_GAME_OVER_WIN = "You Won"
    @j_TEASER_DEMO_GAME_END_LAST_LEVEL = "End of Demo."
    @j_TEASER_DEMO_GAME_END = "Demo Game Over."
    @gameOverStr = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @winStr = @gameOverStr
    end

    def jinit_EndGameInfo : self
        jfields_EndGameInfo()
        self
    end
    

    def update(gameInfo : GameInfo?, myCanvas : MyCanvas?) : Nil
        if gameInfo.not_nil!.isLastLevel()
            self.setWinStr(@j_TEASER_DEMO_GAME_END_LAST_LEVEL)
            self.setGameOverStr(@j_TEASER_DEMO_GAME_END_LAST_LEVEL)
        else
            self.setWinStr(@j_NORMAL_GAME_OVER_WIN)
            self.setGameOverStr(@j_TEASER_DEMO_GAME_END)
        end
    end
    

    def getGameOverStr : String
        return @gameOverStr
    end
    

    def setGameOverStr(gameOverStr : String) : Nil
        @gameOverStr = gameOverStr
    end
    

    def getWinStr : String
        return @winStr
    end
    

    def setWinStr(winStr : String) : Nil
        @winStr = winStr
    end
end

