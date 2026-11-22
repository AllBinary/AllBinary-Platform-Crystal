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

class GameKeyMappingFactory < JObject
    @intKeyToGameKey : Array(GameKey?)? = nil

    def jf_intKeyToGameKey : Array(GameKey?)?
        @intKeyToGameKey
    end

    def jf_intKeyToGameKey=(value : Array(GameKey?)?) : Array(GameKey?)?
        @intKeyToGameKey = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : GameKeyMappingFactory?
        if GameKeyMappingFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            GameKeyMappingFactory.jst_instance = GameKeyMappingFactory.new.jinit_GameKeyMappingFactory()
        end
        return JR.cast(GameKeyMappingFactory.jst_instance, GameKeyMappingFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_GameKeyMappingFactory : Nil
    @intKeyToGameKey = Array(GameKey?).new(InputFactory.getInstance().not_nil!.jf_MAX, nil)
    end
    

    def jinit_GameKeyMappingFactory : self
        jfields_GameKeyMappingFactory()
        gameKeyFactory : GameKeyFactory? = GameKeyFactory.getInstance()
        self.setGameKey(gameKeyFactory.not_nil!.jf_NONE)
        self.setGameKey(gameKeyFactory.not_nil!.jf_UP)
        self.setGameKey(gameKeyFactory.not_nil!.jf_DOWN)
        self.setGameKey(gameKeyFactory.not_nil!.jf_LEFT)
        self.setGameKey(gameKeyFactory.not_nil!.jf_RIGHT)
        self.setGameKey(gameKeyFactory.not_nil!.jf_KEY_POUND)
        self.setGameKey(gameKeyFactory.not_nil!.jf_KEY_STAR)
        self.setGameKey(gameKeyFactory.not_nil!.jf_KEY_NUM0)
        self.setGameKey(gameKeyFactory.not_nil!.jf_KEY_NUM1)
        self.setGameKey(gameKeyFactory.not_nil!.jf_KEY_NUM2)
        self.setGameKey(gameKeyFactory.not_nil!.jf_KEY_NUM3)
        self.setGameKey(gameKeyFactory.not_nil!.jf_KEY_NUM4)
        self.setGameKey(gameKeyFactory.not_nil!.jf_KEY_NUM5)
        self.setGameKey(gameKeyFactory.not_nil!.jf_KEY_NUM6)
        self.setGameKey(gameKeyFactory.not_nil!.jf_KEY_NUM7)
        self.setGameKey(gameKeyFactory.not_nil!.jf_KEY_NUM8)
        self.setGameKey(gameKeyFactory.not_nil!.jf_KEY_NUM9)
        self.setGameKey(gameKeyFactory.not_nil!.jf_GAME_A)
        self.setGameKey(gameKeyFactory.not_nil!.jf_GAME_B)
        self.setGameKey(gameKeyFactory.not_nil!.jf_GAME_C)
        self.setGameKey(gameKeyFactory.not_nil!.jf_GAME_D)
        self.setGameKey(gameKeyFactory.not_nil!.jf_FIRE)
        self.setGameKey(gameKeyFactory.not_nil!.jf_LEVEL_DOWN)
        self.setGameKey(gameKeyFactory.not_nil!.jf_LEVEL_UP)
        self
    end
    

    def getGameKey(key : Int) : GameKey?
        key = key.to_i32!
        return @intKeyToGameKey.not_nil![key]
    end
    

    def setGameKey(gameKey : GameKey?) : Nil
        @intKeyToGameKey.not_nil![gameKey.not_nil!.getId()] = gameKey
    end
end

