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
# package org.allbinary.game.input

class NullPlayerGameInputComposite < JObject
    include PlayerGameInputCompositeInterface

    @@jst_NULL_PLAYER_GAME_INPUT_COMPOSITE : NullPlayerGameInputComposite? = nil

    def self.jst_NULL_PLAYER_GAME_INPUT_COMPOSITE : NullPlayerGameInputComposite?
        jclinit
        @@jst_NULL_PLAYER_GAME_INPUT_COMPOSITE
    end

    def self.jst_NULL_PLAYER_GAME_INPUT_COMPOSITE=(value : NullPlayerGameInputComposite?) : NullPlayerGameInputComposite?
        jclinit
        @@jst_NULL_PLAYER_GAME_INPUT_COMPOSITE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_PLAYER_GAME_INPUT_COMPOSITE = NullPlayerGameInputComposite.new.jinit_NullPlayerGameInputComposite()
    end

    def jinit_NullPlayerGameInputComposite : self
        self
    end
    

    def getName : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def processInput(layerManager : AllBinaryLayerManager?) : Nil
    end
    

    def initInputProcessors : Nil
    end
    

    def getPlayerGameInput : PlayerGameInput?
        return NoPlayerGameInput.getInstance()
    end
end

