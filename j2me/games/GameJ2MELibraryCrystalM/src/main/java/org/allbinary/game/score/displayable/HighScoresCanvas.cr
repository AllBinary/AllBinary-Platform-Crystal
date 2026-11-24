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
# package org.allbinary.game.score.displayable

class HighScoresCanvas < GameCommandCanvas
    include HighScoresResultsListener
    @paintable : Paintable? = nil

    def jf_paintable : Paintable?
        @paintable
    end

    def jf_paintable=(value : Paintable?) : Paintable?
        @paintable = value
    end
    @highScoreCommandsFactory : HighScoreCommandsFactory? = nil

    def jf_highScoreCommandsFactory : HighScoreCommandsFactory?
        @highScoreCommandsFactory
    end

    def jf_highScoreCommandsFactory=(value : HighScoreCommandsFactory?) : HighScoreCommandsFactory?
        @highScoreCommandsFactory = value
    end
    @waitPaintable : SimpleTextPaintable? = nil

    def jf_waitPaintable : SimpleTextPaintable?
        @waitPaintable
    end

    def jf_waitPaintable=(value : SimpleTextPaintable?) : SimpleTextPaintable?
        @waitPaintable = value
    end
    @highScoresPaintable : HighScoresPaintable? = nil

    def jf_highScoresPaintable : HighScoresPaintable?
        @highScoresPaintable
    end

    def jf_highScoresPaintable=(value : HighScoresPaintable?) : HighScoresPaintable?
        @highScoresPaintable = value
    end
    @highScoresFactoryInterface : HighScoresFactoryInterface? = nil

    def jf_highScoresFactoryInterface : HighScoresFactoryInterface?
        @highScoresFactoryInterface
    end

    def jf_highScoresFactoryInterface=(value : HighScoresFactoryInterface?) : HighScoresFactoryInterface?
        @highScoresFactoryInterface = value
    end
    @colorFillPaintable : ColorFillBasePaintable? = nil

    def jf_colorFillPaintable : ColorFillBasePaintable?
        @colorFillPaintable
    end

    def jf_colorFillPaintable=(value : ColorFillBasePaintable?) : ColorFillBasePaintable?
        @colorFillPaintable = value
    end
    @highScoresHelper : HighScoresHelperBase? = nil

    def jf_highScoresHelper : HighScoresHelperBase?
        @highScoresHelper
    end

    def jf_highScoresHelper=(value : HighScoresHelperBase?) : HighScoresHelperBase?
        @highScoresHelper = value
    end
    @gameInfo : GameInfo? = nil

    def jf_gameInfo : GameInfo?
        @gameInfo
    end

    def jf_gameInfo=(value : GameInfo?) : GameInfo?
        @gameInfo = value
    end
    @highScoresCanvasInputProcessor : HighScoresCanvasInputProcessor? = nil

    def jf_highScoresCanvasInputProcessor : HighScoresCanvasInputProcessor?
        @highScoresCanvasInputProcessor
    end

    def jf_highScoresCanvasInputProcessor=(value : HighScoresCanvasInputProcessor?) : HighScoresCanvasInputProcessor?
        @highScoresCanvasInputProcessor = value
    end
    @currentCommand : Command? = nil

    def jf_currentCommand : Command?
        @currentCommand
    end

    def jf_currentCommand=(value : Command?) : Command?
        @currentCommand = value
    end
    @hasPainted : Bool = false

    def jf_hasPainted : Bool
        @hasPainted
    end

    def jf_hasPainted=(value : Bool) : Bool
        @hasPainted = value
    end

    def self.jst_NAME : String
        "HighScoresCanvas"
    end

    # Java field initializers run after the super constructor
    def jfields_HighScoresCanvas : Nil
    @paintable = NullPaintable.getInstance()
    @highScoreCommandsFactory = HighScoreCommandsFactory.getInstance()
    @waitPaintable = SimpleTextPaintable.new.jinit_SimpleTextPaintable(@commonStrings.not_nil!.jf_PLEASE_WAIT_FOR_SERVER, BasicColorFactory.getInstance().not_nil!.jf_WHITE)
    
    
    
    @highScoresHelper = HighScoresHelperBase.new.jinit_HighScoresHelperBase()
    
    
    @currentCommand = @highScoreCommandsFactory.not_nil!.jf_HIGH_SCORE_COMMANDS.not_nil![0]
    @hasPainted = false
    end
    

    def jinit_HighScoresCanvas(commandListener : CommandListener?, allBinaryGameLayerManager : AllBinaryGameLayerManager?, gameInfo : GameInfo?, paintable : HighScoresPaintable?, highScoresFactoryInterface : HighScoresFactoryInterface?, highScoresCanvasInputProcessorFactoryInterface : HighScoresCanvasInputProcessorFactoryInterface?) : self
        jinit_GameCommandCanvas(commandListener, HighScoresCanvas.jst_NAME, allBinaryGameLayerManager.not_nil!.getBackgroundBasicColor(), allBinaryGameLayerManager.not_nil!.getForegroundBasicColor())
        jfields_HighScoresCanvas()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        @highScoresPaintable = paintable
        @highScoresFactoryInterface = JR.cast(highScoresFactoryInterface, HighScoresFactoryInterface)
        @highScoresCanvasInputProcessor = JR.cast(highScoresCanvasInputProcessorFactoryInterface.not_nil!.getInstance(self), HighScoresCanvasInputProcessor)
        @gameInfo = gameInfo
        @waitPaintable.not_nil!.setBasicColorP(allBinaryGameLayerManager.not_nil!.getForegroundBasicColor())
        self.getHighScoresPaintable().not_nil!.setBasicColorP(allBinaryGameLayerManager.not_nil!.getForegroundBasicColor())
        @colorFillPaintable = ColorFillPaintableFactory.getInstance().not_nil!.getInstance(allBinaryGameLayerManager.not_nil!.getBackgroundBasicColor(), false)
        if @highScoresHelper.not_nil!.getHighScoresArray().not_nil!.size == NoHighScoresFactory.getInstance().not_nil!.jf_NO_HIGH_SCORES.not_nil!.size
            self.setPaintable(@waitPaintable)
        else
            @logUtil.not_nil!.putF("Show HighScores that are already loaded", self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
            self.updateCommand(@currentCommand)
            self.setPaintable(self.getHighScoresPaintable())
        end
        SecondaryThreadPool.getInstance().not_nil!.runTask(HighScoreRunnable.new.jinit_HighScoreRunnable(self))
        self
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().not_nil!.jf_CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    

    def open : Nil
        super()
        @highScoresCanvasInputProcessor.not_nil!.open()
    end
    

    def close : Nil
        super()
        @highScoresCanvasInputProcessor.not_nil!.close()
    end
    

    def paint(graphics : Graphics?) : Nil
        @colorFillPaintable.not_nil!.paint(graphics)
        @paintable.not_nil!.paint(graphics)
        if @waitPaintable != @paintable
            @highScoresCanvasInputProcessor.not_nil!.paint(graphics)
        end
        super(graphics)
        @hasPainted = true
    end
    

    def executeUpdate : Nil
        begin
            @highScoresFactoryInterface.not_nil!.fetchHighScores(self.getGameInfo(), self)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_UPDATE, e)
            else
                raise jex1
            end
        end
    end
    

    def getHighScoresPaintable : HighScoresPaintable?
        return @highScoresPaintable
    end
    

    def setHighScoresArray(highScoresArray : Array(HighScores?)?) : Nil
        begin
            if !(highScoresArray).nil?
                @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_START).not_nil!.appendint(highScoresArray.not_nil!.size).not_nil!.toString(), self, "setHighScoresArray")
            else
                @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, "setHighScoresArray")
            end
            @highScoresHelper.not_nil!.setHighScoresArray(highScoresArray)
            self.updateCommand(@currentCommand)
            self.setPaintable(self.getHighScoresPaintable())
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_UPDATE, e)
            else
                raise jex2
            end
        end
    end
    

    def updateCommand(command : Command?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_START).not_nil!.append(@stringUtil.not_nil!.toString(command)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
        gameCommandsFactory : GameCommandsFactory? = GameCommandsFactory.getInstance()
        if @highScoreCommandsFactory.not_nil!.isHighScoreCommand(command)
            index : Int32 = @highScoreCommandsFactory.not_nil!.getIndex(command)
            nextIndex : Int32 = index &+ 1
            highScoresArray : Array(HighScores?)? = @highScoresHelper.not_nil!.getHighScoresArray()
            if nextIndex >= highScoresArray.not_nil!.size
                nextIndex = 0
            end
            if highScoresArray.not_nil!.size > 0
                self.getHighScoresPaintable().not_nil!.setHighScores(highScoresArray.not_nil![index])
            else
                self.getHighScoresPaintable().not_nil!.setHighScores(NullHighScoresSingletonFactory.getInstance())
            end
            if index != nextIndex
                self.removeAllCommands()
                self.addCommand(gameCommandsFactory.not_nil!.jf_CLOSE_AND_SHOW_GAME_CANVAS)
                self.addCommand(@highScoreCommandsFactory.not_nil!.jf_HIGH_SCORE_COMMANDS.not_nil![nextIndex])
            end
        end
        @currentCommand = command
        self.close()
        initMenu()
        self.open()
        @repaintBehavior.not_nil!.onChangeRepaint(self)
    end
    

    def getGameInfo : GameInfo?
        return @gameInfo
    end
    

    def setPaintable(paintable : Paintable?) : Nil
        @paintable = paintable
        @repaintBehavior.not_nil!.onChangeRepaint(self)
    end
end

