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

class ColorFillBasePaintable < Paintable
    include ColorCompositeInterface
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end
    @colorP : Int32 = 0

    def jf_colorP : Int32
        @colorP
    end

    def jf_colorP=(value : Int32) : Int32
        @colorP = value
    end

    # Java field initializers run after the super constructor
    def jfields_ColorFillBasePaintable : Nil
    @basicColor = BasicColorFactory.getInstance().not_nil!.jf_WHITE
    
    end
    

    def jinit_ColorFillBasePaintable(basicColor : BasicColor?) : self
        jinit_Paintable()
        jfields_ColorFillBasePaintable()
        self.setBasicColorP(basicColor)
        self
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        @basicColor = basicColor
        self.setColor(self.getBasicColorP().not_nil!.intValue())
    end
    

    def getBasicColorP : BasicColor?
        return @basicColor
    end
    

    def getColor : Int32
        return @colorP
    end
    

    def setColor(color : Int) : Nil
        color = color.to_i32!
        @colorP = color
    end
    

    def paint(graphics : Graphics?) : Nil
    end
end

