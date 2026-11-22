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
# package org.allbinary.game

class GameStrings < JObject
    @j_PROCESS_TICK : String = ""

    def jf_PROCESS_TICK : String
        @j_PROCESS_TICK
    end

    def jf_PROCESS_TICK=(value : String) : String
        @j_PROCESS_TICK = value
    end
    @j_ON_GAME_INITIALIZED : String = ""

    def jf_ON_GAME_INITIALIZED : String
        @j_ON_GAME_INITIALIZED
    end

    def jf_ON_GAME_INITIALIZED=(value : String) : String
        @j_ON_GAME_INITIALIZED = value
    end
    @j_UPDATESURFACE : String = ""

    def jf_UPDATESURFACE : String
        @j_UPDATESURFACE
    end

    def jf_UPDATESURFACE=(value : String) : String
        @j_UPDATESURFACE = value
    end
    @j_ON_SET_DISPLAYABLE : String = ""

    def jf_ON_SET_DISPLAYABLE : String
        @j_ON_SET_DISPLAYABLE
    end

    def jf_ON_SET_DISPLAYABLE=(value : String) : String
        @j_ON_SET_DISPLAYABLE = value
    end
    @j_UNPAUSE : String = ""

    def jf_UNPAUSE : String
        @j_UNPAUSE
    end

    def jf_UNPAUSE=(value : String) : String
        @j_UNPAUSE = value
    end
    @j_TOGGLE_MENU : String = ""

    def jf_TOGGLE_MENU : String
        @j_TOGGLE_MENU
    end

    def jf_TOGGLE_MENU=(value : String) : String
        @j_TOGGLE_MENU = value
    end
    @j_SET_GAME_OVER : String = ""

    def jf_SET_GAME_OVER : String
        @j_SET_GAME_OVER
    end

    def jf_SET_GAME_OVER=(value : String) : String
        @j_SET_GAME_OVER = value
    end
    @j_GAME_STATE : String = ""

    def jf_GAME_STATE : String
        @j_GAME_STATE
    end

    def jf_GAME_STATE=(value : String) : String
        @j_GAME_STATE = value
    end
    @j_SET_GAME_STATE : String = ""

    def jf_SET_GAME_STATE : String
        @j_SET_GAME_STATE
    end

    def jf_SET_GAME_STATE=(value : String) : String
        @j_SET_GAME_STATE = value
    end
    @j_STOP_GAME_CANVAS_RUNNABLE_INTERFACE : String = ""

    def jf_STOP_GAME_CANVAS_RUNNABLE_INTERFACE : String
        @j_STOP_GAME_CANVAS_RUNNABLE_INTERFACE
    end

    def jf_STOP_GAME_CANVAS_RUNNABLE_INTERFACE=(value : String) : String
        @j_STOP_GAME_CANVAS_RUNNABLE_INTERFACE = value
    end

    @@jst_instance : GameStrings? = nil

    def self.jst_instance : GameStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameStrings?) : GameStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameStrings.new.jinit_GameStrings()
    end
    

    def self.getInstance : GameStrings?
        return GameStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameStrings : Nil
    @j_PROCESS_TICK = "processTick"
    @j_ON_GAME_INITIALIZED = "onGameInitialized"
    @j_UPDATESURFACE = "updateSurface"
    @j_ON_SET_DISPLAYABLE = "onSetDisplayable"
    @j_UNPAUSE = "unPause"
    @j_TOGGLE_MENU = "toggleMenu"
    @j_SET_GAME_OVER = "setGameOver"
    @j_GAME_STATE = "Game State: "
    @j_SET_GAME_STATE = "setGameState"
    @j_STOP_GAME_CANVAS_RUNNABLE_INTERFACE = "stopGameCanvasRunnableInterface"
    end

    def jinit_GameStrings : self
        jfields_GameStrings()
        self
    end
end

