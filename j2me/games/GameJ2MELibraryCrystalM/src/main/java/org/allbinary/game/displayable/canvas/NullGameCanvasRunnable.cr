# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

class NullGameCanvasRunnable < JObject
    include GameCanvasRunnableInterface
    @gameStateFactory : GameStateFactory? = nil

    def jf_gameStateFactory : GameStateFactory?
        @gameStateFactory
    end

    def jf_gameStateFactory=(value : GameStateFactory?) : GameStateFactory?
        @gameStateFactory = value
    end

    @@jst_NULL_GAME_CANVAS_RUNNABLE : NullGameCanvasRunnable? = nil

    def self.jst_NULL_GAME_CANVAS_RUNNABLE : NullGameCanvasRunnable?
        jclinit
        @@jst_NULL_GAME_CANVAS_RUNNABLE
    end

    def self.jst_NULL_GAME_CANVAS_RUNNABLE=(value : NullGameCanvasRunnable?) : NullGameCanvasRunnable?
        jclinit
        @@jst_NULL_GAME_CANVAS_RUNNABLE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_GAME_CANVAS_RUNNABLE = NullGameCanvasRunnable.new.jinit_NullGameCanvasRunnable()
    end

    # Java field initializers run after the super constructor
    def jfields_NullGameCanvasRunnable : Nil
    @gameStateFactory = GameStateFactory.getInstance()
    end

    def jinit_NullGameCanvasRunnable : self
        jfields_NullGameCanvasRunnable()
        self
    end
    

    def getTitle : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def isInitialized : Bool
        return false
    end
    

    def isPaused : Bool
        return false
    end
    

    def unPause : Nil
    end
    

    def pause : Nil
    end
    

    def isHighScoreSubmitted : Bool
        return false
    end
    

    def setHighScoreSubmitted(highScoreSubmitted : Bool) : Nil
    end
    

    def processGameOver : Nil
    end
    

    def isGameOver : Bool
        return false
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
    end
    

    def getCurrentStateHashtable : ABHashtable?
        return StdUtil.getInstance().not_nil!.jf_NULL_TABLE
    end
    

    def getLoadStateHashtable : ABHashtable?
        return StdUtil.getInstance().not_nil!.jf_NULL_TABLE
    end
    

    def setLoadStateHashtable(hashtable : ABHashtable?) : Nil
    end
    

    def getType : Int32
        return -1
    end
    

    def setGameState(gameState : GameState?) : Nil
    end
    

    def getGameState : GameState?
        return @gameStateFactory.not_nil!.jf_NO_GAME_STATE
    end
    

    def itemStateChanged(item : Item?) : Nil
    end
    

    def paint(graphics : Graphics?) : Nil
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
    

    def isRunning : Bool
        return false
    end
    

    def setRunning(isRunning : Bool) : Nil
    end
    

    def setThread(thread : JThread?) : Nil
    end
    

    def run : Nil
    end
end

