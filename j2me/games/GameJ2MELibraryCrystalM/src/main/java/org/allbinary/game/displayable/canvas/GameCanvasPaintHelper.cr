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

class GameCanvasPaintHelper < ProcessPaintable
    @gameCanvas : AllBinaryGameCanvas? = nil

    def jf_gameCanvas : AllBinaryGameCanvas?
        @gameCanvas
    end

    def jf_gameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @gameCanvas = value
    end
    

    def jinit_GameCanvasPaintHelper(gameCanvas : AllBinaryGameCanvas?) : self
        jinit_ProcessPaintable()
        @gameCanvas = gameCanvas
        self
    end
    

    def process : Nil
    end
    

    def paint(graphics : Graphics?) : Nil
        @gameCanvas.not_nil!.draw(graphics)
    end
end

