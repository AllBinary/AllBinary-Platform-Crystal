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
# package org.allbinary.game.paint

class OverScanColorFillPaintable < ColorFillPaintable
    

    def jinit_OverScanColorFillPaintable(basicColor : BasicColor?) : self
        jinit_ColorFillPaintable(basicColor)
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        graphics.not_nil!.setColor(@colorP)
        graphics.not_nil!.fillRect(JR.neg(graphics.not_nil!.getClipX()), JR.neg(graphics.not_nil!.getClipY()), @displayInfoSingleton.not_nil!.getLastWidth() &+ (graphics.not_nil!.getClipX() &* 2), @displayInfoSingleton.not_nil!.getLastHeight() &+ (graphics.not_nil!.getClipY() &* 2))
    end
end

