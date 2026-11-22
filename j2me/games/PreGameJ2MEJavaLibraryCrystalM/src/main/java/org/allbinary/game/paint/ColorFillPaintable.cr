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

class ColorFillPaintable < ColorFillBasePaintable
    @displayInfoSingleton : DisplayInfoSingleton? = nil

    def jf_displayInfoSingleton : DisplayInfoSingleton?
        @displayInfoSingleton
    end

    def jf_displayInfoSingleton=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfoSingleton = value
    end

    # Java field initializers run after the super constructor
    def jfields_ColorFillPaintable : Nil
    @displayInfoSingleton = DisplayInfoSingleton.getInstance()
    end
    

    def jinit_ColorFillPaintable(basicColor : BasicColor?) : self
        jinit_ColorFillBasePaintable(basicColor)
        jfields_ColorFillPaintable()
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        graphics.not_nil!.setColor(@colorP)
        graphics.not_nil!.fillRect(0, 0, @displayInfoSingleton.not_nil!.getLastWidth(), @displayInfoSingleton.not_nil!.getLastHeight())
    end
end

