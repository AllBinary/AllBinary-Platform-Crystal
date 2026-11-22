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

class ScoreHudWidget < NumberStringHud
    

    def self.getInstance(maxscore : Int, location : Int, direction : Int) : ScoreHudWidget?
        maxscore = maxscore.to_i32!
        location = location.to_i32!
        direction = direction.to_i32!
        return ScoreHudWidget.new.jinit_ScoreHudWidget(maxscore, location, direction, 2, BasicColorFactory.getInstance().not_nil!.jf_GREY)
    end
    

    def jinit_ScoreHudWidget(maxscore : Int, location : Int, direction : Int, bufferZone : Int, basicColor : BasicColor?) : self
        maxscore = maxscore.to_i32!
        location = location.to_i32!
        direction = direction.to_i32!
        bufferZone = bufferZone.to_i32!
        jinit_NumberStringHud("Pts ", maxscore, location, direction, bufferZone, basicColor)
        @updateMaxHeight = 14
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @updateMaxWidth = font.not_nil!.getSize() &* 5
        super(graphics)
    end
end

