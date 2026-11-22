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

class StartCanvas < RunnableCanvas
    include GameCanvasRunnableInterface
    include MenuListener
    include DisplayChangeEventListener
    @basicColorFactory : BasicColorFactory? = nil

    def jf_basicColorFactory : BasicColorFactory?
        @basicColorFactory
    end

    def jf_basicColorFactory=(value : BasicColorFactory?) : BasicColorFactory?
        @basicColorFactory = value
    end
    @features : Features? = nil

    def jf_features : Features?
        @features
    end

    def jf_features=(value : Features?) : Features?
        @features = value
    end
    @openGLFeatureFactory : OpenGLFeatureFactory? = nil

    def jf_openGLFeatureFactory : OpenGLFeatureFactory?
        @openGLFeatureFactory
    end

    def jf_openGLFeatureFactory=(value : OpenGLFeatureFactory?) : OpenGLFeatureFactory?
        @openGLFeatureFactory = value
    end
    @myCommandsFactory : MyCommandsFactory? = nil

    def jf_myCommandsFactory : MyCommandsFactory?
        @myCommandsFactory
    end

    def jf_myCommandsFactory=(value : MyCommandsFactory?) : MyCommandsFactory?
        @myCommandsFactory = value
    end
    @gameAdStateFactory : GameAdStateFactory? = nil

    def jf_gameAdStateFactory : GameAdStateFactory?
        @gameAdStateFactory
    end

    def jf_gameAdStateFactory=(value : GameAdStateFactory?) : GameAdStateFactory?
        @gameAdStateFactory = value
    end
    @gameStateFactory : GameStateFactory? = nil

    def jf_gameStateFactory : GameStateFactory?
        @gameStateFactory
    end

    def jf_gameStateFactory=(value : GameStateFactory?) : GameStateFactory?
        @gameStateFactory = value
    end
    @gameInputStrings : GameInputStrings? = nil

    def jf_gameInputStrings : GameInputStrings?
        @gameInputStrings
    end

    def jf_gameInputStrings=(value : GameInputStrings?) : GameInputStrings?
        @gameInputStrings = value
    end
    @formUtil : FormUtil? = nil

    def jf_formUtil : FormUtil?
        @formUtil
    end

    def jf_formUtil=(value : FormUtil?) : FormUtil?
        @formUtil = value
    end
    @basicGameDemoPaintable : StatePaintable? = nil

    def jf_basicGameDemoPaintable : StatePaintable?
        @basicGameDemoPaintable
    end

    def jf_basicGameDemoPaintable=(value : StatePaintable?) : StatePaintable?
        @basicGameDemoPaintable = value
    end
    @specialAnimationInterface : SpecialAnimation? = nil

    def jf_specialAnimationInterface : SpecialAnimation?
        @specialAnimationInterface
    end

    def jf_specialAnimationInterface=(value : SpecialAnimation?) : SpecialAnimation?
        @specialAnimationInterface = value
    end
    @paintedSpecialAnimationInterface : Animation? = nil

    def jf_paintedSpecialAnimationInterface : Animation?
        @paintedSpecialAnimationInterface
    end

    def jf_paintedSpecialAnimationInterface=(value : Animation?) : Animation?
        @paintedSpecialAnimationInterface = value
    end
    @fullScreenUtil : FullScreenUtil? = nil

    def jf_fullScreenUtil : FullScreenUtil?
        @fullScreenUtil
    end

    def jf_fullScreenUtil=(value : FullScreenUtil?) : FullScreenUtil?
        @fullScreenUtil = value
    end
    @highScoresHelper : HighScoresHelper? = nil

    def jf_highScoresHelper : HighScoresHelper?
        @highScoresHelper
    end

    def jf_highScoresHelper=(value : HighScoresHelper?) : HighScoresHelper?
        @highScoresHelper = value
    end
    @realHighScoresPaintable : HighScoresPaintable? = nil

    def jf_realHighScoresPaintable : HighScoresPaintable?
        @realHighScoresPaintable
    end

    def jf_realHighScoresPaintable=(value : HighScoresPaintable?) : HighScoresPaintable?
        @realHighScoresPaintable = value
    end
    @highScoresPaintable : Paintable? = nil

    def jf_highScoresPaintable : Paintable?
        @highScoresPaintable
    end

    def jf_highScoresPaintable=(value : Paintable?) : Paintable?
        @highScoresPaintable = value
    end
    @state : Int32 = 0

    def jf_state : Int32
        @state
    end

    def jf_state=(value : Int32) : Int32
        @state = value
    end
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end
    @highScoresFactoryInterface : HighScoresFactoryInterface? = nil

    def jf_highScoresFactoryInterface : HighScoresFactoryInterface?
        @highScoresFactoryInterface
    end

    def jf_highScoresFactoryInterface=(value : HighScoresFactoryInterface?) : HighScoresFactoryInterface?
        @highScoresFactoryInterface = value
    end
    @menuInputProcessor : BasicMenuInputProcessor? = nil

    def jf_menuInputProcessor : BasicMenuInputProcessor?
        @menuInputProcessor
    end

    def jf_menuInputProcessor=(value : BasicMenuInputProcessor?) : BasicMenuInputProcessor?
        @menuInputProcessor = value
    end
    @menuForm : ScrollSelectionForm? = nil

    def jf_menuForm : ScrollSelectionForm?
        @menuForm
    end

    def jf_menuForm=(value : ScrollSelectionForm?) : ScrollSelectionForm?
        @menuForm = value
    end
    @gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory? = nil

    def jf_gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory?
        @gameInitializationInterfaceFactoryInterface
    end

    def jf_gameInitializationInterfaceFactoryInterface=(value : BasicBuildGameInitializerFactory?) : BasicBuildGameInitializerFactory?
        @gameInitializationInterfaceFactoryInterface = value
    end
    @initialized : Bool = false

    def jf_initialized : Bool
        @initialized
    end

    def jf_initialized=(value : Bool) : Bool
        @initialized = value
    end
    @defaultPaintableInterface : Paintable? = nil

    def jf_defaultPaintableInterface : Paintable?
        @defaultPaintableInterface
    end

    def jf_defaultPaintableInterface=(value : Paintable?) : Paintable?
        @defaultPaintableInterface = value
    end
    @paintableInterface : PaintableInterface? = nil

    def jf_paintableInterface : PaintableInterface?
        @paintableInterface
    end

    def jf_paintableInterface=(value : PaintableInterface?) : PaintableInterface?
        @paintableInterface = value
    end
    @overlayPaintable : InitUpdatePaintable? = nil

    def jf_overlayPaintable : InitUpdatePaintable?
        @overlayPaintable
    end

    def jf_overlayPaintable=(value : InitUpdatePaintable?) : InitUpdatePaintable?
        @overlayPaintable = value
    end
    @tempWait : Int32 = 0

    def jf_tempWait : Int32
        @tempWait
    end

    def jf_tempWait=(value : Int32) : Int32
        @tempWait = value
    end
    @inputToGameKeyMapping : InputToGameKeyMapping? = nil

    def jf_inputToGameKeyMapping : InputToGameKeyMapping?
        @inputToGameKeyMapping
    end

    def jf_inputToGameKeyMapping=(value : InputToGameKeyMapping?) : InputToGameKeyMapping?
        @inputToGameKeyMapping = value
    end
    @gameRunnable : GameRunnable? = nil

    def jf_gameRunnable : GameRunnable?
        @gameRunnable
    end

    def jf_gameRunnable=(value : GameRunnable?) : GameRunnable?
        @gameRunnable = value
    end
    @progressPaintable : PaintableInterface? = nil

    def jf_progressPaintable : PaintableInterface?
        @progressPaintable
    end

    def jf_progressPaintable=(value : PaintableInterface?) : PaintableInterface?
        @progressPaintable = value
    end
    @isSingleKeyRepeatableProcessing : Bool = false

    def jf_isSingleKeyRepeatableProcessing : Bool
        @isSingleKeyRepeatableProcessing
    end

    def jf_isSingleKeyRepeatableProcessing=(value : Bool) : Bool
        @isSingleKeyRepeatableProcessing = value
    end
    @j_NONE : GameKey? = nil

    def jf_NONE : GameKey?
        @j_NONE
    end

    def jf_NONE=(value : GameKey?) : GameKey?
        @j_NONE = value
    end
    @gameKeyEventFactory : GameKeyEventFactory? = nil

    def jf_gameKeyEventFactory : GameKeyEventFactory?
        @gameKeyEventFactory
    end

    def jf_gameKeyEventFactory=(value : GameKeyEventFactory?) : GameKeyEventFactory?
        @gameKeyEventFactory = value
    end
    @j_SET_STATE : String = ""

    def jf_SET_STATE : String
        @j_SET_STATE
    end

    def jf_SET_STATE=(value : String) : String
        @j_SET_STATE = value
    end
    @baseGameStatistics : BaseGameStatistics? = nil

    def jf_baseGameStatistics : BaseGameStatistics?
        @baseGameStatistics
    end

    def jf_baseGameStatistics=(value : BaseGameStatistics?) : BaseGameStatistics?
        @baseGameStatistics = value
    end

    def self.jst_id : Int32
        0
    end

    def self.jst_BOT_GAME_STATS : String
        "Bot Game Statistics: "
    end

    # Java field initializers run after the super constructor
    def jfields_StartCanvas : Nil
    @basicColorFactory = BasicColorFactory.getInstance()
    @features = Features.getInstance()
    @openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
    @myCommandsFactory = MyCommandsFactory.getInstance()
    @gameAdStateFactory = GameAdStateFactory.getInstance()
    @gameStateFactory = GameStateFactory.getInstance()
    @gameInputStrings = GameInputStrings.getInstance()
    @formUtil = FormUtil.getInstance()
    @basicGameDemoPaintable = StatePaintableFactory.getInstance()
    @specialAnimationInterface = SpecialAnimation.getInstance()
    @paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
    @fullScreenUtil = FullScreenUtil.getInstance()
    @highScoresHelper = HighScoresHelper.new.jinit_HighScoresHelper()
    @realHighScoresPaintable = HighScoresPaintable.new.jinit_HighScoresPaintable()
    @highScoresPaintable = NullPaintable.getInstance()
    @state = 0
    @timeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(6000)
    
    @menuInputProcessor = NoMenuInputProcessor.getInstance()
    @menuForm = ScrollSelectionForm.getNullScrollSelectionForm()
    
    
    @defaultPaintableInterface = NullPaintable.getInstance()
    @paintableInterface = NullPaintable.getInstance()
    
    @tempWait = NullWaitGameRunnable.getInstance().not_nil!.jf_WAIT
    @inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().not_nil!.getPersistentInputMappingInstance().not_nil!.getInputMapping()
    @gameRunnable = NullWaitGameRunnable.getInstance()
    @progressPaintable = ProgressCanvasFactory.getLazyInstance()
    @isSingleKeyRepeatableProcessing = @features.not_nil!.isFeature(InputFeatureFactory.getInstance().not_nil!.jf_SINGLE_KEY_REPEAT_PRESS)
    @j_NONE = GameKeyFactory.getInstance().not_nil!.jf_NONE
    @gameKeyEventFactory = GameKeyEventFactory.getInstance()
    @j_SET_STATE = "setState"
    @baseGameStatistics = GameStatisticsFactory.getInstance()
    end
    

    def jinit_StartCanvas(abeClientInformation : AbeClientInformationInterface?, commandListener : CommandListener?, highScoresFactoryInterface : HighScoresFactoryInterface?, paintable : Paintable?, overlayPaintable : InitUpdatePaintable?, gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory?, isContinue : Bool) : self
        jinit_RunnableCanvas(commandListener, CurrentDisplayableFactory.getInstance().not_nil!.jf_DEFAULT_CHILD_NAME_LIST, true)
        jfields_StartCanvas()
        self.setWait(NullWaitGameRunnable.getInstance().not_nil!.jf_WAIT)
        @gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        GameInitializationUtil.getInstance().not_nil!.initDemo(abeClientInformation, self, gameInitializationInterfaceFactoryInterface)
        ResizableListenerHandler.getInstance().not_nil!.fireEvent(false)
        @overlayPaintable = overlayPaintable
        @highScoresFactoryInterface = highScoresFactoryInterface
        self.setDefaultPaintableInterface(paintable)
        self.setPaintableInterface(self.getDefaultPaintableInterface())
        if isContinue
            self.addCommand(GameCommandsFactory.getInstance().not_nil!.jf_CONTINUE_COMMAND)
        end
        if ChangedGameFeatureListener.getInstance().not_nil!.isChangedFeature(GameFeatureFactory.getInstance().not_nil!.jf_SOUND)
            self.mediaInit()
        end
        DisplayChangeEventHandler.getInstance().not_nil!.addListenerInterface(self)
        self
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onDisplayChangeEvent(displayChangeEvent : DisplayChangeEvent?) : Nil
        begin
            scrollSelectionForm : ScrollSelectionForm? = self.getMenuForm()
            if !(scrollSelectionForm).nil?
                formType : FormType? = FormTypeFactory.getInstance().not_nil!.getFormType()
                rectangle : Rectangle? = @formUtil.not_nil!.createFormRectangle()
                scrollSelectionForm.not_nil!.init(rectangle, formType)
            end
            @overlayPaintable.not_nil!.init()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @canvasStrings.not_nil!.jf_ON_DISPLAY_CHANGE_EVENT, e)
            else
                raise jex1
            end
        end
    end
    

    def getCustomCommands : Array(JAny)?
        gameCommandsFactory : GameCommandsFactory? = GameCommandsFactory.getInstance()
        if J2MEUtil.isHTML()
            commandArray = ([gameCommandsFactory.not_nil!.jf_START_COMMAND, HighScoreCommands.getInstance().not_nil!.jf_DISPLAY, GameInputMappingCanvas.jst_DISPLAY, gameCommandsFactory.not_nil!.jf_DISPLAY_ABOUT] of JAny).as(Array(JAny)?)
            return commandArray
        else
            commandList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
            commandList.not_nil!.add(gameCommandsFactory.not_nil!.jf_START_COMMAND)
            inApplicationPurchaseFactory : InApplicationPurchaseFactory? = InApplicationPurchaseFactory.getInstance()
            if inApplicationPurchaseFactory.not_nil!.isEnabled()
                list : BasicArrayList? = LockableFeatureFactory.getInstance().not_nil!.getList()
                if list.not_nil!.size() > 0 && !inApplicationPurchaseFactory.not_nil!.isPurchased(JR.cast(list.not_nil!.get(0), LockableFeature))
                    commandList.not_nil!.add(gameCommandsFactory.not_nil!.jf_BUY_COMMAND)
                end
            end
            commandList.not_nil!.add(HighScoreCommands.getInstance().not_nil!.jf_DISPLAY)
            begin
                isOverScan : Bool = OperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance().not_nil!.isOverScan()
                if SWTUtil.jst_isSWT
                    commandList.not_nil!.add(GameInputMappingCanvas.jst_DISPLAY)
                elsif !isOverScan
                    commandList.not_nil!.add(gameCommandsFactory.not_nil!.jf_DISPLAY_OPTIONS)
                    commandList.not_nil!.add(gameCommandsFactory.not_nil!.jf_DISPLAY_LOAD_FORM)
                    commandList.not_nil!.add(GameInputMappingCanvas.jst_DISPLAY)
                end
            rescue jexc2 : ::Exception
                jex2 = JR.jthrowable(jexc2)
                if jex2.is_a?(JException)
                    e = jex2.as(JException)
                else
                    raise jex2
                end
            end
            commandList.not_nil!.add(gameCommandsFactory.not_nil!.jf_DISPLAY_ABOUT)
            commandArray = (commandList.not_nil!.toArray()).as(Array(JAny)?)
            return commandArray
        end
        return nil
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        self.removeAllCommands()
        commandArray : Array(JAny)? = self.getCustomCommands()
        size : Int32 = commandArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            self.addCommand(JR.cast(commandArray.not_nil![index], Command))
        end
        CustomGameMenuUtil.add(self)
        self.setCommandListener(cmdListener)
    end
    

    def initPostPaint : Nil
    end
    

    def mediaInit : Nil
        AllBinaryMediaManager.init(EarlySoundsFactory.getInstance())
    end
    

    def itemStateChanged(item : Item?) : Nil
        ForcedLogUtil.log(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED, self)
    end
    

    def initMenu : Nil
        self.close()
        self.open()
    end
    

    def open : Nil
        BasicMotionGesturesHandler.getInstance().not_nil!.addListenerInterface(self.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().not_nil!.addListener(self.getMenuInputProcessor())
    end
    

    def close : Nil
        BasicMotionGesturesHandler.getInstance().not_nil!.removeListener(self.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().not_nil!.removeListener(self.getMenuInputProcessor())
    end
    

    def getSourceId : Int32
        return StartCanvas.jst_id
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
        self.addGameKeyEvent(keyCode, false)
    end
    

    def keyReleasedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        self.removeGameKeyEvent(keyCode, false)
    end
    

    def keyRepeatedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        if @isSingleKeyRepeatableProcessing
            self.addGameKeyEvent(keyCode, true)
        end
    end
    

    def addGameKeyEvent(keyCode : Int, repeated : Bool) : Nil
        keyCode = keyCode.to_i32!
        begin
            gameKey : GameKey? = @inputToGameKeyMapping.not_nil!.getInstanceForCanvas(self, keyCode)
            if gameKey != @j_NONE
                gameKeyEvent : GameKeyEvent? = @gameKeyEventFactory.not_nil!.getInstanceForInput(self, gameKey)
                DownGameKeyEventHandler.getInstance().not_nil!.fireEvent(gameKeyEvent)
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
    

    def removeGameKeyEvent(keyCode : Int, repeated : Bool) : Nil
        keyCode = keyCode.to_i32!
        begin
            gameKey : GameKey? = @inputToGameKeyMapping.not_nil!.getInstanceForCanvas(self, keyCode)
            if gameKey != @j_NONE
                gameKeyEvent : GameKeyEvent? = @gameKeyEventFactory.not_nil!.getInstanceForInput(self, gameKey)
                UpGameKeyEventHandler.getInstance().not_nil!.fireEvent(gameKeyEvent)
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
    

    def pause : Nil
        self.close()
        self.setPaused(true)
    end
    

    def unPause : Nil
        self.open()
        self.setPaused(false)
    end
    

    def isPausable : Bool
        if CurrentDisplayableFactory.getInstance().not_nil!.getUsedRunnable() == NullWaitGameRunnable.getInstance()
            return true
        else
            return false
        end
        return false
    end
    

    def isGameOver : Bool
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED).not_nil!.append(" since not a game").not_nil!.toString(), self, "isGameOver")
        return false
    end
    

    def setLoadStateHashtable(hashtable : ABHashtable?) : Nil
        @logUtil.not_nil!.putF("Trying to continue a demo lol - only continue a game canvas not the demo", self, "setLoadStateHashtable")
    end
    

    def getLoadStateHashtable : ABHashtable?
        @logUtil.not_nil!.putF("Trying to continue a demo lol - only continue a game canvas not the demo", self, "getLoadStateHashtable")
        return @stdUtil.not_nil!.jf_NULL_TABLE
    end
    

    def getCurrentStateHashtable : ABHashtable?
        @logUtil.not_nil!.putF("Trying to save the AI lol", self, "getCurrentStateHashtable")
        return @stdUtil.not_nil!.jf_NULL_TABLE
    end
    

    def setHighScoreSubmitted(isNotUsed : Bool) : Nil
    end
    

    def paint(graphics : Graphics?) : Nil
        @paintableInterface.not_nil!.paint(graphics)
        @paintedSpecialAnimationInterface.not_nil!.paintXY(graphics, 0, 0)
        @highScoresPaintable.not_nil!.paint(graphics)
        self.getBasicGameDemoPaintable().not_nil!.paint(graphics)
        @overlayPaintable.not_nil!.paint(graphics)
        @progressPaintable.not_nil!.paint(graphics)
    end
    

    def paintThreed(graphics : Graphics?) : Nil
        @paintableInterface.not_nil!.paintThreed(graphics)
        @paintedSpecialAnimationInterface.not_nil!.paintThreedXYZ(graphics, 0, 0, 0)
    end
    

    def processGameOver : Nil
        @logUtil.not_nil!.putF("Not Implemented since not a game", self, "setGameOver")
    end
    

    def demoStateChange : Nil
        newState : Int32 = @state &+ 1
        if newState > 2
            newState = 0
        elsif newState == 2
            if !@highScoresHelper.not_nil!.isAnyHighScores()
                newState = 0
            else
                highScores : HighScores? = @highScoresHelper.not_nil!.getNextHighScores()
                if highScores == NullHighScoresSingletonFactory.getInstance()
                    newState = 0
                else
                    self.getRealHighScoresPaintable().not_nil!.setHighScores(highScores)
                end
            end
        end
        self.setState(newState)
        self.updateDemoState()
    end
    

    def updateDemoState : Nil
        PreLogUtil.put(SmallIntegerSingletonFactory.getInstance().not_nil!.createInstance(@state).not_nil!.toString(), self, @j_SET_STATE)
        self.getBasicGameDemoPaintable().not_nil!.setState(@state)
        if @state == 0
            @highScoresPaintable = NullPaintable.getInstance()
            @paintedSpecialAnimationInterface = self.getSpecialAnimationInterface()
            self.getSpecialAnimationInterface().not_nil!.reset()
        elsif @state == 1
            @paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
        elsif @state == 2
            @highScoresPaintable = self.getRealHighScoresPaintable()
        end
        gameAdState : GameAdState? = @gameAdStateFactory.not_nil!.getCurrentInstance()
        gameAdState.not_nil!.processPageAdState()
    end
    

    def getNextRandom : Int32
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def createGameLayerManager(randomValue : Int) : AllBinaryGameLayerManager?
        randomValue = randomValue.to_i32!
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def createRunnable(randomLevel : Int) : GameCanvasRunnableInterface?
        randomLevel = randomLevel.to_i32!
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def createCanvas : Nil
        @highScoresPaintable = NullPaintable.getInstance()
        randomLevel : Int32 = self.getNextRandom()
    end
    

    def start : Nil
    end
    

    def preDemoProcess : Nil
        @overlayPaintable.not_nil!.update()
    end
    

    def process : Nil
        self.getMenuInputProcessor().not_nil!.processInputList()
        self.preDemoProcess()
        if @state == 0
            indexedAnimationBehavior : IndexedAnimationBehavior? = JR.cast(self.getSpecialAnimationInterface().not_nil!.getAnimationBehavior(), IndexedAnimationBehavior)
            if indexedAnimationBehavior.not_nil!.jf_loopIndex < 1
                @timeDelayHelper.not_nil!.setStartTimeTNT()
            end
            demoGameMidlet : DemoGameMidlet? = JR.cast(self.getCustomCommandListener(), DemoGameMidlet)
        end
    end
    

    def startDemoGame : Nil
    end
    

    def processGame : Nil
        @gameRunnable.not_nil!.run()
        @specialAnimationInterface.not_nil!.nextFrame()
        self.process()
    end
    

    def run : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START_RUNNABLE, self, @commonStrings.not_nil!.jf_RUN)
        begin
            progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
            progressCanvas.not_nil!.addNormalPortion(50, "Demo Thread")
            self.setCurrentThread()
            self.setRunning(true)
            if @features.not_nil!.isFeature(MainFeatureFactory.getInstance().not_nil!.jf_LOAD_ONDEMAND)
                progressCanvas.not_nil!.end_()
            else
                progressCanvas.not_nil!.addNormalPortion(50, "Demo Thread Running")
            end
            @fullScreenUtil.not_nil!.initOnRun(self, self.getCustomCommandListener())
            self.initMenu()
            self.initPostPaint()
            self.updateDemoState()
            if @features.not_nil!.isDefault(@openGLFeatureFactory.not_nil!.jf_OPENGL_AS_GAME_THREAD)
                OpenGLThreadUtil.getInstance().not_nil!.onResume()
            end
            if @features.not_nil!.isDefault(@openGLFeatureFactory.not_nil!.jf_OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()
            else
                while self.isRunning()
                    @loopTimeHelper.not_nil!.setStartTimeTNT()
                    self.processGame()
                    self.processLoopSleep()
                end
                self.end_()
            end
        rescue jexc5 : ::Exception
            jex5 = JR.jthrowable(jexc5)
            if jex5.is_a?(JException)
                e = jex5.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_RUN, e)
            else
                raise jex5
            end
        end
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_END_RUNNABLE, self, @commonStrings.not_nil!.jf_RUN)
    end
    

    def setRunning(running : Bool) : Nil
        super(running)
        begin
            if (@features.not_nil!.isDefault(@openGLFeatureFactory.not_nil!.jf_OPENGL) || J2MEUtil.isHTML()) && !running
                currentDisplayableFactory : CurrentDisplayableFactory? = CurrentDisplayableFactory.getInstance()
                currentDisplayableFactory.not_nil!.clearRunnable()
                self.end_()
            end
        rescue jexc6 : ::Exception
            jex6 = JR.jthrowable(jexc6)
            if jex6.is_a?(JException)
                e = jex6.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @j_SET_RUNNING, e)
            else
                raise jex6
            end
        end
    end
    

    def end_ : Nil
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        @baseGameStatistics.not_nil!.add(StringMaker.new.jinit_StringMaker().not_nil!.append(StartCanvas.jst_BOT_GAME_STATS).not_nil!.append(@baseGameStatistics.not_nil!.toString()).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_NEW_LINE).not_nil!.toString())
        @baseGameStatistics.not_nil!.init()
        if @features.not_nil!.isFeature(MainFeatureFactory.getInstance().not_nil!.jf_LOAD_ONDEMAND)
            progressCanvas.not_nil!.start()
        end
        @logUtil.not_nil!.putF("Demo End", self, @commonStrings.not_nil!.jf_RUN)
        self.close()
        DisplayChangeEventHandler.getInstance().not_nil!.removeListener(self)
    end
    

    def setGameState(gameState : GameState?) : Nil
    end
    

    def getGameState : GameState?
        return @gameStateFactory.not_nil!.jf_PLAYING_GAME_STATE
    end
    

    def getState : Int32
        return @state
    end
    

    def setState(state : Int) : Nil
        state = state.to_i32!
        @state = state
    end
    

    def isHighScoreSubmitted : Bool
        @logUtil.not_nil!.putF("Wow the AI got a high score!", self, "isHighScoreSubmitted")
        return false
    end
    

    def getRealHighScoresPaintable : HighScoresPaintable?
        return @realHighScoresPaintable
    end
    

    def setSpecialAnimationInterface(specialAnimationInterface : SpecialAnimation?) : Nil
        specialAnimationInterface.not_nil!.setFrame(0)
        @specialAnimationInterface = specialAnimationInterface
    end
    

    def getSpecialAnimationInterface : SpecialAnimation?
        return @specialAnimationInterface
    end
    

    def setPaintableInterface(paintableInterface : PaintableInterface?) : Nil
        @paintableInterface = paintableInterface
    end
    

    def getPaintableInterface : PaintableInterface?
        return @paintableInterface
    end
    

    def setDefaultPaintableInterface(defaultPaintableInterface : Paintable?) : Nil
        @defaultPaintableInterface = defaultPaintableInterface
    end
    

    def getDefaultPaintableInterface : Paintable?
        return @defaultPaintableInterface
    end
    

    def getHighScoresFactoryInterface : HighScoresFactoryInterface?
        return @highScoresFactoryInterface
    end
    

    def setMenuInputProcessor(menuInputProcessor : BasicMenuInputProcessor?) : Nil
        @menuInputProcessor = menuInputProcessor
    end
    

    def getMenuInputProcessor : BasicMenuInputProcessor?
        return @menuInputProcessor
    end
    

    def getMenuForm : ScrollSelectionForm?
        return @menuForm
    end
    

    def setMenuForm(menuForm : ScrollSelectionForm?) : Nil
        @menuForm = menuForm
    end
    

    def isInitialized : Bool
        return @initialized
    end
    

    def getOverlayPaintable : Paintable?
        return @overlayPaintable
    end
    

    def setBasicGameDemoPaintable(basicGameDemoPaintable : StatePaintable?) : Nil
        @basicGameDemoPaintable = basicGameDemoPaintable
    end
    

    def getBasicGameDemoPaintable : StatePaintable?
        return @basicGameDemoPaintable
    end
    

    def setTempWait(tempWait : Int) : Nil
        tempWait = tempWait.to_i32!
        @tempWait = tempWait
    end
    

    def getTempWait : Int32
        return @tempWait
    end
    

    def isSingleThread : Bool
        return OpenGLFeatureUtil.getInstance().not_nil!.isAnyThreed() || SWTUtil.jst_isSWT
    end
    

    def isRunningInAnotherThread : Bool
        features : Features? = Features.getInstance()
        openGLFeatureFactory : OpenGLFeatureFactory? = OpenGLFeatureFactory.getInstance()
        if features.not_nil!.isDefault(openGLFeatureFactory.not_nil!.jf_OPENGL_AS_GAME_THREAD)
            return true
        else
            return self.isRunning()
        end
        return false
    end
    

    def getGameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory?
        return @gameInitializationInterfaceFactoryInterface
    end
    

    def getTitle : String
        return super()
    end
    

    def isPaused : Bool
        return super()
    end
    

    def getType : Int32
        return super()
    end
end

