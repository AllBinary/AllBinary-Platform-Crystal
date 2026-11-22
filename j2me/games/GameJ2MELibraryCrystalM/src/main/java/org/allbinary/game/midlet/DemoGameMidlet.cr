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

class DemoGameMidlet < GameMidlet
    

    def jinit_DemoGameMidlet(clientInformationFactory : ClientInformationFactory?) : self
        jinit_GameMidlet(clientInformationFactory)
        self
    end
    

    def isContinue : Bool
        hashtable : ABHashtable? = self.getStartStateHashtable()
        if !(hashtable).nil? && hashtable.not_nil!.size() > 0
            return true
        else
            return false
        end
        return false
    end
    

    def getHighestLevel : Int32
        return 1
    end
    

    def createDemoGameCanvasRunnableInterface : GameCanvasRunnableInterface?
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED, self, @commonStrings.not_nil!.jf_CREATE)
        return NullGameCanvasRunnable.jst_NULL_GAME_CANVAS_RUNNABLE
    end
    

    def createGameCanvasRunnable(allBinaryGameLayerManager : AllBinaryGameLayerManager?) : GameCanvasRunnableInterface?
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def createGameCanvasRunnableInterface : GameCanvasRunnableInterface?
        return self.createGameCanvasRunnable(self.createGameLayerManager())
    end
    

    def demoSetup : Nil
    end
    

    def postDemoSetup : Nil
    end
    

    def setDemo : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, "setDemo")
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        progressCanvas.not_nil!.start()
        PrimaryThreadPool.getInstance().not_nil!.runTask(DemoRunnable.new.jinit_DemoRunnable(self))
    end
    

    def createGame : Nil
        j_CREATE_GAME : String = "createGame"
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, j_CREATE_GAME)
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        progressCanvas.not_nil!.start()
        hashtable : ABHashtable? = self.getStartStateHashtable()
        self.setStartStateHashtable(StdUtil.getInstance().not_nil!.jf_NULL_TABLE)
        PrimaryThreadPool.getInstance().not_nil!.runTask(CreateGameRunnable.new.jinit_CreateGameRunnable(self, hashtable))
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_END, self, j_CREATE_GAME)
    end
    

    def isReady : Bool
        return true
    end
end

