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
# package org.allbinary.game.score

class HighScoresCanvasInputProcessor < PlayerGameInput
    @highScoresCanvas : HighScoresCanvas? = nil

    def jf_highScoresCanvas : HighScoresCanvas?
        @highScoresCanvas
    end

    def jf_highScoresCanvas=(value : HighScoresCanvas?) : HighScoresCanvas?
        @highScoresCanvas = value
    end
    

    def jinit_HighScoresCanvasInputProcessor(highScoresCanvas : HighScoresCanvas?) : self
        jinit_PlayerGameInput(BasicArrayListD.new.jinit_BasicArrayListD(), BasicArrayListD.new.jinit_BasicArrayListD(), -1)
        @highScoresCanvas = highScoresCanvas
        self
    end
    

    def open : Nil
    end
    

    def close : Nil
    end
    

    def onPressGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
        super(gameKeyEvent)
        self.update()
    end
    

    def onDownGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
        super(gameKeyEvent)
        self.update()
    end
    

    def onUpGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
        super(gameKeyEvent)
        self.update()
    end
    

    def paint(graphics : Graphics?) : Nil
    end
    

    def getHighScoresCanvas : HighScoresCanvas?
        return @highScoresCanvas
    end
end

