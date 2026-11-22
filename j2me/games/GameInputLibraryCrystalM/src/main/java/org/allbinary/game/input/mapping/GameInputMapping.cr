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
# package org.allbinary.game.input.mapping

class GameInputMapping < JObject
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @gameKey : GameKey? = nil

    def jf_gameKey : GameKey?
        @gameKey
    end

    def jf_gameKey=(value : GameKey?) : GameKey?
        @gameKey = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameInputMapping : Nil
    @name = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @gameKey = GameKey.jst_NULL_GAME_KEY
    end
    

    def jinit_GameInputMapping(name : String, gameKey : GameKey?) : self
        jfields_GameInputMapping()
        self.setName(name)
        self.setGameKey(gameKey)
        self
    end
    

    def setGameKey(gameKey : GameKey?) : Nil
        @gameKey = gameKey
    end
    

    def getGameKey : GameKey?
        return @gameKey
    end
    

    def setName(name : String) : Nil
        @name = name
    end
    

    def getName : String
        return @name
    end
end

