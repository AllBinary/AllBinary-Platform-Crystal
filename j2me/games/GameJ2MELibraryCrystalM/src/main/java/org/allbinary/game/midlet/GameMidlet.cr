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
# package org.allbinary.game.midlet

class GameMidlet < ProgressMidlet
    include CommandListener
    @enumerationUtil : EnumerationUtil? = nil

    def jf_enumerationUtil : EnumerationUtil?
        @enumerationUtil
    end

    def jf_enumerationUtil=(value : EnumerationUtil?) : EnumerationUtil?
        @enumerationUtil = value
    end
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
    @midletStrings : MidletStrings? = nil

    def jf_midletStrings : MidletStrings?
        @midletStrings
    end

    def jf_midletStrings=(value : MidletStrings?) : MidletStrings?
        @midletStrings = value
    end
    @myCommandsFactory : MyCommandsFactory? = nil

    def jf_myCommandsFactory : MyCommandsFactory?
        @myCommandsFactory
    end

    def jf_myCommandsFactory=(value : MyCommandsFactory?) : MyCommandsFactory?
        @myCommandsFactory = value
    end
    @gameStrings : GameStrings? = nil

    def jf_gameStrings : GameStrings?
        @gameStrings
    end

    def jf_gameStrings=(value : GameStrings?) : GameStrings?
        @gameStrings = value
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
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end
    @j_DISPLAYABLE : String = ""

    def jf_DISPLAYABLE : String
        @j_DISPLAYABLE
    end

    def jf_DISPLAYABLE=(value : String) : String
        @j_DISPLAYABLE = value
    end
    @j_COMMAND_NAME : String = ""

    def jf_COMMAND_NAME : String
        @j_COMMAND_NAME
    end

    def jf_COMMAND_NAME=(value : String) : String
        @j_COMMAND_NAME = value
    end
    @j_NO_COMMAND : String = ""

    def jf_NO_COMMAND : String
        @j_NO_COMMAND
    end

    def jf_NO_COMMAND=(value : String) : String
        @j_NO_COMMAND = value
    end
    @j_NO_DISPLAYABLE : String = ""

    def jf_NO_DISPLAYABLE : String
        @j_NO_DISPLAYABLE
    end

    def jf_NO_DISPLAYABLE=(value : String) : String
        @j_NO_DISPLAYABLE = value
    end
    @j_COMMAND_ACTION : String = ""

    def jf_COMMAND_ACTION : String
        @j_COMMAND_ACTION
    end

    def jf_COMMAND_ACTION=(value : String) : String
        @j_COMMAND_ACTION = value
    end
    @j_PAUSE_APP_BACKGROUND : String = ""

    def jf_PAUSE_APP_BACKGROUND : String
        @j_PAUSE_APP_BACKGROUND
    end

    def jf_PAUSE_APP_BACKGROUND=(value : String) : String
        @j_PAUSE_APP_BACKGROUND = value
    end
    @j_UN_PAUSE_APP_BACKGROUND : String = ""

    def jf_UN_PAUSE_APP_BACKGROUND : String
        @j_UN_PAUSE_APP_BACKGROUND
    end

    def jf_UN_PAUSE_APP_BACKGROUND=(value : String) : String
        @j_UN_PAUSE_APP_BACKGROUND = value
    end
    @aboutCommandProcessor : AboutCommandProcessor? = nil

    def jf_aboutCommandProcessor : AboutCommandProcessor?
        @aboutCommandProcessor
    end

    def jf_aboutCommandProcessor=(value : AboutCommandProcessor?) : AboutCommandProcessor?
        @aboutCommandProcessor = value
    end
    @webCommandProcessor : WebCommandProcessor? = nil

    def jf_webCommandProcessor : WebCommandProcessor?
        @webCommandProcessor
    end

    def jf_webCommandProcessor=(value : WebCommandProcessor?) : WebCommandProcessor?
        @webCommandProcessor = value
    end
    @gameMidletStateFactory : GameMidletStateFactory? = nil

    def jf_gameMidletStateFactory : GameMidletStateFactory?
        @gameMidletStateFactory
    end

    def jf_gameMidletStateFactory=(value : GameMidletStateFactory?) : GameMidletStateFactory?
        @gameMidletStateFactory = value
    end
    @gameStartTimeHelper : TimeDelayHelper? = nil

    def jf_gameStartTimeHelper : TimeDelayHelper?
        @gameStartTimeHelper
    end

    def jf_gameStartTimeHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @gameStartTimeHelper = value
    end
    @fullScreenUtil : FullScreenUtil? = nil

    def jf_fullScreenUtil : FullScreenUtil?
        @fullScreenUtil
    end

    def jf_fullScreenUtil=(value : FullScreenUtil?) : FullScreenUtil?
        @fullScreenUtil = value
    end
    @debugInterface : DebugInterface? = nil

    def jf_debugInterface : DebugInterface?
        @debugInterface
    end

    def jf_debugInterface=(value : DebugInterface?) : DebugInterface?
        @debugInterface = value
    end
    @allbinaryGameCanvasRunnableInterface : GameCanvasRunnableInterface? = nil

    def jf_allbinaryGameCanvasRunnableInterface : GameCanvasRunnableInterface?
        @allbinaryGameCanvasRunnableInterface
    end

    def jf_allbinaryGameCanvasRunnableInterface=(value : GameCanvasRunnableInterface?) : GameCanvasRunnableInterface?
        @allbinaryGameCanvasRunnableInterface = value
    end
    @thread : JThread? = nil

    def jf_thread : JThread?
        @thread
    end

    def jf_thread=(value : JThread?) : JThread?
        @thread = value
    end
    @loadGameForm : CommandForm? = nil

    def jf_loadGameForm : CommandForm?
        @loadGameForm
    end

    def jf_loadGameForm=(value : CommandForm?) : CommandForm?
        @loadGameForm = value
    end
    @isFullScreen : Bool = false

    def jf_isFullScreen : Bool
        @isFullScreen
    end

    def jf_isFullScreen=(value : Bool) : Bool
        @isFullScreen = value
    end
    @resized : Bool = false

    def jf_resized : Bool
        @resized
    end

    def jf_resized=(value : Bool) : Bool
        @resized = value
    end
    @startedBefore : Bool = false

    def jf_startedBefore : Bool
        @startedBefore
    end

    def jf_startedBefore=(value : Bool) : Bool
        @startedBefore = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameMidlet : Nil
    @enumerationUtil = EnumerationUtil.getInstance()
    @basicColorFactory = BasicColorFactory.getInstance()
    @features = Features.getInstance()
    @midletStrings = MidletStrings.getInstance()
    @myCommandsFactory = MyCommandsFactory.getInstance()
    @gameStrings = GameStrings.getInstance()
    @gameAdStateFactory = GameAdStateFactory.getInstance()
    @gameStateFactory = GameStateFactory.getInstance()
    @tsUtil = TsUtil.getInstance()
    @j_DISPLAYABLE = " Displayable: "
    @j_COMMAND_NAME = "command Name/Label: "
    @j_NO_COMMAND = "No Command"
    @j_NO_DISPLAYABLE = "No Displayable"
    @j_COMMAND_ACTION = StringMaker.new.jinit_StringMaker().not_nil!.append("GameMidlet::").not_nil!.append(@midletStrings.not_nil!.jf_COMMAND_ACTION).not_nil!.toString()
    @j_PAUSE_APP_BACKGROUND = "pauseAppBackground"
    @j_UN_PAUSE_APP_BACKGROUND = "unPauseAppBackground"
    @aboutCommandProcessor = AboutCommandProcessor.getInstance()
    @webCommandProcessor = WebCommandProcessor.getInstance()
    @gameMidletStateFactory = GameMidletStateFactory.getInstance()
    @gameStartTimeHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(240)
    @fullScreenUtil = FullScreenUtil.getInstance()
    
    @allbinaryGameCanvasRunnableInterface = NullGameCanvasRunnable.jst_NULL_GAME_CANVAS_RUNNABLE
    @thread = NullThread.jst_NULL_THREAD
    
    
    
    @startedBefore = false
    end
    

    def jinit_GameMidlet(clientInformationFactory : ClientInformationFactory?) : self
        jinit_ProgressMidlet(clientInformationFactory)
        jfields_GameMidlet()
        SmallIntegerSingletonFactory.getInstance().not_nil!.initWithRange(0x291, 6)
        @loadGameForm = CommandForm.getNullCommandForm()
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        progressCanvas.not_nil!.init(self)
        GameFeatureEventHandler.getInstance().not_nil!.addListenerInterface(ChangedGameFeatureListener.getInstance())
        GamePersistanceSingleton.getInstance().not_nil!.clear()
        @debugInterface = DebugFactory.getInstance()
        self.init()
        self
    end
    

    def init : Nil
    end
    

    def setDemo : Nil
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def createGame : Nil
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def mediaShutdown : Nil
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def stopAll : Nil
    end
    

    def pauseApp : Nil
        self.pauseAppBackground(true)
        gameAdState : GameAdState? = @gameAdStateFactory.not_nil!.getCurrentInstance()
        gameAdState.not_nil!.getAdvertisements().not_nil!.stopAll()
    end
    

    def pauseAppBackground(background : Bool) : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @j_PAUSE_APP_BACKGROUND)
        if @allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable.jst_NULL_GAME_CANVAS_RUNNABLE
            @allbinaryGameCanvasRunnableInterface.not_nil!.pause()
        else
            @logUtil.not_nil!.putF("<<<<<< Null", self, @j_PAUSE_APP_BACKGROUND)
        end
        AllBinarySensorManager.getInstance().not_nil!.shutdown()
    end
    

    def unPauseApp : Nil
        self.unPauseAppBackground(true)
        gameAdState : GameAdState? = @gameAdStateFactory.not_nil!.getCurrentInstance()
        gameAdState.not_nil!.getAdvertisements().not_nil!.startAll()
    end
    

    def unPauseAppBackground(background : Bool) : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @j_UN_PAUSE_APP_BACKGROUND)
        AllBinarySensorManager.getInstance().not_nil!.init()
        gameCanvasRunnableInterface : GameCanvasRunnableInterface? = @allbinaryGameCanvasRunnableInterface
        if gameCanvasRunnableInterface != NullGameCanvasRunnable.jst_NULL_GAME_CANVAS_RUNNABLE
            gameCanvasRunnableInterface.not_nil!.unPause()
        else
            @logUtil.not_nil!.putF("<<<<<< Null", self, @j_UN_PAUSE_APP_BACKGROUND)
        end
    end
    

    def destroyAppInRunnable(unconditional : Bool, isProgress : Bool) : Nil
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        if isProgress
            progressCanvas.not_nil!.start()
            self.commandAction(@myCommandsFactory.not_nil!.jf_SET_DISPLAYABLE, progressCanvas)
        end
        self.destroyApp(unconditional)
        if isProgress
            progressCanvas.not_nil!.end_()
        end
    end
    

    def destroyApp(unconditional : Bool) : Nil
        j_METHOD_NAME : String = "GameMidlet::destroyApp"
        begin
            PreLogUtil.put(GameStatisticsFactory.getInstance().not_nil!.toString(), self, j_METHOD_NAME)
            gameAdState : GameAdState? = @gameAdStateFactory.not_nil!.getCurrentInstance()
            gameAdState.not_nil!.getAdvertisements().not_nil!.stopAll()
            if !self.isDestroyed()
                self.stopGameCanvasRunnableInterface()
                self.setGameCanvasRunnableInterface(NullGameCanvasRunnable.jst_NULL_GAME_CANVAS_RUNNABLE)
                self.mediaShutdown()
            else
                @logUtil.not_nil!.putF("Midlet Managment Error: Midlet Should Only Be Destroyed Once", self, j_METHOD_NAME)
            end
            super(true)
            PreLogUtil.put(@commonStrings.not_nil!.jf_END, self, j_METHOD_NAME)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, j_METHOD_NAME, e)
            else
                raise jex1
            end
        end
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_END, self, j_METHOD_NAME)
    end
    

    def startApp : Nil
        begin
            gameAdState : GameAdState? = @gameAdStateFactory.not_nil!.getCurrentInstance()
            gameAdState.not_nil!.getAdvertisements().not_nil!.startAll()
            j_START_APP : String = "startApp"
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, j_START_APP)
            gameCanvasRunnableInterface : JAny = @allbinaryGameCanvasRunnableInterface
            if gameCanvasRunnableInterface == NullGameCanvasRunnable.jst_NULL_GAME_CANVAS_RUNNABLE
                @gameMidletStateFactory.not_nil!.setCurrentGameState(@gameStateFactory.not_nil!.jf_NO_GAME_STATE)
                self.setDemo()
            else
                @logUtil.not_nil!.putF("GameCanvasRunnableInterface is available", self, j_START_APP)
                if gameCanvasRunnableInterface == self.getCurrentDisplayable()
                    self.unPauseAppBackground(false)
                else
                    @logUtil.not_nil!.putF("GameCanvasRunnableInterface is not current displayable", self, j_START_APP)
                end
            end
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "startApp", e)
            self.destroyApp(false)
            self.notifyDestroyed()
            else
                raise jex2
            end
        end
    end
    

    def commandAction(command : Command?, displayable : Displayable?) : Nil
        begin
            displayableAsString : String = @j_NO_DISPLAYABLE
            if !(displayable).nil?
                displayableAsString = displayable.not_nil!.toString()
            end
            label : String = @j_NO_COMMAND
            if !(command).nil?
                label = command.not_nil!.getLabel()
            end
            PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@j_COMMAND_NAME).not_nil!.append(label).not_nil!.append(@j_DISPLAYABLE).not_nil!.append(displayableAsString).not_nil!.toString(), self, @j_COMMAND_ACTION)
            gameCommandsFactory : GameCommandsFactory? = GameCommandsFactory.getInstance()
            allbinaryGameCanvasRunnableInterface : GameCanvasRunnableInterface? = @allbinaryGameCanvasRunnableInterface
            gameCanvasRunnableInterface : JAny = allbinaryGameCanvasRunnableInterface
            if command == gameCommandsFactory.not_nil!.jf_SHOW_GAME_CANVAS
                if self.getDisplay().not_nil!.getCurrent() != gameCanvasRunnableInterface && allbinaryGameCanvasRunnableInterface.not_nil!.getType() != NullGameCanvasRunnable.jst_NULL_GAME_CANVAS_RUNNABLE.not_nil!.getType()
                    self.setDisplay(JR.cast(gameCanvasRunnableInterface, Displayable))
                end
                self.unPauseAppBackground(false)
            elsif command == gameCommandsFactory.not_nil!.jf_CLOSE_AND_SHOW_GAME_CANVAS
                menuListener = (JR.cast(displayable, MenuListener)).as(MenuListener?)
                menuListener.not_nil!.close()
                self.setDisplay(JR.cast(gameCanvasRunnableInterface, Displayable))
                self.unPauseAppBackground(false)
            elsif command == gameCommandsFactory.not_nil!.jf_EXIT_COMMAND
                if GameMidletEventHandler.getInstance().not_nil!.getEventListenerInterfaceListP().not_nil!.size() == 0
                    self.exitProgress(true)
                end
                GameMidletEventHandler.getInstance().not_nil!.fireEvent(DemoGameMidletEvent.new.jinit_DemoGameMidletEvent(self, DemoGameMidletStateFactory.getInstance().not_nil!.jf_NONE))
            elsif command == gameCommandsFactory.not_nil!.jf_EXIT_WITHOUT_PROGRESS_COMMAND
                self.exitProgress(false)
            elsif command == gameCommandsFactory.not_nil!.jf_START_COMMAND || command == gameCommandsFactory.not_nil!.jf_RESTART_COMMAND || command == gameCommandsFactory.not_nil!.jf_CONTINUE_COMMAND
                if @gameMidletStateFactory.not_nil!.getCurrentGameState() != @gameStateFactory.not_nil!.jf_PLAYING_GAME_STATE || command == gameCommandsFactory.not_nil!.jf_RESTART_COMMAND
                    if @gameStartTimeHelper.not_nil!.isTimeTNT()
                        if command == gameCommandsFactory.not_nil!.jf_START_COMMAND && self.isDemoLoading()
                            @logUtil.not_nil!.putF("Trying to Start Game Before Loading Complete", self, @midletStrings.not_nil!.jf_COMMAND_ACTION)
                        else
                            @startedBefore = true
                            self.createGame()
                            @gameMidletStateFactory.not_nil!.setCurrentGameState(@gameStateFactory.not_nil!.jf_PLAYING_GAME_STATE)
                        end
                    else
                        @logUtil.not_nil!.putF("Starting Game Too Often", self, @midletStrings.not_nil!.jf_COMMAND_ACTION)
                    end
                else
                    @logUtil.not_nil!.putF("Already in playing state", self, @j_COMMAND_ACTION)
                end
            elsif command == gameCommandsFactory.not_nil!.jf_BUY_COMMAND
                inApplicationPurchaseFactory : InApplicationPurchaseFactory? = InApplicationPurchaseFactory.getInstance()
                list : BasicArrayList? = LockableFeatureFactory.getInstance().not_nil!.getList()
                lockableFeature : LockableFeature? = JR.cast(list.not_nil!.get(0), LockableFeature)
                if list.not_nil!.size() > 0 && !inApplicationPurchaseFactory.not_nil!.isPurchased(lockableFeature)
                    inApplicationPurchaseFactory.not_nil!.purchase(lockableFeature)
                else
                    TextNotificationUtil.getInstance().not_nil!.fireSuccess("Already Purchased")
                end
            elsif command == gameCommandsFactory.not_nil!.jf_QUIT_COMMAND
                if @gameStartTimeHelper.not_nil!.isTimeTNT()
                    if (displayable).is_a?(HighScoreTextBox)
                        menuListener = (JR.cast(displayable, MenuListener)).as(MenuListener?)
                        menuListener.not_nil!.close()
                    end
                    self.stopGameCanvasRunnableInterface()
                    @gameMidletStateFactory.not_nil!.setCurrentGameState(@gameStateFactory.not_nil!.jf_NO_GAME_STATE)
                    self.setDemo()
                end
            elsif command == @myCommandsFactory.not_nil!.jf_RESUME_COMMAND
                self.unPauseAppBackground(false)
            elsif command == @myCommandsFactory.not_nil!.jf_PAUSE_COMMAND
                self.pauseAppBackground(false)
            elsif command == @myCommandsFactory.not_nil!.jf_SET_DISPLAYABLE
                self.pauseAppBackground(false)
                self.setDisplay(displayable)
            elsif command == gameCommandsFactory.not_nil!.jf_SET_MENU_DISPLAYABLE
                self.pauseAppBackground(false)
                menuListener = (JR.cast(displayable, MenuListener)).as(MenuListener?)
                menuListener.not_nil!.open()
                self.setDisplay(displayable)
            elsif command == gameCommandsFactory.not_nil!.jf_START_TRACE
                @debugInterface.not_nil!.start()
                gameCanvas = (JR.cast(allbinaryGameCanvasRunnableInterface, AllBinaryGameCanvas)).as(AllBinaryGameCanvas?)
                gameCanvas.not_nil!.addCommand(gameCommandsFactory.not_nil!.jf_STOP_TRACE)
                gameCanvas.not_nil!.removeCommand(gameCommandsFactory.not_nil!.jf_START_TRACE)
            elsif command == gameCommandsFactory.not_nil!.jf_STOP_TRACE
                self.pauseAppBackground(false)
                @debugInterface.not_nil!.stop()
                self.unPauseAppBackground(false)
                gameCanvas = (JR.cast(allbinaryGameCanvasRunnableInterface, AllBinaryGameCanvas)).as(AllBinaryGameCanvas?)
                gameCanvas.not_nil!.addCommand(gameCommandsFactory.not_nil!.jf_START_TRACE)
                gameCanvas.not_nil!.removeCommand(gameCommandsFactory.not_nil!.jf_STOP_TRACE)
            elsif command == gameCommandsFactory.not_nil!.jf_DEFAULT_OPTIONS
                tempDisplayable = (displayable).as(Displayable?)
                if (tempDisplayable).is_a?(GameOptionsForm)
                    GameFeatureFormUtil.getInstance().not_nil!.setDefault(JR.cast(tempDisplayable, CommandForm))
                end
            elsif command == GameInputMappingInstructionsCanvas.jst_DISPLAY
                tempDisplayable = (displayable).as(Displayable?)
                if (tempDisplayable).is_a?(GameInputMappingCanvas)
                    gameInputMappingCanvas = (JR.cast(tempDisplayable, GameInputMappingCanvas)).as(GameInputMappingCanvas?)
                    gameInputMappingCanvas.not_nil!.update()
                end
                self.commandAction(gameCommandsFactory.not_nil!.jf_SET_MENU_DISPLAYABLE, self.getInputMappingInstructionsCanvas())
            elsif HighScoreCommandsFactory.getInstance().not_nil!.isHighScoreCommand(command)
                tempDisplayable = (displayable).as(Displayable?)
                if (tempDisplayable).is_a?(HighScoresCanvas)
                    highScoresCanvas : HighScoresCanvas? = JR.cast(tempDisplayable, HighScoresCanvas)
                    highScoresCanvas.not_nil!.updateCommand(command)
                end
            elsif command == HighScoreCommands.getInstance().not_nil!.jf_DISPLAY
                self.commandAction(gameCommandsFactory.not_nil!.jf_SET_MENU_DISPLAYABLE, self.createHighScoresCanvas())
            elsif command == GameInputMappingInstructionsCanvas.jst_CLOSE
                menuListener = (JR.cast(displayable, MenuListener)).as(MenuListener?)
                menuListener.not_nil!.close()
                self.commandAction(GameInputMappingCanvas.jst_DISPLAY, NullCanvas.jst_NULL_CANVAS)
            elsif command == GameInputMappingCanvas.jst_DISPLAY
                if J2MEUtil.isHTML()
                    self.pauseAppBackground(false)
                end
                self.commandAction(gameCommandsFactory.not_nil!.jf_SET_MENU_DISPLAYABLE, self.getInputMappingCanvas())
            elsif command == GameInputMappingCanvas.jst_DEFAULT
                tempDisplayable = (displayable).as(Displayable?)
                if (tempDisplayable).is_a?(GameInputMappingCanvas)
                    gameInputMappingCanvas = (JR.cast(tempDisplayable, GameInputMappingCanvas)).as(GameInputMappingCanvas?)
                    gameInputMappingCanvas.not_nil!.setDefault()
                end
            elsif command == InGameOptionsForm.jst_DISPLAY
                self.pauseAppBackground(false)
                progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
                progressCanvas.not_nil!.addNormalPortion(50, "In Game Options")
                layerManager = (self.createGameLayerManager()).as(AllBinaryGameLayerManager?)
                inGameOptionsFormFactory : InGameOptionsFormFactory? = InGameOptionsFormFactory.getInstance()
                inGameOptionsFormFactory.not_nil!.init(self, InGameFeatures.new.jinit_InGameFeatures(), "Options In Game", layerManager.not_nil!.getBackgroundBasicColor(), layerManager.not_nil!.getForegroundBasicColor())
                inGameOptionsForm = (inGameOptionsFormFactory.not_nil!.get()).as(CommandForm?)
                inGameOptionsForm.not_nil!.setItemStateListener(allbinaryGameCanvasRunnableInterface)
                self.commandAction(gameCommandsFactory.not_nil!.jf_SET_MENU_DISPLAYABLE, inGameOptionsForm)
            elsif command == InGameOptionsForm.jst_DEFAULT
                inGameOptionsForm = (JR.cast(InGameOptionsFormFactory.getInstance().not_nil!.get(), InGameOptionsForm)).as(InGameOptionsForm?)
                GameFeatureFormUtil.getInstance().not_nil!.setDefault(inGameOptionsForm)
            elsif command == gameCommandsFactory.not_nil!.jf_DISPLAY_OPTIONS
                AllBinaryMediaManager.setMuted(true)
                self.stopAll()
                mainFeatureFactory = (MainFeatureFactory.getInstance()).as(MainFeatureFactory?)
                @isFullScreen = @features.not_nil!.isFeature(mainFeatureFactory.not_nil!.jf_FULL_SCREEN)
                ResizableListenerHandler.getInstance().not_nil!.fireEvent(true)
                self.setResized(false)
                self.commandAction(gameCommandsFactory.not_nil!.jf_SET_MENU_DISPLAYABLE, self.getGameOptionsForm())
            elsif command == gameCommandsFactory.not_nil!.jf_CLOSE_OPTIONS
                ResizableListenerHandler.getInstance().not_nil!.fireEvent(false)
                self.commandAction(gameCommandsFactory.not_nil!.jf_CLOSE_AND_SHOW_GAME_CANVAS, displayable)
                stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
                stringBuffer.not_nil!.append("Close isFullScreen/change: ")
                stringBuffer.not_nil!.appendboolean(@isFullScreen)
                stringBuffer.not_nil!.appendboolean(@fullScreenUtil.not_nil!.isScreenChange(@isFullScreen))
                stringBuffer.not_nil!.append(" isResized: ")
                stringBuffer.not_nil!.appendboolean(self.isResized())
                PreLogUtil.put(stringBuffer.not_nil!.toString(), self, @j_COMMAND_ACTION)
                if self.isResized() || @fullScreenUtil.not_nil!.isScreenChange(@isFullScreen)
                    self.updateFullScreen()
                end
                AllBinaryMediaManager.setMuted(false)
            elsif command == gameCommandsFactory.not_nil!.jf_DISPLAY_LOAD_FORM
                self.pauseAppBackground(false)
                keyValuePersistance = (GamePersistanceSingleton.getInstance()).as(KeyValuePersistance?)
                keyValuePersistance.not_nil!.clear()
                keyValuePersistance.not_nil!.loadAll(@abeClientInformation)
                if self.getLoadGameForm() == CommandForm.getNullCommandForm()
                    layerManager = (self.createGameLayerManager()).as(AllBinaryGameLayerManager?)
                    self.setLoadGameForm(LoadGameForm.new.jinit_LoadGameForm(self, "Load Game", layerManager.not_nil!.getBackgroundBasicColor(), layerManager.not_nil!.getForegroundBasicColor()))
                else
                    self.getLoadGameForm().not_nil!.update()
                end
                self.commandAction(gameCommandsFactory.not_nil!.jf_SET_MENU_DISPLAYABLE, self.getLoadGameForm())
            elsif command == gameCommandsFactory.not_nil!.jf_LOAD_FILE
                loadGameForm = (JR.cast(self.getLoadGameForm(), LoadGameForm)).as(LoadGameForm?)
                index = loadGameForm.not_nil!.getSelectedId()
                if index != -1
                    keyValuePersistance = (GamePersistanceSingleton.getInstance()).as(KeyValuePersistance?)
                    self.setStartStateHashtable(keyValuePersistance.not_nil!.get(index))
                    menuListener = (self.getLoadGameForm()).as(MenuListener?)
                    menuListener.not_nil!.close()
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().not_nil!.toString(), self, @j_COMMAND_ACTION)
                    self.commandAction(gameCommandsFactory.not_nil!.jf_START_COMMAND, NullCanvas.jst_NULL_CANVAS)
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().not_nil!.toString(), self, @j_COMMAND_ACTION)
                end
            elsif command == gameCommandsFactory.not_nil!.jf_DELETE_FILE
                loadGameForm = (JR.cast(self.getLoadGameForm(), LoadGameForm)).as(LoadGameForm?)
                index = loadGameForm.not_nil!.getSelectedText()
                if index != -1
                    keyValuePersistance = (GamePersistanceSingleton.getInstance()).as(KeyValuePersistance?)
                    keyValuePersistance.not_nil!.delete(@abeClientInformation, index)
                    keyValuePersistance.not_nil!.clear()
                    keyValuePersistance.not_nil!.loadAllSize(@abeClientInformation, 1)
                    self.getLoadGameForm().not_nil!.update()
                end
            elsif command == gameCommandsFactory.not_nil!.jf_SAVE
                keyValuePersistance = (GamePersistanceSingleton.getInstance()).as(KeyValuePersistance?)
                self.pauseAppBackground(false)
                keyValuePersistance.not_nil!.save(@abeClientInformation, self.getCurrentStateHashtable())
                self.unPauseAppBackground(false)
            elsif command == HighScoreUtil.jst_SUBMIT_TEXTBOX_COMMAND
                @logUtil.not_nil!.putF("Submitted Score", self, @j_COMMAND_ACTION)
                if (displayable).is_a?(HighScoreTextBox)
                    highScoreTextBox : HighScoreTextBox? = JR.cast(displayable, HighScoreTextBox)
                    highScoreTextBox.not_nil!.jf_submitted = true
                end
                allbinaryGameCanvasRunnableInterface.not_nil!.setHighScoreSubmitted(true)
                self.commandAction(gameCommandsFactory.not_nil!.jf_CLOSE_AND_SHOW_GAME_CANVAS, displayable)
            elsif command == gameCommandsFactory.not_nil!.jf_DISPLAY_ABOUT
                @aboutCommandProcessor.not_nil!.process(self, gameCommandsFactory.not_nil!.jf_SET_MENU_DISPLAYABLE, self.getAboutCanvas())
            elsif command == gameCommandsFactory.not_nil!.jf_OPEN_WEB_URL
                @webCommandProcessor.not_nil!.process(self, gameCommandsFactory.not_nil!.jf_OPEN_WEB_URL, NullCanvas.jst_NULL_CANVAS)
            elsif command == gameCommandsFactory.not_nil!.jf_TOGGLE_KEYBOARD
                virtualKeyboardEventHandler : VirtualKeyboardEventHandler? = VirtualKeyboardEventHandler.getInstance()
                virtualKeyboardEventHandler.not_nil!.fireEvent(virtualKeyboardEventHandler.not_nil!.jf_SHOW_EVENT)
            elsif @tsUtil.not_nil!.compareTo(command.not_nil!.getLabel(), gameCommandsFactory.not_nil!.jf_TOGGLE_FULLSCREEN.not_nil!.getLabel()) == 0
                mainFeatureFactory = (MainFeatureFactory.getInstance()).as(MainFeatureFactory?)
                isFullScreen : Bool = @features.not_nil!.isFeature(mainFeatureFactory.not_nil!.jf_FULL_SCREEN)
                if isFullScreen
                    @features.not_nil!.removeDefault(mainFeatureFactory.not_nil!.jf_FULL_SCREEN)
                else
                    @features.not_nil!.addDefault(mainFeatureFactory.not_nil!.jf_FULL_SCREEN)
                end
                self.updateFullScreen()
            end
        rescue jexc3 : ::Exception
            jex3 = JR.jthrowable(jexc3)
            if jex3.is_a?(JException)
                e = jex3.as(JException)
            @logUtil.not_nil!.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_EXCEPTION_LABEL).not_nil!.append(command.not_nil!.getLabel()).not_nil!.toString(), self, @midletStrings.not_nil!.jf_COMMAND_ACTION, e)
            if command != GameCommandsFactory.getInstance().not_nil!.jf_EXIT_COMMAND
                self.exitProgress(false)
            end
            else
                raise jex3
            end
        end
    end
    

    def updateFullScreen : Nil
        mainFeatureFactory : MainFeatureFactory? = MainFeatureFactory.getInstance()
        isFullScreen : Bool = @features.not_nil!.isFeature(mainFeatureFactory.not_nil!.jf_FULL_SCREEN)
        displayable : Displayable? = self.getDisplay().not_nil!.getCurrent()
        if (displayable).is_a?(Canvas)
            canvas : Canvas? = JR.cast(displayable, Canvas)
            canvas.not_nil!.setFullScreenMode(isFullScreen)
        end
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def getInputMappingInstructionsCanvas : MyCanvas?
        return GameInputMappingInstructionsCanvas.new.jinit_GameInputMappingInstructionsCanvas(self, self.createGameLayerManager())
    end
    

    def getInputMappingCanvas : MyCanvas?
        return GameInputMappingCanvas.new.jinit_GameInputMappingCanvas(@abeClientInformation, self, self.createGameLayerManager(), self.getHelpPaintable())
    end
    

    def getAboutCanvas : MyCanvas?
        return BasicPaintablesCanvas.new.jinit_BasicPaintablesCanvas(self, CanvasStrings.getInstance().not_nil!.jf_ABOUT, self.createGameLayerManager(), AboutPaintableFactory.getInstance().not_nil!.jf_paintableArray)
    end
    

    def getHelpPaintable : HelpPaintable?
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def createHighScoresCanvas : HighScoresCanvas?
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def startGameCanvasRunnableInterface : Nil
        threadFactoryUtil : ThreadFactoryUtil? = ThreadFactoryUtil.getInstance()
        @thread = threadFactoryUtil.not_nil!.getInstanceGameCanvasRunnable(@allbinaryGameCanvasRunnableInterface)
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Thread Priority: ").not_nil!.appendint(@thread.not_nil!.getPriority()).not_nil!.toString(), self, "startGameCanvasRunnableInterface")
        @allbinaryGameCanvasRunnableInterface.not_nil!.setThread(@thread)
        threadFactoryUtil.not_nil!.start(@thread)
    end
    

    def stopGameCanvasRunnableInterface : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @gameStrings.not_nil!.jf_STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        GameNotificationEventHandler.getInstance().not_nil!.removeAllListeners()
        ColorChangeEventHandler.getInstance().not_nil!.removeAllListeners()
        GameEventHandlerUtil.removeAllListeners()
        gameCanvasRunnableInterface : GameCanvasRunnableInterface? = @allbinaryGameCanvasRunnableInterface
        if gameCanvasRunnableInterface != NullGameCanvasRunnable.jst_NULL_GAME_CANVAS_RUNNABLE
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Set Running False: ").not_nil!.append(gameCanvasRunnableInterface.not_nil!.toString()).not_nil!.toString(), self, @gameStrings.not_nil!.jf_STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
            gameCanvasRunnableInterface.not_nil!.setRunning(false)
        else
            @logUtil.not_nil!.putF("StopGame - Could Not Stop", self, @gameStrings.not_nil!.jf_STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        end
        ThreadUtil.getInstance().not_nil!.join(@thread)
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        if @features.not_nil!.isFeature(MainFeatureFactory.getInstance().not_nil!.jf_LOAD_ALL)
            progressCanvas.not_nil!.addNormalPortion(50, "Stopped Game Runnable")
        else
            progressCanvas.not_nil!.addNormalPortion(50, "Stopped Main Runnable")
        end
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_END, self, @gameStrings.not_nil!.jf_STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
    end
    

    def getGameCanvasRunnableInterface : GameCanvasRunnableInterface?
        return @allbinaryGameCanvasRunnableInterface
    end
    

    def setGameCanvasRunnableInterface(gameCanvasRunnableInterface : GameCanvasRunnableInterface?) : Nil
        @allbinaryGameCanvasRunnableInterface = gameCanvasRunnableInterface
    end
    

    def createGameLayerManager : AllBinaryGameLayerManager?
        gameInfo : GameInfo? = GameInfo.new.jinit_GameInfo(GameTypeFactory.getInstance().not_nil!.jf_SINGLE_PLAYER, GameMode.jst_SERVER, PlayerTypesFactory.getInstance().not_nil!.jf_PLAYER_TYPE_ONE, 1, 1)
        return AllBinaryGameLayerManager.new.jinit_AllBinaryGameLayerManager(@basicColorFactory.not_nil!.jf_BLACK, @basicColorFactory.not_nil!.jf_WHITE, gameInfo)
    end
    

    def getGameOptionsForm : CommandForm?
        layerManager : AllBinaryGameLayerManager? = self.createGameLayerManager()
        return GameOptionsFormFactory.getInstance().not_nil!.init(self, "Game Options", layerManager.not_nil!.getBackgroundBasicColor(), layerManager.not_nil!.getForegroundBasicColor())
    end
    

    def save : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_SAVE)
        hashtable : ABHashtable? = self.getCurrentStateHashtable()
        GamePersistanceSingleton.getInstance().not_nil!.save(@abeClientInformation, hashtable)
    end
    

    def getCurrentStateHashtable : ABHashtable?
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, "getCurrentStateHashtable")
        hashtable : ABHashtable? = StdUtil.getInstance().not_nil!.createHashtable()
        if @allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable.jst_NULL_GAME_CANVAS_RUNNABLE
            currentHashtable : ABHashtable? = @allbinaryGameCanvasRunnableInterface.not_nil!.getCurrentStateHashtable()
            enumeration : JEnumeration? = currentHashtable.not_nil!.keys()
            key : JAny = nil
            while @enumerationUtil.not_nil!.hasMoreElements(enumeration)
                key = @enumerationUtil.not_nil!.nextElement(enumeration)
                hashtable.not_nil!.put(key, currentHashtable.not_nil!.get(key))
            end
        end
        return hashtable
    end
    

    def setLoadGameForm(loadGameForm : LoadGameForm?) : Nil
        @loadGameForm = loadGameForm
    end
    

    def getLoadGameForm : CommandForm?
        return @loadGameForm
    end
    

    def setResized(resized : Bool) : Nil
        @resized = resized
    end
    

    def isResized : Bool
        return @resized
    end
    

    def isDemoLoading : Bool
        if @startedBefore
            return false
        end
        displayable : Displayable? = self.getDisplay().not_nil!.getCurrent()
        if (displayable).is_a?(DemoCanvas)
            demoCanvas : DemoCanvas? = JR.cast(displayable, DemoCanvas)
            if demoCanvas.not_nil!.isDemoLoading()
                return true
            end
        end
        return false
    end
end

