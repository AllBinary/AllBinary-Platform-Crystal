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
# package org.allbinary.graphics.paint

class SimpleTextPaintable < Paintable
    include UpdateMyFontInterface
    @displayInfoSingleton : DisplayInfoSingleton? = nil

    def jf_displayInfoSingleton : DisplayInfoSingleton?
        @displayInfoSingleton
    end

    def jf_displayInfoSingleton=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfoSingleton = value
    end
    @updateMyFontProcessor : MyFontProcessor? = nil

    def jf_updateMyFontProcessor : MyFontProcessor?
        @updateMyFontProcessor
    end

    def jf_updateMyFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @updateMyFontProcessor = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @text : String = ""

    def jf_text : String
        @text
    end

    def jf_text=(value : String) : String
        @text = value
    end
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end
    @topScoresWidth : Int32 = 0

    def jf_topScoresWidth : Int32
        @topScoresWidth
    end

    def jf_topScoresWidth=(value : Int32) : Int32
        @topScoresWidth = value
    end
    @fontHeight : Int32 = 0

    def jf_fontHeight : Int32
        @fontHeight
    end

    def jf_fontHeight=(value : Int32) : Int32
        @fontHeight = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end

    # Java field initializers run after the super constructor
    def jfields_SimpleTextPaintable : Nil
    @displayInfoSingleton = DisplayInfoSingleton.getInstance()
    @updateMyFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @myFontProcessor = @updateMyFontProcessor
    
    
    @topScoresWidth = 0
    @fontHeight = 0
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_SimpleTextPaintable(text : String, basicColor : BasicColor?) : self
        jinit_Paintable()
        jfields_SimpleTextPaintable()
        @text = text
        @basicColor = basicColor
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @topScoresWidth = (JR.shr(font.not_nil!.stringWidth(@text), 1))
        @fontHeight = font.not_nil!.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        width : Int32 = @displayInfoSingleton.not_nil!.getLast().not_nil![@displayInfoSingleton.not_nil!.jf_WIDTH]
        graphics.not_nil!.setColor(self.getBasicColorP().not_nil!.intValue())
        graphics.not_nil!.drawString(@text, (JR.shr(width, 1)) &- @topScoresWidth, @fontHeight, @anchor)
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        @basicColor = basicColor
    end
    

    def getBasicColorP : BasicColor?
        return @basicColor
    end
    

    def setText(text : String) : Nil
        @text = text
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def getText : String
        return @text
    end
end

