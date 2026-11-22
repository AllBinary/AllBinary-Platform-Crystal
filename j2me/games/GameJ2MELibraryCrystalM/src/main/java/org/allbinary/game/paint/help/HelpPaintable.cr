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
# package org.allbinary.game.paint.help

class HelpPaintable < Paintable
    include UpdateMyFontInterface
    @displayInfo : DisplayInfoSingleton? = nil

    def jf_displayInfo : DisplayInfoSingleton?
        @displayInfo
    end

    def jf_displayInfo=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfo = value
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
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end
    @title : String = ""

    def jf_title : String
        @title
    end

    def jf_title=(value : String) : String
        @title = value
    end
    @inputInfo : Array(String)? = nil

    def jf_inputInfo : Array(String)?
        @inputInfo
    end

    def jf_inputInfo=(value : Array(String)?) : Array(String)?
        @inputInfo = value
    end
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end
    @titleBeginWidth : Int32 = 0

    def jf_titleBeginWidth : Int32
        @titleBeginWidth
    end

    def jf_titleBeginWidth=(value : Int32) : Int32
        @titleBeginWidth = value
    end
    @beginWidthArray : Array(Int32)? = nil

    def jf_beginWidthArray : Array(Int32)?
        @beginWidthArray
    end

    def jf_beginWidthArray=(value : Array(Int32)?) : Array(Int32)?
        @beginWidthArray = value
    end
    @charHeight : Int32 = 0

    def jf_charHeight : Int32
        @charHeight
    end

    def jf_charHeight=(value : Int32) : Int32
        @charHeight = value
    end

    # Java field initializers run after the super constructor
    def jfields_HelpPaintable : Nil
    @displayInfo = DisplayInfoSingleton.getInstance()
    @updateMyFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @myFontProcessor = @updateMyFontProcessor
    @anchor = Anchor.jst_TOP_LEFT
    
    @inputInfo = StringUtil.getInstance().not_nil!.getArrayInstance()
    
    
    @beginWidthArray = NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY
    
    end
    

    def jinit_HelpPaintable(title : String, backgroundBasicColor : BasicColor?, basicColor : BasicColor?) : self
        jinit_Paintable()
        jfields_HelpPaintable()
        @title = title
        @basicColor = basicColor
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @titleBeginWidth = (JR.shr(font.not_nil!.stringWidth(@title), 1))
        @charHeight = font.not_nil!.getHeight()
        size : Int32 = @inputInfo.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            @beginWidthArray.not_nil![index] = (JR.shr(font.not_nil!.stringWidth(@inputInfo.not_nil![index]), 1))
        end
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def setInputInfoP(inputInfo : Array(String)?) : Nil
        @inputInfo = inputInfo
        @beginWidthArray = Array(Int32).new(@inputInfo.not_nil!.size, 0)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        halfWidth : Int32 = @displayInfo.not_nil!.getLastHalfWidth()
        graphics.not_nil!.setColor(@basicColor.not_nil!.intValue())
        graphics.not_nil!.drawString(@title, halfWidth &- @titleBeginWidth, @charHeight, @anchor)
        size : Int32 = @inputInfo.not_nil!.size
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            graphics.not_nil!.drawString(@inputInfo.not_nil![index], halfWidth &- @beginWidthArray.not_nil![index], (index &+ 3) &* @charHeight, @anchor)
        end
    end
end

