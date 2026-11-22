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

class EndGamePaintable < Paintable
    @gameCanvas : AllBinaryGameCanvas? = nil

    def jf_gameCanvas : AllBinaryGameCanvas?
        @gameCanvas
    end

    def jf_gameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @gameCanvas = value
    end
    

    def jinit_EndGamePaintable(gameCanvas : AllBinaryGameCanvas?) : self
        jinit_Paintable()
        @gameCanvas = gameCanvas
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        @gameCanvas.not_nil!.paintGameOver(graphics)
    end
end

