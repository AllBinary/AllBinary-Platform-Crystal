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

class StartIntermissionPaintable < InitUpdatePaintable
    include UpdateMyFontInterface
    @fontDebugFactory : FontDebugFactory? = nil

    def jf_fontDebugFactory : FontDebugFactory?
        @fontDebugFactory
    end

    def jf_fontDebugFactory=(value : FontDebugFactory?) : FontDebugFactory?
        @fontDebugFactory = value
    end
    @basicSetColorUtil : BasicColorSetUtil? = nil

    def jf_basicSetColorUtil : BasicColorSetUtil?
        @basicSetColorUtil
    end

    def jf_basicSetColorUtil=(value : BasicColorSetUtil?) : BasicColorSetUtil?
        @basicSetColorUtil = value
    end
    @gameCanvas : AllBinaryGameCanvas? = nil

    def jf_gameCanvas : AllBinaryGameCanvas?
        @gameCanvas
    end

    def jf_gameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @gameCanvas = value
    end
    @stringArray : Array(String)? = nil

    def jf_stringArray : Array(String)?
        @stringArray
    end

    def jf_stringArray=(value : Array(String)?) : Array(String)?
        @stringArray = value
    end
    @fontSize : Int32 = 0

    def jf_fontSize : Int32
        @fontSize
    end

    def jf_fontSize=(value : Int32) : Int32
        @fontSize = value
    end
    @font : Font? = nil

    def jf_font : Font?
        @font
    end

    def jf_font=(value : Font?) : Font?
        @font = value
    end
    @lastWidth : Array(Int32)? = nil

    def jf_lastWidth : Array(Int32)?
        @lastWidth
    end

    def jf_lastWidth=(value : Array(Int32)?) : Array(Int32)?
        @lastWidth = value
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
    @lineYOffsetArray : Array(Int32)? = nil

    def jf_lineYOffsetArray : Array(Int32)?
        @lineYOffsetArray
    end

    def jf_lineYOffsetArray=(value : Array(Int32)?) : Array(Int32)?
        @lineYOffsetArray = value
    end
    @hasChanged : Bool = false

    def jf_hasChanged : Bool
        @hasChanged
    end

    def jf_hasChanged=(value : Bool) : Bool
        @hasChanged = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end
    @fontHeightP : Int32 = 0

    def jf_fontHeightP : Int32
        @fontHeightP
    end

    def jf_fontHeightP=(value : Int32) : Int32
        @fontHeightP = value
    end
    @j_BEGIN_LEVEL : String = ""

    def jf_BEGIN_LEVEL : String
        @j_BEGIN_LEVEL
    end

    def jf_BEGIN_LEVEL=(value : String) : String
        @j_BEGIN_LEVEL = value
    end
    @j_EMPTY_STRING : String = ""

    def jf_EMPTY_STRING : String
        @j_EMPTY_STRING
    end

    def jf_EMPTY_STRING=(value : String) : String
        @j_EMPTY_STRING = value
    end

    # Java field initializers run after the super constructor
    def jfields_StartIntermissionPaintable : Nil
    @fontDebugFactory = FontDebugFactory.getInstance()
    @basicSetColorUtil = BasicColorSetUtil.getInstance()
    
    
    
    
    
    @updateMyFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @myFontProcessor = @updateMyFontProcessor
    @basicColor = BasicColorFactory.getInstance().not_nil!.jf_BLACK
    
    @lineYOffsetArray = NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY
    @hasChanged = true
    @anchor = Anchor.jst_TOP_LEFT
    
    @j_BEGIN_LEVEL = "Begin Level "
    @j_EMPTY_STRING = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def jinit_StartIntermissionPaintable(gameCanvas : AllBinaryGameCanvas?, stringArray : Array(String)?, basicColor : BasicColor?, font : Font?) : self
        jinit_InitUpdatePaintable()
        jfields_StartIntermissionPaintable()
        @gameCanvas = gameCanvas
        @stringArray = stringArray
        @lastWidth = Array(Int32).new(@stringArray.not_nil!.size, 0)
        self.setBasicColorP(basicColor)
        @color = basicColor.not_nil!.intValue()
        @fontSize = font.not_nil!.getSize()
        @font = font
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @fontHeightP = font.not_nil!.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        existingFont : Font? = graphics.not_nil!.getFont()
        @fontDebugFactory.not_nil!.setFont(@font, graphics)
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        @basicSetColorUtil.not_nil!.setBasicColorP3(graphics, @basicColor, @color)
        beginWidth : Int32 = 0
        index : Int32 = @lineYOffsetArray.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            if @hasChanged
                @lastWidth.not_nil![index] = (JR.shr(graphics.not_nil!.getFont().not_nil!.stringWidth(@stringArray.not_nil![index]), 1))
            end
            beginWidth = @lastWidth.not_nil![index]
            graphics.not_nil!.drawString(@stringArray.not_nil![index], displayInfo.not_nil!.getLastHalfWidth() &- beginWidth, displayInfo.not_nil!.getLastHalfHeight() &- @lineYOffsetArray.not_nil![index], @anchor)
        end
        @hasChanged = false
        @fontDebugFactory.not_nil!.setFont(existingFont, graphics)
    end
    

    def update : Nil
        level : Int32 = @gameCanvas.not_nil!.getLayerManager().not_nil!.getGameInfo().not_nil!.getCurrentLevel()
        @stringArray.not_nil![0] = StringMaker.new.jinit_StringMaker().not_nil!.append(@j_BEGIN_LEVEL).not_nil!.appendint(level).not_nil!.toString()
        index : Int32 = @stringArray.not_nil!.size &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 1
            @stringArray.not_nil![index] = @j_EMPTY_STRING
        end
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        @basicColor = basicColor
    end
    

    def getBasicColorP : BasicColor?
        return @basicColor
    end
end

