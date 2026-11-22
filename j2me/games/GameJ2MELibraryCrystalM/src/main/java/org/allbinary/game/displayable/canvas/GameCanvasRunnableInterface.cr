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

module GameCanvasRunnableInterface
    include JObjectI
    include RunnableInterface
    include PaintableInterface
    include ItemStateListener
    include GameStateCompositeInterface
end

module JObjectI
    def getTitle(*jargs) : NoReturn
        raise JR.abstractMethod("getTitle")
    end
    def isInitialized(*jargs) : NoReturn
        raise JR.abstractMethod("isInitialized")
    end
    def isPaused(*jargs) : NoReturn
        raise JR.abstractMethod("isPaused")
    end
    def unPause(*jargs) : NoReturn
        raise JR.abstractMethod("unPause")
    end
    def pause(*jargs) : NoReturn
        raise JR.abstractMethod("pause")
    end
    def isHighScoreSubmitted(*jargs) : NoReturn
        raise JR.abstractMethod("isHighScoreSubmitted")
    end
    def setHighScoreSubmitted(*jargs) : NoReturn
        raise JR.abstractMethod("setHighScoreSubmitted")
    end
    def processGameOver(*jargs) : NoReturn
        raise JR.abstractMethod("processGameOver")
    end
    def isGameOver(*jargs) : NoReturn
        raise JR.abstractMethod("isGameOver")
    end
    def initCommands(*jargs) : NoReturn
        raise JR.abstractMethod("initCommands")
    end
    def getCurrentStateHashtable(*jargs) : NoReturn
        raise JR.abstractMethod("getCurrentStateHashtable")
    end
    def getLoadStateHashtable(*jargs) : NoReturn
        raise JR.abstractMethod("getLoadStateHashtable")
    end
    def setLoadStateHashtable(*jargs) : NoReturn
        raise JR.abstractMethod("setLoadStateHashtable")
    end
    def getType(*jargs) : NoReturn
        raise JR.abstractMethod("getType")
    end
end

