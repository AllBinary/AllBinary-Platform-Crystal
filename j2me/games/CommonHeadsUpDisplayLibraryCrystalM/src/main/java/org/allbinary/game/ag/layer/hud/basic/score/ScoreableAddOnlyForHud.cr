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
# package org.allbinary.game.ag.layer.hud.basic.score

class ScoreableAddOnlyForHud < Scoreable
    @scoreHudWidget : ScoreHudWidget? = nil

    def jf_scoreHudWidget : ScoreHudWidget?
        @scoreHudWidget
    end

    def jf_scoreHudWidget=(value : ScoreHudWidget?) : ScoreHudWidget?
        @scoreHudWidget = value
    end
    

    def jinit_ScoreableAddOnlyForHud(scoreVectorGraphic : ScoreHudWidget?) : self
        jinit_Scoreable(0)
        @scoreHudWidget = scoreVectorGraphic
        self.getScoreHudWidget().not_nil!.set(0)
        self
    end
    

    def removePoints(points : Int) : Nil
        points = points.to_i32!
    end
    

    def addPoints(points : Int) : Nil
        points = points.to_i32!
        super(points)
        self.getScoreHudWidget().not_nil!.add(points)
    end
    

    def getScoreHudWidget : ScoreHudWidget?
        return @scoreHudWidget
    end
end

