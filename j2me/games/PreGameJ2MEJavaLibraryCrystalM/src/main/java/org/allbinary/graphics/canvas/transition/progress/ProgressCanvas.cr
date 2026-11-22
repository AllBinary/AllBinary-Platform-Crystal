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
# package org.allbinary.graphics.canvas.transition.progress

class ProgressCanvas < RunnableCanvas
    include PaintableInterface
    include UpdateMyFontInterface
    @hasPainted : Bool = false

    def jf_hasPainted : Bool
        @hasPainted
    end

    def jf_hasPainted=(value : Bool) : Bool
        @hasPainted = value
    end
    @backgroundBasicColor : BasicColor? = nil

    def jf_backgroundBasicColor : BasicColor?
        @backgroundBasicColor
    end

    def jf_backgroundBasicColor=(value : BasicColor?) : BasicColor?
        @backgroundBasicColor = value
    end
    @j_GAUGE_PAINTABLE : Paintable? = nil

    def jf_GAUGE_PAINTABLE : Paintable?
        @j_GAUGE_PAINTABLE
    end

    def jf_GAUGE_PAINTABLE=(value : Paintable?) : Paintable?
        @j_GAUGE_PAINTABLE = value
    end
    @maxValue : Float32 = 0_f32

    def jf_maxValue : Float32
        @maxValue
    end

    def jf_maxValue=(value : Float32) : Float32
        @maxValue = value
    end
    @gauge : ABCustomGaugeItem? = nil

    def jf_gauge : ABCustomGaugeItem?
        @gauge
    end

    def jf_gauge=(value : ABCustomGaugeItem?) : ABCustomGaugeItem?
        @gauge = value
    end
    @j_TEXT : String = ""

    def jf_TEXT : String
        @j_TEXT
    end

    def jf_TEXT=(value : String) : String
        @j_TEXT = value
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
    @allbinaryMidlet : AllBinaryMidlet? = nil

    def jf_allbinaryMidlet : AllBinaryMidlet?
        @allbinaryMidlet
    end

    def jf_allbinaryMidlet=(value : AllBinaryMidlet?) : AllBinaryMidlet?
        @allbinaryMidlet = value
    end
    @value : Float32 = 0_f32

    def jf_value : Float32
        @value
    end

    def jf_value=(value : Float32) : Float32
        @value = value
    end
    @text : String = ""

    def jf_text : String
        @text
    end

    def jf_text=(value : String) : String
        @text = value
    end
    @background : Bool = false

    def jf_background : Bool
        @background
    end

    def jf_background=(value : Bool) : Bool
        @background = value
    end
    @paintable : PaintableInterface? = nil

    def jf_paintable : PaintableInterface?
        @paintable
    end

    def jf_paintable=(value : PaintableInterface?) : PaintableInterface?
        @paintable = value
    end
    @inProgress : Bool = false

    def jf_inProgress : Bool
        @inProgress
    end

    def jf_inProgress=(value : Bool) : Bool
        @inProgress = value
    end
    @j_IN_GAME_PROCESSOR : Processor? = nil

    def jf_IN_GAME_PROCESSOR : Processor?
        @j_IN_GAME_PROCESSOR
    end

    def jf_IN_GAME_PROCESSOR=(value : Processor?) : Processor?
        @j_IN_GAME_PROCESSOR = value
    end
    @inGameProcessor : Processor? = nil

    def jf_inGameProcessor : Processor?
        @inGameProcessor
    end

    def jf_inGameProcessor=(value : Processor?) : Processor?
        @inGameProcessor = value
    end
    @progressEndListener : ProgressEndListener? = nil

    def jf_progressEndListener : ProgressEndListener?
        @progressEndListener
    end

    def jf_progressEndListener=(value : ProgressEndListener?) : ProgressEndListener?
        @progressEndListener = value
    end
    @backgroundLabel : String = ""

    def jf_backgroundLabel : String
        @backgroundLabel
    end

    def jf_backgroundLabel=(value : String) : String
        @backgroundLabel = value
    end
    @j_START_BACKGROUND : String = ""

    def jf_START_BACKGROUND : String
        @j_START_BACKGROUND
    end

    def jf_START_BACKGROUND=(value : String) : String
        @j_START_BACKGROUND = value
    end
    @j_ADD_PORTION : String = ""

    def jf_ADD_PORTION : String
        @j_ADD_PORTION
    end

    def jf_ADD_PORTION=(value : String) : String
        @j_ADD_PORTION = value
    end
    @j_ADD_EARLY_PORTION : String = ""

    def jf_ADD_EARLY_PORTION : String
        @j_ADD_EARLY_PORTION
    end

    def jf_ADD_EARLY_PORTION=(value : String) : String
        @j_ADD_EARLY_PORTION = value
    end

    # Java field initializers run after the super constructor
    def jfields_ProgressCanvas : Nil
    
    
    @j_GAUGE_PAINTABLE = ProgressPaintable.new.jinit_ProgressPaintable(self)
    @maxValue = 100.0_f32
    
    @j_TEXT = @commonStrings.not_nil!.jf_LOADING
    @updateMyFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @myFontProcessor = @updateMyFontProcessor
    @allbinaryMidlet = AllBinaryMidlet.getNullInstance()
    
    @text = @j_TEXT
    @background = true
    @paintable = @j_GAUGE_PAINTABLE
    @inProgress = false
    @j_IN_GAME_PROCESSOR = ProgressCanvas_j1.new.jinit_ProgressCanvas_j1(self)
    @inGameProcessor = Processor.getInstance()
    @progressEndListener = ProgressEndListener.jst_instance
    @backgroundLabel = "Background AI Game Loading..."
    @j_START_BACKGROUND = "startBackground"
    @j_ADD_PORTION = "addPortion"
    @j_ADD_EARLY_PORTION = "addEarlyPortion"
    end
    

    def jinit_ProgressCanvas(title : String, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_RunnableCanvas(NullCommandListener.jst_NULL_COMMAND_LISTENER, CanvasStrings.getInstance().not_nil!.jf_EMPTY_CHILD_NAME_LIST, false)
        jfields_ProgressCanvas()
        @backgroundBasicColor = backgroundBasicColor
        @gauge = ABCustomGaugeItem.new.jinit_ABCustomGaugeItem(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, JR.d2i(@maxValue), 0, backgroundBasicColor, foregroundBasicColor)
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @gauge.not_nil!.setHeight(font.not_nil!.getHeight() &+ 2)
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def init(gameMidlet : AllBinaryMidlet?) : Nil
        @allbinaryMidlet = gameMidlet
    end
    

    def update(graphics : Graphics?) : Nil
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
    end
    

    def getMaxValue : Float32
        return @maxValue
    end
    

    def start : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_START_METHOD_NAME)
        self.setBackground(true)
        @gauge.not_nil!.setHeight(30)
        @gauge.not_nil!.setLabel(@commonStrings.not_nil!.jf_PLEASE_WAIT)
        self.setText(@j_TEXT)
        self.setValue(0)
        @inGameProcessor = Processor.getInstance()
        @paintable = @j_GAUGE_PAINTABLE
        @inProgress = true
    end
    

    def startBackground(background : Bool) : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @j_START_BACKGROUND)
        self.setBackground(background)
        @myFontProcessor = @updateMyFontProcessor
        @gauge.not_nil!.setLabel(@backgroundLabel)
        self.setText(@j_TEXT)
        self.setValue(0)
        @inGameProcessor = Processor.getInstance()
        @paintable = @j_GAUGE_PAINTABLE
    end
    

    def endActual : Nil
        @allbinaryMidlet.not_nil!.commandAction(GameCommandsFactory.getInstance().not_nil!.jf_SHOW_GAME_CANVAS, NullCanvas.jst_NULL_CANVAS)
        @inProgress = false
        self.inGame()
    end
    

    def inGame : Nil
        @progressEndListener.not_nil!.onEndEvent()
        @inGameProcessor = @j_IN_GAME_PROCESSOR
    end
    

    def end_ : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_END_METHOD_NAME)
        @gauge.not_nil!.setValue(self.getMaxValue())
        self.endActual()
        @paintable = NullPaintable.getInstance()
    end
    

    def endFromInitialLazyLoadingComplete : Nil
        @progressEndListener.not_nil!.onEndEvent()
        @gauge.not_nil!.setValue(self.getMaxValue())
        @inGameProcessor = @j_IN_GAME_PROCESSOR
    end
    

    def isInGame : Bool
        if @inGameProcessor == @j_IN_GAME_PROCESSOR
            return true
        end
        return false
    end
    

    def endIfPaintedSinceStart : Nil
    end
    

    def addEarlyPortion(value : Int, text : String, index : Int) : Nil
        value = value.to_i32!
        index = index.to_i32!
        self.setText(StringMaker.new.jinit_StringMaker().not_nil!.append(text).not_nil!.append(SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(index).not_nil!.toString()).not_nil!.toString())
        @gauge.not_nil!.setValue(@gauge.not_nil!.getValue() + self.getMaxValue() / (value).to_f32)
    end
    

    def addPortion(value : Int, text : String, index : Int) : Nil
        value = value.to_i32!
        index = index.to_i32!
        self.setText(StringMaker.new.jinit_StringMaker().not_nil!.append(text).not_nil!.append(SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(index).not_nil!.toString()).not_nil!.toString())
        PreLogUtil.put(@text, self, @j_ADD_PORTION)
        @gauge.not_nil!.setValue(@gauge.not_nil!.getValue() + self.getMaxValue() / (value).to_f32)
    end
    

    def addNormalPortion(value : Int, text : String) : Nil
        value = value.to_i32!
        if @text != text
            PreLogUtil.put(text, self, @j_ADD_PORTION)
        end
        self.setText(text)
        @gauge.not_nil!.setValue(@gauge.not_nil!.getValue() + self.getMaxValue() / (value).to_f32)
    end
    

    def setValue(value : Int) : Nil
        value = value.to_i32!
        @value = (value).to_f32
        @gauge.not_nil!.setValue((value).to_f32)
    end
    

    def paint(graphics : Graphics?) : Nil
        @paintable.not_nil!.paint(graphics)
    end
    

    def paint2(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        graphics.not_nil!.setColor(@backgroundBasicColor.not_nil!.intValue())
        graphics.not_nil!.fillRect(0, 0, @displayInfo.not_nil!.getLastWidth(), @displayInfo.not_nil!.getLastHeight())
        @gauge.not_nil!.paintXY(graphics, 0, 0)
        @hasPainted = true
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
    

    def getValue : Float32
        return @value
    end
    

    def setText(text : String) : Nil
        @text = text
    end
    

    def getText : String
        return @text
    end
    

    def setBackground(background : Bool) : Nil
        @background = background
    end
    

    def isBackground : Bool
        return @background
    end
end

class ProgressCanvas_j1 < Processor
    @jouter : ProgressCanvas? = nil
    @pathFindingThreadPool : ThreadPool? = nil

    def jinit_ProgressCanvas_j1(jouter : ProgressCanvas?) : self
        @jouter = jouter
        jinit_Processor()
        @pathFindingThreadPool = PathFindingThreadPool.getInstance()
        self
    end


        def process : Nil
            @pathFindingThreadPool.not_nil!.runAPriorityTask()
        end
end

