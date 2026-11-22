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
# package org.allbinary.game.input

class GameInputStrings < JObject
    @j_PROCESS_INPUT : String = ""

    def jf_PROCESS_INPUT : String
        @j_PROCESS_INPUT
    end

    def jf_PROCESS_INPUT=(value : String) : String
        @j_PROCESS_INPUT = value
    end
    @j_KEY_PRESSED : String = ""

    def jf_KEY_PRESSED : String
        @j_KEY_PRESSED
    end

    def jf_KEY_PRESSED=(value : String) : String
        @j_KEY_PRESSED = value
    end
    @j_KEY_RELEASED : String = ""

    def jf_KEY_RELEASED : String
        @j_KEY_RELEASED
    end

    def jf_KEY_RELEASED=(value : String) : String
        @j_KEY_RELEASED = value
    end
    @j_KEY_REPEATED : String = ""

    def jf_KEY_REPEATED : String
        @j_KEY_REPEATED
    end

    def jf_KEY_REPEATED=(value : String) : String
        @j_KEY_REPEATED = value
    end
    @j_ON_PRESS_GAME_KEY : String = ""

    def jf_ON_PRESS_GAME_KEY : String
        @j_ON_PRESS_GAME_KEY
    end

    def jf_ON_PRESS_GAME_KEY=(value : String) : String
        @j_ON_PRESS_GAME_KEY = value
    end
    @j_ON_DOWN_GAME_KEY : String = ""

    def jf_ON_DOWN_GAME_KEY : String
        @j_ON_DOWN_GAME_KEY
    end

    def jf_ON_DOWN_GAME_KEY=(value : String) : String
        @j_ON_DOWN_GAME_KEY = value
    end
    @j_ON_UP_GAME_KEY : String = ""

    def jf_ON_UP_GAME_KEY : String
        @j_ON_UP_GAME_KEY
    end

    def jf_ON_UP_GAME_KEY=(value : String) : String
        @j_ON_UP_GAME_KEY = value
    end
    @j_NO_KEY : String = ""

    def jf_NO_KEY : String
        @j_NO_KEY
    end

    def jf_NO_KEY=(value : String) : String
        @j_NO_KEY = value
    end
    @j_ADD_KEY_EVENT : String = ""

    def jf_ADD_KEY_EVENT : String
        @j_ADD_KEY_EVENT
    end

    def jf_ADD_KEY_EVENT=(value : String) : String
        @j_ADD_KEY_EVENT = value
    end
    @j_REMOVE_KEY_EVENT : String = ""

    def jf_REMOVE_KEY_EVENT : String
        @j_REMOVE_KEY_EVENT
    end

    def jf_REMOVE_KEY_EVENT=(value : String) : String
        @j_REMOVE_KEY_EVENT = value
    end
    @j_STRAFE_LEFT : String = ""

    def jf_STRAFE_LEFT : String
        @j_STRAFE_LEFT
    end

    def jf_STRAFE_LEFT=(value : String) : String
        @j_STRAFE_LEFT = value
    end
    @j_STRAFE_RIGHT : String = ""

    def jf_STRAFE_RIGHT : String
        @j_STRAFE_RIGHT
    end

    def jf_STRAFE_RIGHT=(value : String) : String
        @j_STRAFE_RIGHT = value
    end
    @j_PROCESS_MOTION_INPUT : String = ""

    def jf_PROCESS_MOTION_INPUT : String
        @j_PROCESS_MOTION_INPUT
    end

    def jf_PROCESS_MOTION_INPUT=(value : String) : String
        @j_PROCESS_MOTION_INPUT = value
    end
    @j_UDPATE_CURRENT_TOUCH_INPUT_FACTORY : String = ""

    def jf_UDPATE_CURRENT_TOUCH_INPUT_FACTORY : String
        @j_UDPATE_CURRENT_TOUCH_INPUT_FACTORY
    end

    def jf_UDPATE_CURRENT_TOUCH_INPUT_FACTORY=(value : String) : String
        @j_UDPATE_CURRENT_TOUCH_INPUT_FACTORY = value
    end
    @j_ENABLE_PLAYER_GAME_INPUTS : String = ""

    def jf_ENABLE_PLAYER_GAME_INPUTS : String
        @j_ENABLE_PLAYER_GAME_INPUTS
    end

    def jf_ENABLE_PLAYER_GAME_INPUTS=(value : String) : String
        @j_ENABLE_PLAYER_GAME_INPUTS = value
    end
    @j_ENABLE_PLAYER_GAME_INPUT : String = ""

    def jf_ENABLE_PLAYER_GAME_INPUT : String
        @j_ENABLE_PLAYER_GAME_INPUT
    end

    def jf_ENABLE_PLAYER_GAME_INPUT=(value : String) : String
        @j_ENABLE_PLAYER_GAME_INPUT = value
    end

    @@jst_instance : GameInputStrings? = nil

    def self.jst_instance : GameInputStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameInputStrings?) : GameInputStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameInputStrings.new.jinit_GameInputStrings()
    end
    

    def self.getInstance : GameInputStrings?
        return GameInputStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameInputStrings : Nil
    @j_PROCESS_INPUT = "processInput"
    @j_KEY_PRESSED = "keyPressed"
    @j_KEY_RELEASED = "keyReleased"
    @j_KEY_REPEATED = "keyRepeated"
    @j_ON_PRESS_GAME_KEY = "onPressGameKeyEvent"
    @j_ON_DOWN_GAME_KEY = "onDownGameKeyEvent"
    @j_ON_UP_GAME_KEY = "onUpGameKeyEvent"
    @j_NO_KEY = "Key Code Not Mapped For Game: "
    @j_ADD_KEY_EVENT = "addGameKeyEvent"
    @j_REMOVE_KEY_EVENT = "removeGameKeyEvent"
    @j_STRAFE_LEFT = "strafeLeft"
    @j_STRAFE_RIGHT = "strafeRight"
    @j_PROCESS_MOTION_INPUT = "processMotionInput"
    @j_UDPATE_CURRENT_TOUCH_INPUT_FACTORY = "updateCurrentTouchInputFactory"
    @j_ENABLE_PLAYER_GAME_INPUTS = "Enabling PlayerGameInputs: "
    @j_ENABLE_PLAYER_GAME_INPUT = "Enabling PlayerGameInput: "
    end

    def jinit_GameInputStrings : self
        jfields_GameInputStrings()
        self
    end
end

