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

class EndGameProcessor < Processor
    @gameStateFactory : GameStateFactory? = nil

    def jf_gameStateFactory : GameStateFactory?
        @gameStateFactory
    end

    def jf_gameStateFactory=(value : GameStateFactory?) : GameStateFactory?
        @gameStateFactory = value
    end
    @gameCanvas : AllBinaryGameCanvas? = nil

    def jf_gameCanvas : AllBinaryGameCanvas?
        @gameCanvas
    end

    def jf_gameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @gameCanvas = value
    end
    @j_WAIT : Int64 = 0_i64

    def jf_WAIT : Int64
        @j_WAIT
    end

    def jf_WAIT=(value : Int64) : Int64
        @j_WAIT = value
    end

    # Java field initializers run after the super constructor
    def jfields_EndGameProcessor : Nil
    @gameStateFactory = GameStateFactory.getInstance()
    
    @j_WAIT = 5000_i64
    end
    

    def jinit_EndGameProcessor(gameCanvas : AllBinaryGameCanvas?) : self
        jinit_Processor()
        jfields_EndGameProcessor()
        @gameCanvas = gameCanvas
        self
    end
    

    def process : Nil
        if @gameCanvas.not_nil!.isHighScoreSubmitted()
            if @gameCanvas.not_nil!.getGameStateTimeHelper().not_nil!.isElapsedTNT(@j_WAIT)
                if @gameCanvas.not_nil!.getGameState() == @gameStateFactory.not_nil!.jf_SHOW_END_RESULT_GAME_STATE
                    highScoresBase : HighScoresHelperBase? = JR.cast(@gameCanvas.not_nil!.jf_highScoresHelper, HighScoresHelperBase)
                    highScores : HighScores? = highScoresBase.not_nil!.getSelectedHighScores()
                    if highScores != NullHighScoresSingletonFactory.getInstance()
                        highScoresBase.not_nil!.selectHighScores()
                        @gameCanvas.not_nil!.getRealHighScoresPaintable().not_nil!.setHighScores(highScores)
                        @gameCanvas.not_nil!.setGameState(@gameStateFactory.not_nil!.jf_SHOW_HIGH_SCORE_GAME_STATE)
                        @gameCanvas.not_nil!.setHighScoresPaintable(@gameCanvas.not_nil!.getRealHighScoresPaintable())
                    end
                elsif @gameCanvas.not_nil!.getGameState() == @gameStateFactory.not_nil!.jf_SHOW_HIGH_SCORE_GAME_STATE
                    @gameCanvas.not_nil!.setGameState(@gameStateFactory.not_nil!.jf_SHOW_END_RESULT_GAME_STATE)
                    @gameCanvas.not_nil!.setHighScoresPaintable(NullPaintable.getInstance())
                end
            end
        end
    end
end

