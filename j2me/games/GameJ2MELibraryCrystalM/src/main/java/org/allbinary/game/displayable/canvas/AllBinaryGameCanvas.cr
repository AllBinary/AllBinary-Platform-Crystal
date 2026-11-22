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

class AllBinaryGameCanvas < RunnableCanvas
    include AllBinaryGameCanvasInterface
    include GameCanvasRunnableInterface
    include MenuListener
    include IntermissionCompositeInterface
    include IntermissionEnableListenerInterface
    include PopupMenuInterface
    include DisplayChangeEventListener
    include UpdateMyFontInterface
    @basicColorFactory : BasicColorFactory? = nil

    def jf_basicColorFactory : BasicColorFactory?
        @basicColorFactory
    end

    def jf_basicColorFactory=(value : BasicColorFactory?) : BasicColorFactory?
        @basicColorFactory = value
    end
    @basicSetColorUtil : BasicColorSetUtil? = nil

    def jf_basicSetColorUtil : BasicColorSetUtil?
        @basicSetColorUtil
    end

    def jf_basicSetColorUtil=(value : BasicColorSetUtil?) : BasicColorSetUtil?
        @basicSetColorUtil = value
    end
    @touchFeatureFactory : TouchFeatureFactory? = nil

    def jf_touchFeatureFactory : TouchFeatureFactory?
        @touchFeatureFactory
    end

    def jf_touchFeatureFactory=(value : TouchFeatureFactory?) : TouchFeatureFactory?
        @touchFeatureFactory = value
    end
    @openGLFeatureFactory : OpenGLFeatureFactory? = nil

    def jf_openGLFeatureFactory : OpenGLFeatureFactory?
        @openGLFeatureFactory
    end

    def jf_openGLFeatureFactory=(value : OpenGLFeatureFactory?) : OpenGLFeatureFactory?
        @openGLFeatureFactory = value
    end
    @touchButtonFactory : TouchButtonFactory? = nil

    def jf_touchButtonFactory : TouchButtonFactory?
        @touchButtonFactory
    end

    def jf_touchButtonFactory=(value : TouchButtonFactory?) : TouchButtonFactory?
        @touchButtonFactory = value
    end
    @gameAdStateFactory : GameAdStateFactory? = nil

    def jf_gameAdStateFactory : GameAdStateFactory?
        @gameAdStateFactory
    end

    def jf_gameAdStateFactory=(value : GameAdStateFactory?) : GameAdStateFactory?
        @gameAdStateFactory = value
    end
    @gameStrings : GameStrings? = nil

    def jf_gameStrings : GameStrings?
        @gameStrings
    end

    def jf_gameStrings=(value : GameStrings?) : GameStrings?
        @gameStrings = value
    end
    @gameInputStrings : GameInputStrings? = nil

    def jf_gameInputStrings : GameInputStrings?
        @gameInputStrings
    end

    def jf_gameInputStrings=(value : GameInputStrings?) : GameInputStrings?
        @gameInputStrings = value
    end
    @gameStateFactory : GameStateFactory? = nil

    def jf_gameStateFactory : GameStateFactory?
        @gameStateFactory
    end

    def jf_gameStateFactory=(value : GameStateFactory?) : GameStateFactory?
        @gameStateFactory = value
    end
    @gameTickTimeDelayHelper : GameTickTimeDelayHelper? = nil

    def jf_gameTickTimeDelayHelper : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper
    end

    def jf_gameTickTimeDelayHelper=(value : GameTickTimeDelayHelper?) : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper = value
    end
    @gameTickDisplayInfoSingleton : GameTickDisplayInfoSingleton? = nil

    def jf_gameTickDisplayInfoSingleton : GameTickDisplayInfoSingleton?
        @gameTickDisplayInfoSingleton
    end

    def jf_gameTickDisplayInfoSingleton=(value : GameTickDisplayInfoSingleton?) : GameTickDisplayInfoSingleton?
        @gameTickDisplayInfoSingleton = value
    end
    @gameRunnable : GameCanvasRunnable? = nil

    def jf_gameRunnable : GameCanvasRunnable?
        @gameRunnable
    end

    def jf_gameRunnable=(value : GameCanvasRunnable?) : GameCanvasRunnable?
        @gameRunnable = value
    end
    @gamePauseRunnable : GameCanvasPauseRunnable? = nil

    def jf_gamePauseRunnable : GameCanvasPauseRunnable?
        @gamePauseRunnable
    end

    def jf_gamePauseRunnable=(value : GameCanvasPauseRunnable?) : GameCanvasPauseRunnable?
        @gamePauseRunnable = value
    end
    @formUtil : FormUtil? = nil

    def jf_formUtil : FormUtil?
        @formUtil
    end

    def jf_formUtil=(value : FormUtil?) : FormUtil?
        @formUtil = value
    end
    @myFormUtil : MyFormUtil? = nil

    def jf_myFormUtil : MyFormUtil?
        @myFormUtil
    end

    def jf_myFormUtil=(value : MyFormUtil?) : MyFormUtil?
        @myFormUtil = value
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
    @gameSpecificPaintable : Paintable? = nil

    def jf_gameSpecificPaintable : Paintable?
        @gameSpecificPaintable
    end

    def jf_gameSpecificPaintable=(value : Paintable?) : Paintable?
        @gameSpecificPaintable = value
    end
    @sensorGameUpdateProcessor : SensorGameUpdateProcessor? = nil

    def jf_sensorGameUpdateProcessor : SensorGameUpdateProcessor?
        @sensorGameUpdateProcessor
    end

    def jf_sensorGameUpdateProcessor=(value : SensorGameUpdateProcessor?) : SensorGameUpdateProcessor?
        @sensorGameUpdateProcessor = value
    end
    @endGameInfo : EndGameInfo? = nil

    def jf_endGameInfo : EndGameInfo?
        @endGameInfo
    end

    def jf_endGameInfo=(value : EndGameInfo?) : EndGameInfo?
        @endGameInfo = value
    end
    @startIntermissionInterface : IntermissionInterface? = nil

    def jf_startIntermissionInterface : IntermissionInterface?
        @startIntermissionInterface
    end

    def jf_startIntermissionInterface=(value : IntermissionInterface?) : IntermissionInterface?
        @startIntermissionInterface = value
    end
    @endLevelIntermissionInterface : IntermissionInterface? = nil

    def jf_endLevelIntermissionInterface : IntermissionInterface?
        @endLevelIntermissionInterface
    end

    def jf_endLevelIntermissionInterface=(value : IntermissionInterface?) : IntermissionInterface?
        @endLevelIntermissionInterface = value
    end
    @gameLayerManager : AllBinaryGameLayerManager? = nil

    def jf_gameLayerManager : AllBinaryGameLayerManager?
        @gameLayerManager
    end

    def jf_gameLayerManager=(value : AllBinaryGameLayerManager?) : AllBinaryGameLayerManager?
        @gameLayerManager = value
    end
    @gameState : GameState? = nil

    def jf_gameState : GameState?
        @gameState
    end

    def jf_gameState=(value : GameState?) : GameState?
        @gameState = value
    end
    @gameOver : Bool = false

    def jf_gameOver : Bool
        @gameOver
    end

    def jf_gameOver=(value : Bool) : Bool
        @gameOver = value
    end
    @initialized : Bool = false

    def jf_initialized : Bool
        @initialized
    end

    def jf_initialized=(value : Bool) : Bool
        @initialized = value
    end
    @gameStateTimeHelper : TimeDelayHelper? = nil

    def jf_gameStateTimeHelper : TimeDelayHelper?
        @gameStateTimeHelper
    end

    def jf_gameStateTimeHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @gameStateTimeHelper = value
    end
    @highScoresHelper : HighScoresHelperBaseInterface? = nil

    def jf_highScoresHelper : HighScoresHelperBaseInterface?
        @highScoresHelper
    end

    def jf_highScoresHelper=(value : HighScoresHelperBaseInterface?) : HighScoresHelperBaseInterface?
        @highScoresHelper = value
    end
    @highScoreSubmitted : Bool = false

    def jf_highScoreSubmitted : Bool
        @highScoreSubmitted
    end

    def jf_highScoreSubmitted=(value : Bool) : Bool
        @highScoreSubmitted = value
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
    @localPlayerGameInputList : BasicArrayList? = nil

    def jf_localPlayerGameInputList : BasicArrayList?
        @localPlayerGameInputList
    end

    def jf_localPlayerGameInputList=(value : BasicArrayList?) : BasicArrayList?
        @localPlayerGameInputList = value
    end
    @isCheating : Bool = false

    def jf_isCheating : Bool
        @isCheating
    end

    def jf_isCheating=(value : Bool) : Bool
        @isCheating = value
    end
    @hashtable : ABHashtable? = nil

    def jf_hashtable : ABHashtable?
        @hashtable
    end

    def jf_hashtable=(value : ABHashtable?) : ABHashtable?
        @hashtable = value
    end
    @isSingleKeyRepeatableProcessing : Bool = false

    def jf_isSingleKeyRepeatableProcessing : Bool
        @isSingleKeyRepeatableProcessing
    end

    def jf_isSingleKeyRepeatableProcessing=(value : Bool) : Bool
        @isSingleKeyRepeatableProcessing = value
    end
    @gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory? = nil

    def jf_gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory?
        @gameInitializationInterfaceFactoryInterface
    end

    def jf_gameInitializationInterfaceFactoryInterface=(value : BasicBuildGameInitializerFactory?) : BasicBuildGameInitializerFactory?
        @gameInitializationInterfaceFactoryInterface = value
    end
    @touchButtonsPaintable : Paintable? = nil

    def jf_touchButtonsPaintable : Paintable?
        @touchButtonsPaintable
    end

    def jf_touchButtonsPaintable=(value : Paintable?) : Paintable?
        @touchButtonsPaintable = value
    end
    @touchPaintable : Paintable? = nil

    def jf_touchPaintable : Paintable?
        @touchPaintable
    end

    def jf_touchPaintable=(value : Paintable?) : Paintable?
        @touchPaintable = value
    end
    @cheatProcessor : PlayerGameInput? = nil

    def jf_cheatProcessor : PlayerGameInput?
        @cheatProcessor
    end

    def jf_cheatProcessor=(value : PlayerGameInput?) : PlayerGameInput?
        @cheatProcessor = value
    end
    @gameInputProcessor : Processor? = nil

    def jf_gameInputProcessor : Processor?
        @gameInputProcessor
    end

    def jf_gameInputProcessor=(value : Processor?) : Processor?
        @gameInputProcessor = value
    end
    @endGameProcessor : Processor? = nil

    def jf_endGameProcessor : Processor?
        @endGameProcessor
    end

    def jf_endGameProcessor=(value : Processor?) : Processor?
        @endGameProcessor = value
    end
    @realEndGameProcessor : Processor? = nil

    def jf_realEndGameProcessor : Processor?
        @realEndGameProcessor
    end

    def jf_realEndGameProcessor=(value : Processor?) : Processor?
        @realEndGameProcessor = value
    end
    @startIntermissionProcessor : Processor? = nil

    def jf_startIntermissionProcessor : Processor?
        @startIntermissionProcessor
    end

    def jf_startIntermissionProcessor=(value : Processor?) : Processor?
        @startIntermissionProcessor = value
    end
    @realStartIntermissionProcessor : Processor? = nil

    def jf_realStartIntermissionProcessor : Processor?
        @realStartIntermissionProcessor
    end

    def jf_realStartIntermissionProcessor=(value : Processor?) : Processor?
        @realStartIntermissionProcessor = value
    end
    @endGamePaintable : Paintable? = nil

    def jf_endGamePaintable : Paintable?
        @endGamePaintable
    end

    def jf_endGamePaintable=(value : Paintable?) : Paintable?
        @endGamePaintable = value
    end
    @endGameStatePaintable : Paintable? = nil

    def jf_endGameStatePaintable : Paintable?
        @endGameStatePaintable
    end

    def jf_endGameStatePaintable=(value : Paintable?) : Paintable?
        @endGameStatePaintable = value
    end
    @nonBotPaintable : Paintable? = nil

    def jf_nonBotPaintable : Paintable?
        @nonBotPaintable
    end

    def jf_nonBotPaintable=(value : Paintable?) : Paintable?
        @nonBotPaintable = value
    end
    @intermissionPaintable : Paintable? = nil

    def jf_intermissionPaintable : Paintable?
        @intermissionPaintable
    end

    def jf_intermissionPaintable=(value : Paintable?) : Paintable?
        @intermissionPaintable = value
    end
    @startIntermissionPaintable : InitUpdatePaintable? = nil

    def jf_startIntermissionPaintable : InitUpdatePaintable?
        @startIntermissionPaintable
    end

    def jf_startIntermissionPaintable=(value : InitUpdatePaintable?) : InitUpdatePaintable?
        @startIntermissionPaintable = value
    end
    @mainStateProcessor : Processor? = nil

    def jf_mainStateProcessor : Processor?
        @mainStateProcessor
    end

    def jf_mainStateProcessor=(value : Processor?) : Processor?
        @mainStateProcessor = value
    end
    @processGameProcessor : Processor? = nil

    def jf_processGameProcessor : Processor?
        @processGameProcessor
    end

    def jf_processGameProcessor=(value : Processor?) : Processor?
        @processGameProcessor = value
    end
    @highScoresFactoryInterface : HighScoresFactoryInterface? = nil

    def jf_highScoresFactoryInterface : HighScoresFactoryInterface?
        @highScoresFactoryInterface
    end

    def jf_highScoresFactoryInterface=(value : HighScoresFactoryInterface?) : HighScoresFactoryInterface?
        @highScoresFactoryInterface = value
    end
    @startLevel : Int32 = 0

    def jf_startLevel : Int32
        @startLevel
    end

    def jf_startLevel=(value : Int32) : Int32
        @startLevel = value
    end
    @mainMenuInputProcessor : BasicMenuInputProcessor? = nil

    def jf_mainMenuInputProcessor : BasicMenuInputProcessor?
        @mainMenuInputProcessor
    end

    def jf_mainMenuInputProcessor=(value : BasicMenuInputProcessor?) : BasicMenuInputProcessor?
        @mainMenuInputProcessor = value
    end
    @popupMenuInputProcessor : BasicMenuInputProcessor? = nil

    def jf_popupMenuInputProcessor : BasicMenuInputProcessor?
        @popupMenuInputProcessor
    end

    def jf_popupMenuInputProcessor=(value : BasicMenuInputProcessor?) : BasicMenuInputProcessor?
        @popupMenuInputProcessor = value
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
    @formPaintable : Paintable? = nil

    def jf_formPaintable : Paintable?
        @formPaintable
    end

    def jf_formPaintable=(value : Paintable?) : Paintable?
        @formPaintable = value
    end
    @openMenuPaintable : Paintable? = nil

    def jf_openMenuPaintable : Paintable?
        @openMenuPaintable
    end

    def jf_openMenuPaintable=(value : Paintable?) : Paintable?
        @openMenuPaintable = value
    end
    @menuPaintable : Paintable? = nil

    def jf_menuPaintable : Paintable?
        @menuPaintable
    end

    def jf_menuPaintable=(value : Paintable?) : Paintable?
        @menuPaintable = value
    end
    @currentTouchInputFactory : BaseTouchInput? = nil

    def jf_currentTouchInputFactory : BaseTouchInput?
        @currentTouchInputFactory
    end

    def jf_currentTouchInputFactory=(value : BaseTouchInput?) : BaseTouchInput?
        @currentTouchInputFactory = value
    end
    @colorFillPaintable : ColorFillBasePaintable? = nil

    def jf_colorFillPaintable : ColorFillBasePaintable?
        @colorFillPaintable
    end

    def jf_colorFillPaintable=(value : ColorFillBasePaintable?) : ColorFillBasePaintable?
        @colorFillPaintable = value
    end
    @baseGameStatistics : BaseGameStatistics? = nil

    def jf_baseGameStatistics : BaseGameStatistics?
        @baseGameStatistics
    end

    def jf_baseGameStatistics=(value : BaseGameStatistics?) : BaseGameStatistics?
        @baseGameStatistics = value
    end
    @primaryPlayerQueue : PlayerQueue? = nil

    def jf_primaryPlayerQueue : PlayerQueue?
        @primaryPlayerQueue
    end

    def jf_primaryPlayerQueue=(value : PlayerQueue?) : PlayerQueue?
        @primaryPlayerQueue = value
    end
    @secondaryPlayerQueue : PlayerQueue? = nil

    def jf_secondaryPlayerQueue : PlayerQueue?
        @secondaryPlayerQueue
    end

    def jf_secondaryPlayerQueue=(value : PlayerQueue?) : PlayerQueue?
        @secondaryPlayerQueue = value
    end
    @j_BUILD_GAME : String = ""

    def jf_BUILD_GAME : String
        @j_BUILD_GAME
    end

    def jf_BUILD_GAME=(value : String) : String
        @j_BUILD_GAME = value
    end
    @gameTypeFactory : GameTypeFactory? = nil

    def jf_gameTypeFactory : GameTypeFactory?
        @gameTypeFactory
    end

    def jf_gameTypeFactory=(value : GameTypeFactory?) : GameTypeFactory?
        @gameTypeFactory = value
    end
    @screenCapture : ScreenCapture? = nil

    def jf_screenCapture : ScreenCapture?
        @screenCapture
    end

    def jf_screenCapture=(value : ScreenCapture?) : ScreenCapture?
        @screenCapture = value
    end
    @basicMotionGesturesHandler : BasicMotionGesturesHandler? = nil

    def jf_basicMotionGesturesHandler : BasicMotionGesturesHandler?
        @basicMotionGesturesHandler
    end

    def jf_basicMotionGesturesHandler=(value : BasicMotionGesturesHandler?) : BasicMotionGesturesHandler?
        @basicMotionGesturesHandler = value
    end
    @gameKeyEventHandler : GameKeyEventHandler? = nil

    def jf_gameKeyEventHandler : GameKeyEventHandler?
        @gameKeyEventHandler
    end

    def jf_gameKeyEventHandler=(value : GameKeyEventHandler?) : GameKeyEventHandler?
        @gameKeyEventHandler = value
    end
    @gameBehavior : DemoGameBehavior? = nil

    def jf_gameBehavior : DemoGameBehavior?
        @gameBehavior
    end

    def jf_gameBehavior=(value : DemoGameBehavior?) : DemoGameBehavior?
        @gameBehavior = value
    end
    @menuBehavior : BaseMenuBehavior? = nil

    def jf_menuBehavior : BaseMenuBehavior?
        @menuBehavior
    end

    def jf_menuBehavior=(value : BaseMenuBehavior?) : BaseMenuBehavior?
        @menuBehavior = value
    end
    @progressPaintable : PaintableInterface? = nil

    def jf_progressPaintable : PaintableInterface?
        @progressPaintable
    end

    def jf_progressPaintable=(value : PaintableInterface?) : PaintableInterface?
        @progressPaintable = value
    end
    @fontHeightP : Int32 = 0

    def jf_fontHeightP : Int32
        @fontHeightP
    end

    def jf_fontHeightP=(value : Int32) : Int32
        @fontHeightP = value
    end
    @gameCanvasStartListener : DemoPaintableInterface? = nil

    def jf_gameCanvasStartListener : DemoPaintableInterface?
        @gameCanvasStartListener
    end

    def jf_gameCanvasStartListener=(value : DemoPaintableInterface?) : DemoPaintableInterface?
        @gameCanvasStartListener = value
    end
    @rawGameInputProcessor : InputProcessor? = nil

    def jf_rawGameInputProcessor : InputProcessor?
        @rawGameInputProcessor
    end

    def jf_rawGameInputProcessor=(value : InputProcessor?) : InputProcessor?
        @rawGameInputProcessor = value
    end
    @rawInputProcessor : InputProcessor? = nil

    def jf_rawInputProcessor : InputProcessor?
        @rawInputProcessor
    end

    def jf_rawInputProcessor=(value : InputProcessor?) : InputProcessor?
        @rawInputProcessor = value
    end
    @inputProcessor : InputProcessor? = nil

    def jf_inputProcessor : InputProcessor?
        @inputProcessor
    end

    def jf_inputProcessor=(value : InputProcessor?) : InputProcessor?
        @inputProcessor = value
    end
    @j_YIELD_SLEEP : Int64 = 0_i64

    def jf_YIELD_SLEEP : Int64
        @j_YIELD_SLEEP
    end

    def jf_YIELD_SLEEP=(value : Int64) : Int64
        @j_YIELD_SLEEP = value
    end

    def self.jst_id : Int32
        0
    end

    def self.jst_TYPE : Int32
        2
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinaryGameCanvas : Nil
    @basicColorFactory = BasicColorFactory.getInstance()
    @basicSetColorUtil = BasicColorSetUtil.getInstance()
    @touchFeatureFactory = TouchFeatureFactory.getInstance()
    @openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
    @touchButtonFactory = TouchButtonFactory.getInstance()
    @gameAdStateFactory = GameAdStateFactory.getInstance()
    @gameStrings = GameStrings.getInstance()
    @gameInputStrings = GameInputStrings.getInstance()
    @gameStateFactory = GameStateFactory.getInstance()
    @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    @gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance()
    @gameRunnable = GameCanvasRunnable.new.jinit_GameCanvasRunnable(self)
    @gamePauseRunnable = GameCanvasPauseRunnable.new.jinit_GameCanvasPauseRunnable(self)
    @formUtil = FormUtil.getInstance()
    @myFormUtil = MyFormUtil.getInstance()
    @updateMyFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @myFontProcessor = @updateMyFontProcessor
    @gameSpecificPaintable = NullPaintable.getInstance()
    @sensorGameUpdateProcessor = SingleSensorGameUpdateProcessor.new.jinit_SingleSensorGameUpdateProcessor()
    @endGameInfo = EndGameInfo.new.jinit_EndGameInfo()
    @startIntermissionInterface = Intermission.new.jinit_Intermission()
    @endLevelIntermissionInterface = Intermission.new.jinit_Intermission()
    @gameLayerManager = AllBinaryGameLayerManager.getNullInstance()
    @gameState = @gameStateFactory.not_nil!.jf_NO_GAME_STATE
    
    
    @gameStateTimeHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(0)
    
    
    @realHighScoresPaintable = HighScoresPaintable.new.jinit_HighScoresPaintable()
    @highScoresPaintable = NullPaintable.getInstance()
    @localPlayerGameInputList = BasicArrayListD.new.jinit_BasicArrayListD()
    
    @hashtable = @stdUtil.not_nil!.jf_NULL_TABLE
    
    @gameInitializationInterfaceFactoryInterface = BasicBuildGameInitializerFactory.jst_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY
    @touchButtonsPaintable = NullPaintable.getInstance()
    @touchPaintable = NullPaintable.getInstance()
    @cheatProcessor = NoPlayerGameInput.getInstance()
    @gameInputProcessor = Processor.getInstance()
    @endGameProcessor = Processor.getInstance()
    @realEndGameProcessor = Processor.getInstance()
    @startIntermissionProcessor = Processor.getInstance()
    @realStartIntermissionProcessor = Processor.getInstance()
    @endGamePaintable = NullPaintable.getInstance()
    @endGameStatePaintable = NullPaintable.getInstance()
    @nonBotPaintable = NullPaintable.getInstance()
    @intermissionPaintable = NullPaintable.getInstance()
    @startIntermissionPaintable = NullInitUpdatePaintable.getInstance()
    @mainStateProcessor = Processor.getInstance()
    @processGameProcessor = Processor.getInstance()
    
    
    @mainMenuInputProcessor = NoMenuInputProcessor.getInstance()
    @popupMenuInputProcessor = NoMenuInputProcessor.getInstance()
    @menuInputProcessor = NoMenuInputProcessor.getInstance()
    @menuForm = ScrollSelectionForm.getNullScrollSelectionForm()
    @formPaintable = NullPaintable.getInstance()
    @openMenuPaintable = NullPaintable.getInstance()
    @menuPaintable = NullPaintable.getInstance()
    @currentTouchInputFactory = NoButtonsTouchInputFactory.getInstance()
    @colorFillPaintable = ColorFillPaintableFactory.getInstance().not_nil!.getInstance(@basicColorFactory.not_nil!.jf_BLACK, true)
    @baseGameStatistics = GameStatisticsFactory.getInstance()
    @primaryPlayerQueue = PrimaryPlayerQueueFactory.getInstance()
    @secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance()
    @j_BUILD_GAME = "buildGame"
    @gameTypeFactory = GameTypeFactory.getInstance()
    @screenCapture = ScreenCaptureFactory.getInstance()
    @basicMotionGesturesHandler = BasicMotionGesturesHandler.getInstance()
    @gameKeyEventHandler = GameKeyEventHandler.getInstance()
    
    
    @progressPaintable = ProgressCanvasFactory.getLazyInstance()
    
    @gameCanvasStartListener = NullDemoPaintable.jst_NULL_DEMO_PAINTABLE
    @rawGameInputProcessor = GameCanvasInputProcessor.new.jinit_GameCanvasInputProcessor(self)
    @rawInputProcessor = FormInputProcessor.new.jinit_FormInputProcessor(self)
    @inputProcessor = self.getRawGameInputProcessor()
    @j_YIELD_SLEEP = 100_i64
    end
    

    def jinit_AllBinaryGameCanvas(commandListener : CommandListener?, gameLayerManager : AllBinaryGameLayerManager?, highScoresFactoryInterface : HighScoresFactoryInterface?, gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory?, buffered : Bool) : self
        jinit_RunnableCanvas(commandListener, CanvasStrings.getInstance().not_nil!.jf_EMPTY_CHILD_NAME_LIST, true)
        jfields_AllBinaryGameCanvas()
        @highScoresHelper = highScoresFactoryInterface.not_nil!.createHighScoresHelper()
        @gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        self.init(gameLayerManager, buffered)
        @highScoresFactoryInterface = highScoresFactoryInterface
        if @gameLayerManager.not_nil!.getGameInfo().not_nil!.getGameType() == @gameTypeFactory.not_nil!.jf_BOT || @gameLayerManager.not_nil!.getGameInfo().not_nil!.getGameType() == @gameTypeFactory.not_nil!.jf_NONE
            @gameBehavior = DemoGameBehavior.getInstance()
            @menuBehavior = BaseMenuBehavior.getInstance()
        else
            @gameBehavior = BaseGameBehavior.getInstance()
            @menuBehavior = self.getInGameMenuBehavior()
        end
        self.initPopupMenu()
        self.initMenu()
        self.initSpecialPaint()
        DisplayChangeEventHandler.getInstance().not_nil!.addListenerInterface(self)
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        begin
            font : Font? = graphics.not_nil!.getFont()
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_START).not_nil!.append(@canvasStrings.not_nil!.jf_FD_WIDTH).not_nil!.appendint(MyFontProcessor.defaultCharWidth(font)).not_nil!.append(@canvasStrings.not_nil!.jf_FD_HEIGHT).not_nil!.appendint(font.not_nil!.getHeight()).not_nil!.toString(), self, @canvasStrings.not_nil!.jf_UPDATE_MEASUREMENT)
            @fontHeightP = font.not_nil!.getHeight()
            @myFormUtil.not_nil!.updateMeasurement(graphics)
            popupMenuRectangle : Rectangle? = @myFormUtil.not_nil!.getPopupMenuRectangle()
            basicPopupMenuPaintable : BasicPopupMenuPaintable? = (JR.cast(self.getOpenMenuPaintable(), BasicPopupMenuPaintable))
            basicPopupMenuPaintable.not_nil!.init(popupMenuRectangle)
            if self.getPopupMenuInputProcessor() != NoMenuInputProcessor.getInstance()
                popupMenuInputProcessor : PopupMenuInputProcessor? = (JR.cast(self.getPopupMenuInputProcessor(), PopupMenuInputProcessor))
                popupMenuInputProcessor.not_nil!.init(popupMenuRectangle)
            end
            @myFontProcessor = MyFontProcessor.getInstance()
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
    

    def getInGameMenuBehavior : BaseMenuBehavior?
        return InGameMenuBehavior.getInstance()
    end
    

    def setCurrentThread : Nil
        if J2MEUtil.isHTML()
            setCurrentThreadFake()
        else
            super()
        end
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onDisplayChangeEvent(displayChangeEvent : DisplayChangeEvent?) : Nil
        begin
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_START).not_nil!.append(DisplayInfoSingleton.getInstance().not_nil!.toString()).not_nil!.toString(), self, @canvasStrings.not_nil!.jf_UPDATE_MEASUREMENT)
            @myFontProcessor = @updateMyFontProcessor
            @menuBehavior.not_nil!.onDisplayChangeEvent(self, displayChangeEvent)
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @canvasStrings.not_nil!.jf_ON_DISPLAY_CHANGE_EVENT, e)
            else
                raise jex2
            end
        end
    end
    

    def updateMenuFromEvent(displayChangeEvent : DisplayChangeEvent?) : Nil
        formType : FormType? = FormTypeFactory.getInstance().not_nil!.getFormType()
        rectangle : Rectangle? = @formUtil.not_nil!.createFormRectangle()
        @menuForm.not_nil!.init(rectangle, formType)
        if @currentTouchInputFactory != NoButtonsTouchInputFactory.getInstance()
            @touchButtonFactory.not_nil!.toggle(self.isPaused(), @currentTouchInputFactory.not_nil!.getList())
        end
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def processSleep : Nil
        super()
        if AllBinaryMediaManager.update()
            if !@primaryPlayerQueue.not_nil!.process()
                @secondaryPlayerQueue.not_nil!.process()
            end
        end
        if @menuInputProcessor.not_nil!.processInputList() != -1
            @runnableCanvasRefreshHelper.not_nil!.process()
        end
    end
    

    def initPopupMenu : Nil
        if @popupMenuInputProcessor == NoMenuInputProcessor.getInstance()
            features : Features? = Features.getInstance()
            popupMenuRectangle : Rectangle? = @myFormUtil.not_nil!.getPopupMenuRectangle()
            if features.not_nil!.isFeature(@touchFeatureFactory.not_nil!.jf_TOUCH_ENABLED)
                self.setOpenMenuPaintable(BasicPopupMenuPaintable.new.jinit_BasicPopupMenuPaintable(popupMenuRectangle, @gameLayerManager.not_nil!.getBackgroundBasicColor(), @gameLayerManager.not_nil!.getForegroundBasicColor()))
                self.setPopupMenuInputProcessor(PopupMenuInputProcessor.new.jinit_PopupMenuInputProcessor(BasicArrayListD.new.jinit_BasicArrayListD(), -1, self, popupMenuRectangle))
            end
        else
        end
    end
    

    def initMenu : Nil
        begin
            @menuBehavior.not_nil!.initMenu(self)
        rescue jexc3 : ::Exception
            jex3 = JR.jthrowable(jexc3)
            if jex3.is_a?(JException)
                e = jex3.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "initMenu", e)
            else
                raise jex3
            end
        end
    end
    

    def initMenu2 : Nil
        self.closeMenu()
        formType : FormType? = FormTypeFactory.getInstance().not_nil!.getFormType()
        gameLimitedCommandTextItemArrayFactory : GameLimitedCommandTextItemArrayFactory? = GameLimitedCommandTextItemArrayFactory.getInstance()
        commandTextItemArrayFactory : CommandTextItemArrayFactory? = gameLimitedCommandTextItemArrayFactory.not_nil!.getCommandTextItemArrayFactory()
        items : Array(ABCustomItem?)? = commandTextItemArrayFactory.not_nil!.getInstance(self.getCommandStack(), @gameLayerManager.not_nil!.getBackgroundBasicColor(), @gameLayerManager.not_nil!.getForegroundBasicColor())
        rectangle : Rectangle? = @formUtil.not_nil!.createFormRectangle()
        self.setMenuForm(CommandCurrentSelectionFormFactory.getInstance(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, items, rectangle, formType, 25, false, @gameLayerManager.not_nil!.getBackgroundBasicColor(), @gameLayerManager.not_nil!.getForegroundBasicColor()))
        scrollSelectionForm : ScrollSelectionForm? = self.getMenuForm()
        features : Features? = Features.getInstance()
        if features.not_nil!.isFeature(@touchFeatureFactory.not_nil!.jf_TOUCH_ENABLED)
            @mainMenuInputProcessor = PopupCommandFormInputProcessor.new.jinit_PopupCommandFormInputProcessor(BasicArrayListD.new.jinit_BasicArrayListD(), -1, self, scrollSelectionForm, JR.cast(self.getPopupMenuInputProcessor(), PopupMenuInputProcessor))
        else
        end
        self.setMenuInputProcessor(self.getPopupMenuInputProcessor())
        if scrollSelectionForm != ScrollSelectionFormNoneFactory.getInstance()
            self.setFormPaintable(FormPaintable.new.jinit_FormPaintable(scrollSelectionForm))
        else
        end
        self.closeMenu()
    end
    

    def updateMenu : Nil
        begin
            @menuBehavior.not_nil!.updateMenu(self)
        rescue jexc4 : ::Exception
            jex4 = JR.jthrowable(jexc4)
            if jex4.is_a?(JException)
                e = jex4.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "initMenu", e)
            else
                raise jex4
            end
        end
    end
    

    def updateMenu2 : Nil
        scrollSelectionForm : ScrollSelectionForm? = self.getMenuForm()
        scrollSelectionForm.not_nil!.deleteAll()
        gameLimitedCommandTextItemArrayFactory : GameLimitedCommandTextItemArrayFactory? = GameLimitedCommandTextItemArrayFactory.getInstance()
        commandTextItemArrayFactory : CommandTextItemArrayFactory? = gameLimitedCommandTextItemArrayFactory.not_nil!.getCommandTextItemArrayFactory()
        items : Array(ABCustomItem?)? = commandTextItemArrayFactory.not_nil!.getInstance(self.getCommandStack(), @gameLayerManager.not_nil!.getBackgroundBasicColor(), @gameLayerManager.not_nil!.getForegroundBasicColor())
        size : Int32 = items.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            scrollSelectionForm.not_nil!.append(items.not_nil![index])
        end
        formType : FormType? = FormTypeFactory.getInstance().not_nil!.getFormType()
        rectangle : Rectangle? = @formUtil.not_nil!.createFormRectangle()
        scrollSelectionForm.not_nil!.init(rectangle, formType)
    end
    

    def pause : Nil
        @gameBehavior.not_nil!.pause(self)
        self.closeMenu()
        super()
        @touchButtonFactory.not_nil!.toggle(self.isPaused(), BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance())
        @tsUtil.not_nil!.gc()
    end
    

    def unPause : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @gameStrings.not_nil!.jf_UNPAUSE)
        self.closeMenu()
        @tsUtil.not_nil!.gc()
        super()
        @touchButtonFactory.not_nil!.toggle(self.isPaused(), BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance())
        @gameBehavior.not_nil!.unPause(self)
    end
    

    def isPausable : Bool
        if CurrentDisplayableFactory.getInstance().not_nil!.getUsedRunnable() == NullWaitGameRunnable.getInstance()
            return true
        else
            return false
        end
        return false
    end
    

    def popupMenu : Nil
        @menuBehavior.not_nil!.popupMenu(self)
    end
    

    def popupMenu2 : Nil
        @primaryPlayerQueue.not_nil!.add(SelectSound.getInstance())
        self.setMenuPaintable(self.getFormPaintable())
        self.setMenuInputProcessor(@mainMenuInputProcessor)
        @basicMotionGesturesHandler.not_nil!.addListenerInterface(@mainMenuInputProcessor)
        @gameKeyEventHandler.not_nil!.addListener(@mainMenuInputProcessor)
    end
    

    def toggleMenu : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @gameStrings.not_nil!.jf_TOGGLE_MENU)
        if self.getMenuPaintable() == self.getOpenMenuPaintable()
            self.pause()
            self.updateMenu()
            self.popupMenu()
        elsif self.getMenuPaintable() == self.getFormPaintable()
            @primaryPlayerQueue.not_nil!.add(SelectSound.getInstance())
            self.unPause()
        end
    end
    

    def closeMenu : Nil
        @menuBehavior.not_nil!.closeMenu(self)
    end
    

    def closeMenu2 : Nil
        self.setMenuPaintable(self.getOpenMenuPaintable())
        @basicMotionGesturesHandler.not_nil!.removeListener(@mainMenuInputProcessor)
        @gameKeyEventHandler.not_nil!.removeListener(@mainMenuInputProcessor)
        self.setMenuInputProcessor(self.getPopupMenuInputProcessor())
    end
    

    def open : Nil
        @basicMotionGesturesHandler.not_nil!.addListenerInterface(@menuInputProcessor)
        @gameKeyEventHandler.not_nil!.addListener(@menuInputProcessor)
    end
    

    def close : Nil
        @basicMotionGesturesHandler.not_nil!.removeListener(@menuInputProcessor)
        @gameKeyEventHandler.not_nil!.removeListener(@menuInputProcessor)
        @primaryPlayerQueue.not_nil!.clear()
        @secondaryPlayerQueue.not_nil!.clear()
    end
    

    def processorInit : Nil
        self.setMainStateProcessor(Processor.getInstance())
        self.setProcessGameProcessorInit()
    end
    

    def setProcessGameProcessorInit : Nil
        self.setProcessGameProcessor(GameProcessor.new.jinit_GameProcessor(self))
    end
    

    def initSpecialPaint : Nil
        @menuBehavior.not_nil!.initSpecialPaint(self)
    end
    

    def init(gameLayerManager : AllBinaryGameLayerManager?, buffered : Bool) : Nil
        @gameStateTimeHelper.not_nil!.setStartTimeTNT()
        self.setHighScoreSubmitted(false)
        self.setLayerManager(gameLayerManager)
        if !buffered
            j_BUFF_MESSAGE : String = "XXX Not Buffering Causes Concurrency Issues XXX"
            @logUtil.not_nil!.putF(j_BUFF_MESSAGE, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        else
            raise (JException.new.jinit_JException("Buffering is disabled")).not_nil!
        end
        self.setGameInputProcessor(Processor.getInstance())
        features : Features? = Features.getInstance()
        if features.not_nil!.isFeature(GameFeatureFactory.getInstance().not_nil!.jf_CHEATING)
            @isCheating = true
            @cheatProcessor = CheatGameInputProcessor.new.jinit_CheatGameInputProcessor(self)
            @gameKeyEventHandler.not_nil!.addListener(@cheatProcessor)
        else
            @isCheating = false
            @cheatProcessor = NoPlayerGameInput.getInstance()
        end
        @realEndGameProcessor = EndGameProcessor.new.jinit_EndGameProcessor(self)
        self.setEndGameProcessor(Processor.getInstance())
        @realStartIntermissionProcessor = StartIntermissionProcessor.new.jinit_StartIntermissionProcessor(self)
        @startIntermissionProcessor = Processor.getInstance()
        self.setEndGameStatePaintable(EndGamePaintable.new.jinit_EndGamePaintable(self))
        self.setEndGamePaintable(NullPaintable.getInstance())
        self.setIntermissionPaintable(NullPaintable.getInstance())
        self.getStartIntermissionInterface().not_nil!.setListener(self)
    end
    

    def notifyIntermission(enable : Bool) : Nil
        if enable
            @startIntermissionProcessor = @realStartIntermissionProcessor
        else
            @startIntermissionProcessor = Processor.getInstance()
        end
        if enable
            self.setIntermissionPaintable(self.getStartIntermissionPaintable())
        else
            self.setIntermissionPaintable(NullPaintable.getInstance())
        end
    end
    

    def mediaInit : Nil
        ForcedLogUtil.log(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED, self)
    end
    

    def initConfigurable(abeClientInformation : AbeClientInformationInterface?) : Nil
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        progressCanvas.not_nil!.addNormalPortion(50, "Setting Configurables")
        GameInitializationUtil.getInstance().not_nil!.initGame(abeClientInformation, self, @gameInitializationInterfaceFactoryInterface)
        gameFeatureFactory : GameFeatureFactory? = GameFeatureFactory.getInstance()
        changedGameFeatureListener : ChangedGameFeatureListener? = ChangedGameFeatureListener.getInstance()
        if changedGameFeatureListener.not_nil!.isChangedFeature(gameFeatureFactory.not_nil!.jf_SOUND)
            features : Features? = Features.getInstance()
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Sound Changing To: ").not_nil!.appendboolean(features.not_nil!.isFeature(gameFeatureFactory.not_nil!.jf_SOUND)).not_nil!.toString(), self, "initConfigurable")
            self.mediaInit()
            changedGameFeatureListener.not_nil!.remove(gameFeatureFactory.not_nil!.jf_SOUND)
        end
        sensorFeatureFactory : SensorFeatureFactory? = SensorFeatureFactory.getInstance()
        if changedGameFeatureListener.not_nil!.isChangedFeature(sensorFeatureFactory.not_nil!.jf_ORIENTATION_SENSORS) || changedGameFeatureListener.not_nil!.isChangedFeature(sensorFeatureFactory.not_nil!.jf_NO_ORIENTATION) || changedGameFeatureListener.not_nil!.isChangedFeature(sensorFeatureFactory.not_nil!.jf_SIMULATED_ORIENTATION_SENSORS)
            changedGameFeatureListener.not_nil!.remove(sensorFeatureFactory.not_nil!.jf_NO_ORIENTATION)
            changedGameFeatureListener.not_nil!.remove(sensorFeatureFactory.not_nil!.jf_ORIENTATION_SENSORS)
            changedGameFeatureListener.not_nil!.remove(sensorFeatureFactory.not_nil!.jf_SIMULATED_ORIENTATION_SENSORS)
        end
        resourceLoadingLevelFactory : ResourceLoadingLevelFactory? = ResourceLoadingLevelFactory.getInstance()
        self.loadResourceLoadingLevel(resourceLoadingLevelFactory.not_nil!.jf_LOAD_GAME)
    end
    

    def initApp(abeClientInformation : AbeClientInformationInterface?) : Nil
        self.initConfigurable(abeClientInformation)
        self.processorInit()
        @sensorGameUpdateProcessor.not_nil!.process(@gameLayerManager)
        @sensorGameUpdateProcessor.not_nil!.sendNotifications(@gameLayerManager)
        self.initTouch()
    end
    

    def initTouch : Nil
        gameInitializedEvent : GameInitializedEvent? = GameInitializationUtil.getInstance().not_nil!.jf_EVENT
        resourceLoadingLevelFactory : ResourceLoadingLevelFactory? = ResourceLoadingLevelFactory.getInstance()
        gameInitializedEvent.not_nil!.setResourceLoadingLevel(resourceLoadingLevelFactory.not_nil!.jf_LOAD_TOUCH)
        GameInitializedEventHandler.getInstance().not_nil!.fireEvent(gameInitializedEvent)
        @touchButtonFactory.not_nil!.defaultList()
        self.updateTouch()
        self.postInitTouch()
    end
    

    def updateCurrentTouchInputFactory(nextTouchInput : BaseTouchInput?) : Nil
        if nextTouchInput != @currentTouchInputFactory
            @currentTouchInputFactory = nextTouchInput
            PreLogUtil.put(@currentTouchInputFactory.not_nil!.toString(), self, @gameInputStrings.not_nil!.jf_UDPATE_CURRENT_TOUCH_INPUT_FACTORY)
            @touchButtonFactory.not_nil!.toggle(self.isPaused(), @currentTouchInputFactory.not_nil!.getList())
        end
    end
    

    def updateTouch : Nil
        @gameBehavior.not_nil!.updateTouch(self)
    end
    

    def updateTouch2 : Nil
        features : Features? = Features.getInstance()
        if features.not_nil!.isFeature(@touchFeatureFactory.not_nil!.jf_AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            if @gameLayerManager.not_nil!.getGameInfo().not_nil!.getCurrentLevel() &- self.getStartLevel() == 1
                self.setTouchPaintableP(NullPaintable.getInstance())
            end
        end
    end
    

    def postInitTouch : Nil
        self.setTouchButtonsPaintable(TouchButtonsPaintableFactory.getInstance(@gameLayerManager.not_nil!.getForegroundBasicColor()))
        self.updateScreenButtonPaintable()
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        self.removeAllCommands()
        self.addCommands()
        self.setCommandListener(cmdListener)
    end
    

    def addCommands : Nil
        gameCommandsFactory : GameCommandsFactory? = GameCommandsFactory.getInstance()
        myCommandsFactory : MyCommandsFactory? = MyCommandsFactory.getInstance()
        if DebugFactory.getInstance() != NoDebug.getInstance()
            self.addCommand(gameCommandsFactory.not_nil!.jf_START_TRACE)
        end
        self.addCommand(gameCommandsFactory.not_nil!.jf_RESTART_COMMAND)
        self.addCommand(myCommandsFactory.not_nil!.jf_PAUSE_COMMAND)
        self.addCommand(gameCommandsFactory.not_nil!.jf_QUIT_COMMAND)
        isOverScan : Bool = OperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance().not_nil!.isOverScan()
        if J2MEUtil.isHTML()
        elsif SWTUtil.jst_isSWT
        elsif !isOverScan
            if TouchScreenFactory.getInstance().not_nil!.isTouch() && InGameFeatures.new.jinit_InGameFeatures().not_nil!.isAny()
                self.addCommand(InGameOptionsForm.jst_DISPLAY)
            end
            self.addCommand(gameCommandsFactory.not_nil!.jf_SAVE)
            self.addCommand(gameCommandsFactory.not_nil!.jf_DISPLAY_LOAD_FORM)
        end
    end
    

    def itemStateChanged(item : Item?) : Nil
        begin
            itemLabel : String = item.not_nil!.getLabel()
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonLabels.not_nil!.jf_ITEM_LABEL).not_nil!.append(itemLabel).not_nil!.toString(), self, "itemStateChanged")
            if (item).is_a?(ChoiceGroup)
                gameFeatureUtil : GameFeatureUtil? = GameFeatureUtil.getInstance()
                if gameFeatureUtil.not_nil!.isExclusive(itemLabel)
                    gameFeatureUtil.not_nil!.updateExclusiveForChoiceGroup(JR.cast(item, ChoiceGroup))
                else
                    gameFeatureUtil.not_nil!.updateMultiple(JR.cast(item, ChoiceGroup))
                end
            end
            @sensorGameUpdateProcessor.not_nil!.process(@gameLayerManager)
            self.updateTouch()
            self.updateScreenButtonPaintable()
            @sensorGameUpdateProcessor.not_nil!.sendNotifications(@gameLayerManager)
        rescue jexc5 : ::Exception
            jex5 = JR.jthrowable(jexc5)
            if jex5.is_a?(JException)
                e = jex5.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "itemStateChanged", e)
            else
                raise jex5
            end
        end
    end
    

    def updateScreenButtonPaintable : Nil
        @gameBehavior.not_nil!.updateScreenButtonPaintable(self)
    end
    

    def updateScreenButtonPaintable2 : Nil
        features : Features? = Features.getInstance()
        if features.not_nil!.isFeature(@touchFeatureFactory.not_nil!.jf_AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            self.setTouchPaintableP(self.getTouchButtonsPaintable())
            self.setStartLevel(@gameLayerManager.not_nil!.getGameInfo().not_nil!.getCurrentLevel())
        elsif features.not_nil!.isFeature(@touchFeatureFactory.not_nil!.jf_SHOW_SCREEN_BUTTONS)
            self.setTouchPaintableP(self.getTouchButtonsPaintable())
        elsif features.not_nil!.isFeature(@touchFeatureFactory.not_nil!.jf_HIDE_SCREEN_BUTTONS)
            self.setTouchPaintableP(NullPaintable.getInstance())
        else
            self.setTouchPaintableP(NullPaintable.getInstance())
        end
    end
    

    def getLayerManager : AllBinaryGameLayerManager?
        return @gameLayerManager
    end
    

    def setLayerManager(layerManager : AllBinaryGameLayerManager?) : Nil
        @gameLayerManager = layerManager
    end
    

    def isGameOver : Bool
        return @gameOver
    end
    

    def setGameOver(gameOver : Bool) : Nil
        @gameOver = gameOver
    end
    

    def processGameOver : Nil
        PreLogUtil.put(@commonStrings.not_nil!.jf_START, self, @gameStrings.not_nil!.jf_SET_GAME_OVER)
        self.setGameOver(true)
        self.removePauseCommand()
        self.setGameState(@gameStateFactory.not_nil!.jf_SHOW_END_RESULT_GAME_STATE)
        self.setEndGamePaintable(self.getEndGameStatePaintable())
    end
    

    def isHighScoreSubmitted : Bool
        return @highScoreSubmitted
    end
    

    def setHighScoreSubmitted(highScoreSubmitted : Bool) : Nil
        @highScoreSubmitted = highScoreSubmitted
        if highScoreSubmitted
            @highScoresHelper.not_nil!.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance())
        end
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("isHighScoreSubmitted: ").not_nil!.appendboolean(highScoreSubmitted).not_nil!.toString(), self, "setHighScoreSubmitted")
    end
    

    def getGameState : GameState?
        return @gameState
    end
    

    def setGameState(gameState : GameState?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@gameStrings.not_nil!.jf_GAME_STATE).not_nil!.append(@stringUtil.not_nil!.toString(gameState)).not_nil!.toString(), self, @gameStrings.not_nil!.jf_SET_GAME_STATE)
        @gameState = gameState
        @gameStateTimeHelper.not_nil!.setStartTimeTNT()
        self.updateEndGameProcessor()
        self.updateGameKeyEventProcessor()
        @gameBehavior.not_nil!.setGameState(self)
    end
    

    def updateGameState : Nil
        gameAdState : GameAdState? = @gameAdStateFactory.not_nil!.getCurrentInstance()
        gameAdState.not_nil!.processAdState(@gameState, @gameLayerManager.not_nil!.getGameInfo().not_nil!.getGameType())
        if @gameState != @gameStateFactory.not_nil!.jf_PLAYING_GAME_STATE
            gameAdState.not_nil!.processPageAdState()
        end
    end
    

    def updateGameKeyEventProcessor : Nil
        if self.getGameState() != @gameStateFactory.not_nil!.jf_PLAYING_GAME_STATE || @isCheating
        else
        end
    end
    

    def removeAllGameKeyInputListenersOnBuild : Nil
        self.removeAllGameKeyInputListeners()
    end
    

    def removeAllGameKeyInputListeners : Nil
        @gameBehavior.not_nil!.removeAllGameKeyInputListeners(self)
    end
    

    def removeAllGameKeyInputListeners2 : Nil
        @logUtil.not_nil!.putF("Remove PlayerInput Listeners", self, "removeAllGameKeyInputListeners")
        index : Int32 = @localPlayerGameInputList.not_nil!.size() &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            playerGameInput : PlayerGameInput? = JR.cast(@localPlayerGameInputList.not_nil!.get(index), PlayerGameInput)
            self.removeKeyInputListener(playerGameInput)
            playerGameInput.not_nil!.removeNonAIInputGameKeyEvents()
        end
    end
    

    def removeKeyInputListener(playerGameInput : PlayerGameInput?) : Nil
        @gameKeyEventHandler.not_nil!.removeListener(playerGameInput)
    end
    

    def updateEndGameProcessor : Nil
        @gameBehavior.not_nil!.updateEndGameProcessor(self)
    end
    

    def updateEndGameProcessor2 : Nil
        if self.getGameState() == @gameStateFactory.not_nil!.jf_SHOW_END_RESULT_GAME_STATE || self.getGameState() == @gameStateFactory.not_nil!.jf_SHOW_HIGH_SCORE_GAME_STATE
            self.setEndGameProcessor(@realEndGameProcessor)
        else
            self.setEndGameProcessor(Processor.getInstance())
        end
    end
    

    def buildGameInit(isPortion : Bool) : Nil
    end
    

    def cleanupGame : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CLEANUP)
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        progressCanvas.not_nil!.addNormalPortion(10, "Cleaning Up")
        @primaryPlayerQueue.not_nil!.clear()
        @secondaryPlayerQueue.not_nil!.clear()
        GameLevelDisplayChangeEventListenersFactory.getInstance().not_nil!.clear()
    end
    

    def loadResourceLoadingLevel(resourceLoadingLevel : ResourceLoadingLevel?) : Nil
        gameInitializedEvent : GameInitializedEvent? = GameInitializationUtil.getInstance().not_nil!.jf_EVENT
        gameInitializedEvent.not_nil!.setResourceLoadingLevel(resourceLoadingLevel)
        GameInitializedEventHandler.getInstance().not_nil!.fireEvent(gameInitializedEvent)
    end
    

    def loadResources(level : Int) : Nil
        level = level.to_i32!
        gameInitializedEvent : GameInitializedEvent? = GameInitializationUtil.getInstance().not_nil!.jf_EVENT
        gameInitializedEvent.not_nil!.setLevel(level)
        GameInitializedEventHandler.getInstance().not_nil!.fireEvent(gameInitializedEvent)
    end
    

    def updateColor : Nil
    end
    

    def buildGame(portion : Int) : Nil
        portion = portion.to_i32!
        @screenCapture.not_nil!.endRecording()
        @screenCapture.not_nil!.startRecording()
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        features : Features? = Features.getInstance()
        progressCanvas.not_nil!.addNormalPortion(portion, "Generic Build")
        self.removeAllGameKeyInputListenersOnBuild()
        self.updateTouch()
        progressCanvas.not_nil!.addNormalPortion(portion, "High Scores")
        @highScoresFactoryInterface.not_nil!.fetchHighScores(@gameLayerManager.not_nil!.getGameInfo(), @highScoresHelper)
        self.setHighScoresPaintable(NullPaintable.getInstance())
        progressCanvas.not_nil!.addNormalPortion(portion, "Finishing.")
        self.getEndGameInfoP().not_nil!.update(self.getLayerManager().not_nil!.getGameInfo(), self)
        @isSingleKeyRepeatableProcessing = features.not_nil!.isFeature(InputFeatureFactory.getInstance().not_nil!.jf_SINGLE_KEY_REPEAT_PRESS)
        self.setGameOver(false)
        progressCanvas.not_nil!.addNormalPortion(portion, "Finishing..")
        self.updateColor()
        self.getStartIntermissionPaintable().not_nil!.update()
        if !self.isRunningInAnotherThread()
            return
        end
        progressCanvas.not_nil!.addNormalPortion(portion, "Finishing...")
        if self.isMainCanvas() || !self.isInitialized()
            if features.not_nil!.isFeature(MainFeatureFactory.getInstance().not_nil!.jf_LOAD_ONDEMAND)
                if !(self.getCustomCommandListener()).nil?
                    progressCanvas.not_nil!.end_()
                end
            else
                progressCanvas.not_nil!.end_()
            end
            self.setInitialized(true)
        end
        if self.getCustomCommandListener() == NullCommandListener.jst_NULL_COMMAND_LISTENER
            @logUtil.not_nil!.putF("Show Game Paintable in DemoCanvas Thread", self, @j_BUILD_GAME)
            @gameCanvasStartListener.not_nil!.showGamePaintable()
        else
            @logUtil.not_nil!.putF("No GameCanvasStartListener", self, @j_BUILD_GAME)
        end
        @colorFillPaintable.not_nil!.setBasicColorP(@gameLayerManager.not_nil!.getBackgroundBasicColor())
        @gameBehavior.not_nil!.buildGame(self)
    end
    

    def buildGame2 : Nil
        PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@gameInputStrings.not_nil!.jf_ENABLE_PLAYER_GAME_INPUTS).not_nil!.appendint(@localPlayerGameInputList.not_nil!.size()).not_nil!.toString(), self, @j_BUILD_GAME)
        playerGameInput : PlayerGameInput? = nil
        index : Int32 = @localPlayerGameInputList.not_nil!.size() &- 1
        jfor3 = false
        while true
            if jfor3
                index &-= 1
            end
            jfor3 = true
            break unless index >= 0
            playerGameInput = JR.cast(@localPlayerGameInputList.not_nil!.get(index), PlayerGameInput)
            PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@gameInputStrings.not_nil!.jf_ENABLE_PLAYER_GAME_INPUT).not_nil!.append(playerGameInput.not_nil!.toString()).not_nil!.toString(), self, @j_BUILD_GAME)
            playerGameInput.not_nil!.removeNonAIInputGameKeyEvents()
            self.addKeyInputListener(playerGameInput)
        end
    end
    

    def addKeyInputListener(playerGameInput : PlayerGameInput?) : Nil
        GameKeyEventHandler.getInstance().not_nil!.addListenerForPlayer(playerGameInput, playerGameInput.not_nil!.getPlayerInputId())
    end
    

    def setGameCanvasStartListener(gameCanvasStartListener : DemoPaintableInterface?) : Nil
        @gameCanvasStartListener = gameCanvasStartListener
    end
    

    def loadState : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_LOAD)
        hashtable : ABHashtable? = self.getLoadStateHashtable()
        if !(hashtable).nil? && hashtable.not_nil!.size() > 0
            levelAsString : String = JR.castString(hashtable.not_nil!.get(GameInfo.jst_LEVEL_NAME))
            level : Int32 = JInteger.valueOf(levelAsString).not_nil!.intValue()
            gameInfo : GameInfo? = @gameLayerManager.not_nil!.getGameInfo()
            gameInfo.not_nil!.setCurrentLevel(level)
        end
    end
    

    def getLoadStateHashtable : ABHashtable?
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonLabels.not_nil!.jf_START_LABEL).not_nil!.append(@stringUtil.not_nil!.toString(@hashtable)).not_nil!.toString(), self, "getLoadStateHashtable")
        return @hashtable
    end
    

    def setLoadStateHashtable(hashtable : ABHashtable?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonLabels.not_nil!.jf_START_LABEL).not_nil!.append(@stringUtil.not_nil!.toString(hashtable)).not_nil!.toString(), self, "setLoadStateHashtable")
        @hashtable = hashtable
    end
    

    def getCurrentStateHashtable : ABHashtable?
        hashtable : ABHashtable? = @stdUtil.not_nil!.createHashtable()
        level : Int32 = @gameLayerManager.not_nil!.getGameInfo().not_nil!.getCurrentLevel()
        hashtable.not_nil!.put(GameInfo.jst_LEVEL_NAME.not_nil!.toString(), JInteger.toString(level))
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("End: ").not_nil!.append(@stringUtil.not_nil!.toString(hashtable)).not_nil!.toString(), self, "getCurrentStateHashtable")
        return hashtable
    end
    

    def paintGameOver(graphics : Graphics?) : Nil
        ForcedLogUtil.log(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED, self)
    end
    

    def draw(graphics : Graphics?) : Nil
        @colorFillPaintable.not_nil!.paint(graphics)
        @basicSetColorUtil.not_nil!.setBasicColorP(graphics, @gameLayerManager.not_nil!.getForegroundBasicColor())
        @gameSpecificPaintable.not_nil!.paint(graphics)
    end
    

    def clear(graphics : Graphics?) : Nil
        @colorFillPaintable.not_nil!.paint(graphics)
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        @baseGameStatistics.not_nil!.nextRefresh()
        self.draw(graphics)
        @menuPaintable.not_nil!.paint(graphics)
        @progressPaintable.not_nil!.paint(graphics)
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
    

    def processEndLevelIntermissionGameState : Nil
    end
    

    def nonBotPaint(graphics : Graphics?) : Nil
        @endGamePaintable.not_nil!.paint(graphics)
        @intermissionPaintable.not_nil!.paint(graphics)
        self.paintIntermission(graphics)
        @touchPaintable.not_nil!.paint(graphics)
    end
    

    def paintIntermission(graphics : Graphics?) : Nil
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
        @inputProcessor.not_nil!.keyPressedByDevice(keyCode, deviceId)
    end
    

    def keyRepeatedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        if @isSingleKeyRepeatableProcessing
            @inputProcessor.not_nil!.keyPressedByDevice(keyCode, deviceId)
        end
    end
    

    def keyReleasedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        @inputProcessor.not_nil!.keyReleasedByDevice(self, keyCode, deviceId)
    end
    

    def handleRawKey(keyCode : Int, deviceId : Int, repeated : Bool) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
    end
    

    def endProgress(isProgress : Bool) : Int32
        portion : Int32 = 30
        if isProgress && self.isMainCanvas()
            myCommandsFactory : MyCommandsFactory? = MyCommandsFactory.getInstance()
            progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
            progressCanvas.not_nil!.start()
            self.getCustomCommandListener().not_nil!.commandAction(myCommandsFactory.not_nil!.jf_SET_DISPLAYABLE, progressCanvas)
            portion = 4
        end
        return portion
    end
    

    def processPlayingGame : Nil
        @cheatProcessor.not_nil!.update()
        @sensorGameUpdateProcessor.not_nil!.getInputSensor().not_nil!.update()
        @gameInputProcessor.not_nil!.process()
        @gameLayerManager.not_nil!.process()
        @startIntermissionProcessor.not_nil!.process()
    end
    

    def threadInit : Nil
    end
    

    def processGame : Nil
        process()
        if AllBinaryMediaManager.update()
            if !@primaryPlayerQueue.not_nil!.process()
                @secondaryPlayerQueue.not_nil!.process()
            end
        end
        @mainStateProcessor.not_nil!.process()
        @menuInputProcessor.not_nil!.processInputList()
        @endGameProcessor.not_nil!.process()
        @baseGameStatistics.not_nil!.nextFrame()
    end
    

    def notifyDonePainting : Nil
        begin
            @threadObjectUtil.not_nil!.notifyObject(self)
        end
    end
    

    def shouldWait : Nil
        features : Features? = Features.getInstance()
        if AndroidUtil.isAndroid()
        elsif features.not_nil!.isFeature(@openGLFeatureFactory.not_nil!.jf_OPENGL_2D)
        else
            if features.not_nil!.isDefault(@openGLFeatureFactory.not_nil!.jf_OPENGL)
                openGLImageSpecificFactory : OpenGLImageSpecificFactory? = OpenGLImageSpecificFactory.getInstance()
                while openGLImageSpecificFactory.not_nil!.jf_updating
                    JThread.sleep_j(@j_YIELD_SLEEP)
                end
            end
        end
    end
    

    def run : Nil
        begin
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START_RUNNABLE, self, @commonStrings.not_nil!.jf_RUN)
            progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
            progressCanvas.not_nil!.addNormalPortion(50, "Game Thread")
            self.setCurrentThread()
            self.setRunning(true)
            if self.getCustomCommandListener() == NullCommandListener.jst_NULL_COMMAND_LISTENER
                JThread.sleep_j(@j_YIELD_SLEEP)
            end
            self.shouldWait()
            self.threadInit()
            if self.getCustomCommandListener() == NullCommandListener.jst_NULL_COMMAND_LISTENER
                JThread.sleep_j(@j_YIELD_SLEEP)
            end
            self.open()
            gameAdState : GameAdState? = @gameAdStateFactory.not_nil!.getCurrentInstance()
            gameAdState.not_nil!.init()
            gameAdState.not_nil!.setGameIsReady(true)
            @gameBehavior.not_nil!.run(self)
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_END_RUNNABLE, self, @commonStrings.not_nil!.jf_RUN)
        rescue jexc6 : ::Exception
            jex6 = JR.jthrowable(jexc6)
            if jex6.is_a?(JException)
                e = jex6.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_RUN, e)
            else
                raise jex6
            end
        end
    end
    

    def run2 : Nil
        features : Features? = Features.getInstance()
        if features.not_nil!.isDefault(@openGLFeatureFactory.not_nil!.jf_OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()
            if features.not_nil!.isDefault(@openGLFeatureFactory.not_nil!.jf_OPENGL_AS_GAME_THREAD)
                @logUtil.not_nil!.putF(@openGLFeatureFactory.not_nil!.jf_OPENGL_AS_GAME_THREAD.not_nil!.getName(), self, @commonStrings.not_nil!.jf_RUN)
            end
            if J2MEUtil.isHTML()
                @logUtil.not_nil!.putF(GraphicsStrings.getInstance().not_nil!.jf_HTML, self, @commonStrings.not_nil!.jf_RUN)
            end
            currentDisplayableFactory : CurrentDisplayableFactory? = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.not_nil!.setRunnable(@gameRunnable)
            currentDisplayableFactory.not_nil!.setDisplayable(self)
            OpenGLThreadUtil.getInstance().not_nil!.onResume()
        elsif features.not_nil!.isDefault(@openGLFeatureFactory.not_nil!.jf_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)
            @logUtil.not_nil!.putF(@openGLFeatureFactory.not_nil!.jf_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.not_nil!.getName(), self, @commonStrings.not_nil!.jf_RUN)
            OpenGLThreadUtil.getInstance().not_nil!.onResume()
            while self.isRunning()
                self.run3()
            end
            self.end_()
        else
            @logUtil.not_nil!.putF("this thread", self, @commonStrings.not_nil!.jf_RUN)
            while self.isRunning()
                self.run3()
            end
            self.end_()
        end
    end
    

    def run3 : Nil
        @loopTimeHelper.not_nil!.setStartTime(@gameTickTimeDelayHelper.not_nil!.setStartTime())
        @gameTickDisplayInfoSingleton.not_nil!.update()
        self.processGame()
        self.processLoopSleep()
    end
    

    def setRunning(running : Bool) : Nil
        super(running)
        begin
            features : Features? = Features.getInstance()
            if running
            else
                if features.not_nil!.isDefault(@openGLFeatureFactory.not_nil!.jf_OPENGL) || SWTUtil.jst_isSWT
                    if @gameLayerManager.not_nil!.getGameInfo().not_nil!.getGameType() != @gameTypeFactory.not_nil!.jf_BOT
                        currentDisplayableFactory : CurrentDisplayableFactory? = CurrentDisplayableFactory.getInstance()
                        currentDisplayableFactory.not_nil!.clearRunnable()
                    end
                    self.end_()
                end
            end
        rescue jexc7 : ::Exception
            jex7 = JR.jthrowable(jexc7)
            if jex7.is_a?(JException)
                e = jex7.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @j_SET_RUNNING, e)
            else
                raise jex7
            end
        end
    end
    

    def end_ : Nil
        @screenCapture.not_nil!.endRecording()
        @baseGameStatistics.not_nil!.add(StringMaker.new.jinit_StringMaker().not_nil!.append(@baseGameStatistics.not_nil!.toString()).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_NEW_LINE).not_nil!.toString())
        @baseGameStatistics.not_nil!.init()
        @gameKeyEventHandler.not_nil!.removeListener(@cheatProcessor)
        self.close()
        self.removeAllGameKeyInputListeners()
        self.endGameThread()
    end
    

    def endGameThread : Nil
        DisplayChangeEventHandler.getInstance().not_nil!.removeListener(self)
        GameLevelDisplayChangeEventListenersFactory.getInstance().not_nil!.clear()
        gameAdState : GameAdState? = @gameAdStateFactory.not_nil!.getCurrentInstance()
        gameAdState.not_nil!.notPlayingAdState()
    end
    

    def createHighScore(score : Int) : HighScore?
        score = score.to_i64!
        gameInfo : GameInfo? = @gameLayerManager.not_nil!.getGameInfo()
        return HighScore.new.jinit_HighScore(0, "NONE", GameInfo.new.jinit_GameInfo(gameInfo.not_nil!.getGameType(), gameInfo.not_nil!.getGameMode(), PlayerTypesFactory.getInstance().not_nil!.jf_PLAYER_TYPE_ONE, 0, 0), score)
    end
    

    def setHighScore(abeClientInformation : AbeClientInformationInterface?, name : String, score : Int, autoSubmit : Bool, isLast : Bool) : Nil
        score = score.to_i64!
        @gameBehavior.not_nil!.setHighScore(abeClientInformation, self, name, score, autoSubmit, isLast)
    end
    

    def setHighScore2(abeClientInformation : AbeClientInformationInterface?, name : String, score : Int, autoSubmit : Bool, isLast : Bool) : Nil
        score = score.to_i64!
        highScore : HighScore? = self.createHighScore(score)
        textBox : HighScoreTextBox? = HighScoreTextBox.new.jinit_HighScoreTextBox(@highScoresFactoryInterface, @highScoresHelper, abeClientInformation, @gameLayerManager.not_nil!.getGameInfo(), self.getCustomCommandListener(), name, highScore, @gameLayerManager.not_nil!.getBackgroundBasicColor(), @gameLayerManager.not_nil!.getForegroundBasicColor())
        if isLast
            self.getCustomCommandListener().not_nil!.commandAction(GameCommandsFactory.getInstance().not_nil!.jf_SET_MENU_DISPLAYABLE, textBox)
        end
        if autoSubmit
            SecondaryThreadPool.getInstance().not_nil!.runTask(SaveHighScoreRunnable.new.jinit_SaveHighScoreRunnable(isLast, textBox))
        end
    end
    

    def getGameStateTimeHelper : TimeDelayHelper?
        return @gameStateTimeHelper
    end
    

    def setInitialized(initialized : Bool) : Nil
        @initialized = initialized
    end
    

    def isInitialized : Bool
        return @initialized
    end
    

    def getSourceId : Int32
        return AllBinaryGameCanvas.jst_id
    end
    

    def setProgressPaintable(paintable : PaintableInterface?) : Nil
        @progressPaintable = paintable
    end
    

    def getStartIntermissionInterface : IntermissionInterface?
        return @startIntermissionInterface
    end
    

    def getEndLevelIntermissionInterface : IntermissionInterface?
        return @endLevelIntermissionInterface
    end
    

    def setTouchPaintableP(paintable : Paintable?) : Nil
        @touchPaintable = paintable
    end
    

    def getTouchPaintableP : Paintable?
        return @touchPaintable
    end
    

    def setEndGamePaintable(endGamePaintable : Paintable?) : Nil
        @endGamePaintable = endGamePaintable
    end
    

    def getEndGamePaintable : Paintable?
        return @endGamePaintable
    end
    

    def setIntermissionPaintable(intermissionPaintable : Paintable?) : Nil
        @intermissionPaintable = intermissionPaintable
    end
    

    def getIntermissionPaintable : Paintable?
        return @intermissionPaintable
    end
    

    def getEndGameInfoP : EndGameInfo?
        return @endGameInfo
    end
    

    def setHighScoresPaintable(highScoresPaintable : Paintable?) : Nil
        @highScoresPaintable = highScoresPaintable
    end
    

    def getHighScoresPaintable : Paintable?
        return @highScoresPaintable
    end
    

    def getRealHighScoresPaintable : HighScoresPaintable?
        return @realHighScoresPaintable
    end
    

    def clearPlayerGameInputList : Nil
        playerGameInput : PlayerGameInput? = nil
        index : Int32 = @localPlayerGameInputList.not_nil!.size() &- 1
        jfor4 = false
        while true
            if jfor4
                index &-= 1
            end
            jfor4 = true
            break unless index >= 0
            playerGameInput = JR.cast(@localPlayerGameInputList.not_nil!.get(index), PlayerGameInput)
            @gameKeyEventHandler.not_nil!.removeListener(playerGameInput)
        end
        @localPlayerGameInputList.not_nil!.clear()
    end
    

    def addPlayerGameInput(playerGameInput : PlayerGameInput?) : Nil
        @localPlayerGameInputList.not_nil!.add(playerGameInput)
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
    

    def getStartLevel : Int32
        return @startLevel
    end
    

    def setStartLevel(startLevel : Int) : Nil
        startLevel = startLevel.to_i32!
        @startLevel = startLevel
    end
    

    def setTouchButtonsPaintable(touchButtonsPaintable : Paintable?) : Nil
        @touchButtonsPaintable = touchButtonsPaintable
    end
    

    def getTouchButtonsPaintable : Paintable?
        return @touchButtonsPaintable
    end
    

    def setGameInputProcessor(gameInputProcessor : Processor?) : Nil
        @gameInputProcessor = gameInputProcessor
    end
    

    def getGameInputProcessor : Processor?
        return @gameInputProcessor
    end
    

    def setEndGameProcessor(endGameProcessor : Processor?) : Nil
        @endGameProcessor = endGameProcessor
    end
    

    def getEndGameProcessor : Processor?
        return @endGameProcessor
    end
    

    def setEndGameStatePaintable(endGameStatePaintable : Paintable?) : Nil
        @endGameStatePaintable = endGameStatePaintable
    end
    

    def getEndGameStatePaintable : Paintable?
        return @endGameStatePaintable
    end
    

    def setNonBotPaintableP(nonBotPaintable : Paintable?) : Nil
        @nonBotPaintable = nonBotPaintable
    end
    

    def getNonBotPaintableP : Paintable?
        return @nonBotPaintable
    end
    

    def setStartIntermissionPaintable(startIntermissionPaintable : InitUpdatePaintable?) : Nil
        @startIntermissionPaintable = startIntermissionPaintable
    end
    

    def getStartIntermissionPaintable : InitUpdatePaintable?
        return @startIntermissionPaintable
    end
    

    def setMainStateProcessor(mainStateProcessor : Processor?) : Nil
        @mainStateProcessor = mainStateProcessor
    end
    

    def getMainStateProcessor : Processor?
        return @mainStateProcessor
    end
    

    def setProcessGameProcessor(processGameProcessor : Processor?) : Nil
        @processGameProcessor = processGameProcessor
    end
    

    def getProcessGameProcessor : Processor?
        return @processGameProcessor
    end
    

    def setOpenMenuPaintable(openMenuPaintable : Paintable?) : Nil
        @openMenuPaintable = openMenuPaintable
    end
    

    def getOpenMenuPaintable : Paintable?
        return @openMenuPaintable
    end
    

    def setPopupMenuInputProcessor(popupMenuInputProcessor : BasicMenuInputProcessor?) : Nil
        @popupMenuInputProcessor = popupMenuInputProcessor
    end
    

    def getPopupMenuInputProcessor : BasicMenuInputProcessor?
        return @popupMenuInputProcessor
    end
    

    def getSensorGameUpdateProcessor : SensorGameUpdateProcessor?
        return @sensorGameUpdateProcessor
    end
    

    def getRawGameInputProcessor : InputProcessor?
        return @rawGameInputProcessor
    end
    

    def getRawInputProcessor : InputProcessor?
        return @rawInputProcessor
    end
    

    def setInputProcessor(inputProcessor : InputProcessor?) : Nil
        @inputProcessor = inputProcessor
    end
    

    def getInputProcessor : InputProcessor?
        return @inputProcessor
    end
    

    def setMenuPaintable(menuPaintable : Paintable?) : Nil
        @menuPaintable = menuPaintable
    end
    

    def getMenuPaintable : Paintable?
        return @menuPaintable
    end
    

    def setFormPaintable(formPaintable : Paintable?) : Nil
        @formPaintable = formPaintable
    end
    

    def getFormPaintable : Paintable?
        return @formPaintable
    end
    

    def setGameSpecificPaintableP(gameSpecificPaintable : Paintable?) : Nil
        @gameSpecificPaintable = gameSpecificPaintable
    end
    

    def getGameSpecificPaintableP : Paintable?
        return @gameSpecificPaintable
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
    

    def getType : Int32
        return AllBinaryGameCanvas.jst_TYPE
    end
    

    def getTitle : String
        return super()
    end
    

    def isPaused : Bool
        return super()
    end
end

