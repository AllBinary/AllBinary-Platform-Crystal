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

class GameCommandCanvas < MyCanvas
    include MenuListener
    include DisplayChangeEventListener
    include UpdateMyFontInterface
    @repaintProcessor : Processor? = nil

    def jf_repaintProcessor : Processor?
        @repaintProcessor
    end

    def jf_repaintProcessor=(value : Processor?) : Processor?
        @repaintProcessor = value
    end
    @gameInputStrings : GameInputStrings? = nil

    def jf_gameInputStrings : GameInputStrings?
        @gameInputStrings
    end

    def jf_gameInputStrings=(value : GameInputStrings?) : GameInputStrings?
        @gameInputStrings = value
    end
    @foregroundBasicColor : BasicColor? = nil

    def jf_foregroundBasicColor : BasicColor?
        @foregroundBasicColor
    end

    def jf_foregroundBasicColor=(value : BasicColor?) : BasicColor?
        @foregroundBasicColor = value
    end
    @backgroundBasicColor : BasicColor? = nil

    def jf_backgroundBasicColor : BasicColor?
        @backgroundBasicColor
    end

    def jf_backgroundBasicColor=(value : BasicColor?) : BasicColor?
        @backgroundBasicColor = value
    end
    @inputToGameKeyMapping : InputToGameKeyMapping? = nil

    def jf_inputToGameKeyMapping : InputToGameKeyMapping?
        @inputToGameKeyMapping
    end

    def jf_inputToGameKeyMapping=(value : InputToGameKeyMapping?) : InputToGameKeyMapping?
        @inputToGameKeyMapping = value
    end
    @gameKeyFactory : GameKeyFactory? = nil

    def jf_gameKeyFactory : GameKeyFactory?
        @gameKeyFactory
    end

    def jf_gameKeyFactory=(value : GameKeyFactory?) : GameKeyFactory?
        @gameKeyFactory = value
    end
    @gameKeyEventFactory : GameKeyEventFactory? = nil

    def jf_gameKeyEventFactory : GameKeyEventFactory?
        @gameKeyEventFactory
    end

    def jf_gameKeyEventFactory=(value : GameKeyEventFactory?) : GameKeyEventFactory?
        @gameKeyEventFactory = value
    end
    @downGameKeyEventHandler : DownGameKeyEventHandler? = nil

    def jf_downGameKeyEventHandler : DownGameKeyEventHandler?
        @downGameKeyEventHandler
    end

    def jf_downGameKeyEventHandler=(value : DownGameKeyEventHandler?) : DownGameKeyEventHandler?
        @downGameKeyEventHandler = value
    end
    @upGameKeyEventHandler : UpGameKeyEventHandler? = nil

    def jf_upGameKeyEventHandler : UpGameKeyEventHandler?
        @upGameKeyEventHandler
    end

    def jf_upGameKeyEventHandler=(value : UpGameKeyEventHandler?) : UpGameKeyEventHandler?
        @upGameKeyEventHandler = value
    end
    @repaintBehavior : RepaintBehavior? = nil

    def jf_repaintBehavior : RepaintBehavior?
        @repaintBehavior
    end

    def jf_repaintBehavior=(value : RepaintBehavior?) : RepaintBehavior?
        @repaintBehavior = value
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
    @foregroundColor : Int32 = 0

    def jf_foregroundColor : Int32
        @foregroundColor
    end

    def jf_foregroundColor=(value : Int32) : Int32
        @foregroundColor = value
    end
    @backgroundColor : Int32 = 0

    def jf_backgroundColor : Int32
        @backgroundColor
    end

    def jf_backgroundColor=(value : Int32) : Int32
        @backgroundColor = value
    end
    @menuInputProcessor : BasicMenuInputProcessor? = nil

    def jf_menuInputProcessor : BasicMenuInputProcessor?
        @menuInputProcessor
    end

    def jf_menuInputProcessor=(value : BasicMenuInputProcessor?) : BasicMenuInputProcessor?
        @menuInputProcessor = value
    end
    @menuPaintable : Paintable? = nil

    def jf_menuPaintable : Paintable?
        @menuPaintable
    end

    def jf_menuPaintable=(value : Paintable?) : Paintable?
        @menuPaintable = value
    end
    @menuForm : PaintableForm? = nil

    def jf_menuForm : PaintableForm?
        @menuForm
    end

    def jf_menuForm=(value : PaintableForm?) : PaintableForm?
        @menuForm = value
    end
    @isSingleKeyRepeatableProcessing : Bool = false

    def jf_isSingleKeyRepeatableProcessing : Bool
        @isSingleKeyRepeatableProcessing
    end

    def jf_isSingleKeyRepeatableProcessing=(value : Bool) : Bool
        @isSingleKeyRepeatableProcessing = value
    end
    @fontHeight : Int32 = 0

    def jf_fontHeight : Int32
        @fontHeight
    end

    def jf_fontHeight=(value : Int32) : Int32
        @fontHeight = value
    end

    def self.jst_id : Int32
        0
    end

    # Java field initializers run after the super constructor
    def jfields_GameCommandCanvas : Nil
    @repaintProcessor = ScreenRepaintProcessorFactory.getInstance().not_nil!.create(self)
    @gameInputStrings = GameInputStrings.getInstance()
    
    
    @inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().not_nil!.getPersistentInputMappingInstance().not_nil!.getInputMapping()
    @gameKeyFactory = GameKeyFactory.getInstance()
    @gameKeyEventFactory = GameKeyEventFactory.getInstance()
    @downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    @upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    
    @updateMyFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @myFontProcessor = @updateMyFontProcessor
    
    
    @menuInputProcessor = NoMenuInputProcessor.getInstance()
    @menuPaintable = NullPaintable.getInstance()
    @menuForm = PaintableForm.getNullPaintableForm()
    @isSingleKeyRepeatableProcessing = Features.getInstance().not_nil!.isFeature(InputFeatureFactory.getInstance().not_nil!.jf_SINGLE_KEY_REPEAT_PRESS)
    @fontHeight = 0
    end
    

    def jinit_GameCommandCanvas(cmdListener : CommandListener?, name : String, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_MyCanvas(name, CanvasStrings.getInstance().not_nil!.jf_EMPTY_CHILD_NAME_LIST)
        jfields_GameCommandCanvas()
        @repaintBehavior = RepaintBehavior.getInstance()
        @foregroundBasicColor = foregroundBasicColor
        @backgroundBasicColor = backgroundBasicColor
        @foregroundColor = @foregroundBasicColor.not_nil!.intValue()
        @backgroundColor = @backgroundBasicColor.not_nil!.intValue()
        self.initCommands(cmdListener)
        if cmdListener != NullCommandListener.jst_NULL_COMMAND_LISTENER
            begin
                self.initMenu()
                @repaintProcessor.not_nil!.process()
            rescue jexc1 : ::Exception
                jex1 = JR.jthrowable(jexc1)
                if jex1.is_a?(JException)
                    e = jex1.as(JException)
                raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
                else
                    raise jex1
                end
            end
        end
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        begin
            font : Font? = graphics.not_nil!.getFont()
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_START).not_nil!.append(@canvasStrings.not_nil!.jf_FD_WIDTH).not_nil!.appendint(MyFontProcessor.defaultCharWidth(font)).not_nil!.append(@canvasStrings.not_nil!.jf_FD_HEIGHT).not_nil!.appendint(font.not_nil!.getHeight()).not_nil!.toString(), self, @canvasStrings.not_nil!.jf_UPDATE_MEASUREMENT)
            @fontHeight = font.not_nil!.getHeight()
            rectangle : Rectangle? = self.createRectangle(@menuForm.not_nil!.size())
            @menuForm.not_nil!.init(rectangle, FormTypeFactory.getInstance().not_nil!.jf_VERTICAL_CENTER_FORM)
            self.update()
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @canvasStrings.not_nil!.jf_ON_DISPLAY_CHANGE_EVENT, e)
            else
                raise jex2
            end
        end
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onDisplayChangeEvent(displayChangeEvent : DisplayChangeEvent?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_START).not_nil!.append(DisplayInfoSingleton.getInstance().not_nil!.toString()).not_nil!.toString(), self, @canvasStrings.not_nil!.jf_ON_DISPLAY_CHANGE_EVENT)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().not_nil!.jf_CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    

    def initMenu : Nil
        form : ScrollSelectionForm? = self.createForm()
        @menuForm = form
        if form != ScrollSelectionFormNoneFactory.getInstance()
            self.setMenuInputProcessor(ImmediateCommandFormInputProcessor.new.jinit_ImmediateCommandFormInputProcessor(BasicArrayListD.new.jinit_BasicArrayListD(), -1, self, form))
            @menuPaintable = FormPaintable.new.jinit_FormPaintable(form)
        end
        @repaintBehavior.not_nil!.onChangeRepaint(self)
    end
    

    def createForm : ScrollSelectionForm?
        items : Array(ABCustomItem?)? = CommandTextItemArrayFactory.new.jinit_CommandTextItemArrayFactory(AllCommandsVisitor.new.jinit_AllCommandsVisitor()).not_nil!.getInstance(self.getCommandStack(), @backgroundBasicColor, @foregroundBasicColor)
        rectangle : Rectangle? = self.createRectangle(items.not_nil!.size)
        return CommandCurrentSelectionFormFactory.getInstance(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, items, rectangle, FormTypeFactory.getInstance().not_nil!.jf_VERTICAL_CENTER_FORM, 15, false, @backgroundBasicColor, @foregroundBasicColor)
    end
    

    def createRectangle(size : Int) : Rectangle?
        size = size.to_i32!
        height : Int32 = size &* @fontHeight
        startY : Int32 = (@displayInfo.not_nil!.getLastHeight() &* 2.tdiv(3)) &- height
        pointFactory : PointFactory? = PointFactory.getInstance()
        rectangle : Rectangle? = Rectangle.new.jinit_Rectangle(pointFactory.not_nil!.createXY(30, startY), @displayInfo.not_nil!.getLastWidth() &- 30, startY)
        return rectangle
    end
    

    def open : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, "open")
        BasicMotionGesturesHandler.getInstance().not_nil!.addListenerInterface(self.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().not_nil!.addListener(self.getMenuInputProcessor())
        DisplayChangeEventHandler.getInstance().not_nil!.addListenerInterface(self)
    end
    

    def close : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CLOSE)
        BasicMotionGesturesHandler.getInstance().not_nil!.removeListener(self.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().not_nil!.removeListener(self.getMenuInputProcessor())
        DisplayChangeEventHandler.getInstance().not_nil!.removeListener(self)
    end
    

    def update : Nil
        @repaintProcessor.not_nil!.process()
    end
    

    def getSourceId : Int32
        return GameCommandCanvas.jst_id
    end
    

    def keyPressed(keyCode : Int) : Nil
        keyCode = keyCode.to_i32!
        self.keyPressedByDevice(keyCode, 0)
    end
    

    def keyReleased(keyCode : Int) : Nil
        keyCode = keyCode.to_i32!
        self.keyReleasedByDevice(keyCode, 0)
    end
    

    def keyRepeated(keyCode : Int) : Nil
        keyCode = keyCode.to_i32!
        self.keyRepeatedByDevice(keyCode, 0)
    end
    

    def keyPressedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE).not_nil!.appendint(keyCode).not_nil!.toString(), self, @gameInputStrings.not_nil!.jf_KEY_PRESSED)
        self.addGameKeyEvent(keyCode, 0, false)
    end
    

    def keyReleasedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        self.removeGameKeyEvent(keyCode, deviceId, false)
    end
    

    def keyRepeatedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        if @isSingleKeyRepeatableProcessing
            self.addGameKeyEvent(keyCode, deviceId, true)
        end
    end
    

    def addGameKeyEvent(keyCode : Int, deviceId : Int, repeated : Bool) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        begin
            gameKey : GameKey? = @inputToGameKeyMapping.not_nil!.getInstanceForCanvas(self, keyCode)
            if gameKey != @gameKeyFactory.not_nil!.jf_NONE
                gameKeyEvent : GameKeyEvent? = @gameKeyEventFactory.not_nil!.getInstanceForInput(self, gameKey)
                @downGameKeyEventHandler.not_nil!.fireEvent(gameKeyEvent)
                @downGameKeyEventHandler.not_nil!.getInstanceForDevice(deviceId).not_nil!.fireEvent(gameKeyEvent)
            else
                @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@gameInputStrings.not_nil!.jf_NO_KEY).not_nil!.appendint(keyCode).not_nil!.toString(), self, @gameInputStrings.not_nil!.jf_ADD_KEY_EVENT)
            end
        rescue jexc3 : ::Exception
            jex3 = JR.jthrowable(jexc3)
            if jex3.is_a?(JException)
                e = jex3.as(JException)
            @logUtil.not_nil!.put("Key Event Error", self, @gameInputStrings.not_nil!.jf_ADD_KEY_EVENT, e)
            else
                raise jex3
            end
        end
    end
    

    def removeGameKeyEvent(keyCode : Int, deviceId : Int, repeated : Bool) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        begin
            gameKey : GameKey? = @inputToGameKeyMapping.not_nil!.getInstanceForCanvas(self, keyCode)
            if gameKey != @gameKeyFactory.not_nil!.jf_NONE
                gameKeyEvent : GameKeyEvent? = @gameKeyEventFactory.not_nil!.getInstanceForInput(self, gameKey)
                @upGameKeyEventHandler.not_nil!.fireEvent(gameKeyEvent)
                @upGameKeyEventHandler.not_nil!.getInstanceForDevice(deviceId).not_nil!.fireEvent(gameKeyEvent)
            else
                @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@gameInputStrings.not_nil!.jf_NO_KEY).not_nil!.appendint(keyCode).not_nil!.toString(), self, @gameInputStrings.not_nil!.jf_REMOVE_KEY_EVENT)
            end
        rescue jexc4 : ::Exception
            jex4 = JR.jthrowable(jexc4)
            if jex4.is_a?(JException)
                e = jex4.as(JException)
            @logUtil.not_nil!.put("Key Event Error", self, @gameInputStrings.not_nil!.jf_REMOVE_KEY_EVENT, e)
            else
                raise jex4
            end
        end
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        @menuPaintable.not_nil!.paint(graphics)
        @repaintBehavior.not_nil!.repaint(self)
    end
    

    def setMenuInputProcessor(menuInputProcessor : BasicMenuInputProcessor?) : Nil
        @menuInputProcessor = menuInputProcessor
    end
    

    def getMenuInputProcessor : BasicMenuInputProcessor?
        return @menuInputProcessor
    end
end

