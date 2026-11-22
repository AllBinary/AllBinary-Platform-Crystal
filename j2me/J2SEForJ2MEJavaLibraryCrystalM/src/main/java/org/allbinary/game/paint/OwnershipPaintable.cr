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

class OwnershipPaintable < Paintable
    include UpdateMyFontInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @displayInfo : DisplayInfoSingleton? = nil

    def jf_displayInfo : DisplayInfoSingleton?
        @displayInfo
    end

    def jf_displayInfo=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfo = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @j_COPYRIGHT : String = ""

    def jf_COPYRIGHT : String
        @j_COPYRIGHT
    end

    def jf_COPYRIGHT=(value : String) : String
        @j_COPYRIGHT = value
    end
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end
    @color : Int32 = 0

    def jf_color : Int32
        @color
    end

    def jf_color=(value : Int32) : Int32
        @color = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end
    @j_COPYRIGHT_Y : Int32 = 0

    def jf_COPYRIGHT_Y : Int32
        @j_COPYRIGHT_Y
    end

    def jf_COPYRIGHT_Y=(value : Int32) : Int32
        @j_COPYRIGHT_Y = value
    end
    @beginWidth : Int32 = 0

    def jf_beginWidth : Int32
        @beginWidth
    end

    def jf_beginWidth=(value : Int32) : Int32
        @beginWidth = value
    end
    

    def self.getInstance : OwnershipPaintable?
        return OwnershipPaintable.new.jinit_OwnershipPaintable()
    end

    # Java field initializers run after the super constructor
    def jfields_OwnershipPaintable : Nil
    @logUtil = LogUtil.getInstance()
    @displayInfo = DisplayInfoSingleton.getInstance()
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @j_COPYRIGHT = "AllBinary Copyright (c) 2011"
    @basicColor = BasicColorFactory.getInstance().not_nil!.jf_WHITE
    @color = @basicColor.not_nil!.intValue()
    @anchor = Anchor.jst_TOP_LEFT
    
    
    end
    

    def jinit_OwnershipPaintable : self
        jinit_Paintable()
        jfields_OwnershipPaintable()
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @j_COPYRIGHT_Y = 2 &* font.not_nil!.getHeight()
        @beginWidth = (JR.shr(font.not_nil!.stringWidth(@j_COPYRIGHT), 1))
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        @basicColor = basicColor
        @color = basicColor.not_nil!.intValue()
    end
    

    def getBasicColorP : BasicColor?
        return @basicColor
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        graphics.not_nil!.setColor(@color)
        halfWidth : Int32 = @displayInfo.not_nil!.getLastHalfWidth()
        height : Int32 = @displayInfo.not_nil!.getLastHeight()
        graphics.not_nil!.drawString(@j_COPYRIGHT, halfWidth &- @beginWidth, height &- @j_COPYRIGHT_Y, @anchor)
    end
end

