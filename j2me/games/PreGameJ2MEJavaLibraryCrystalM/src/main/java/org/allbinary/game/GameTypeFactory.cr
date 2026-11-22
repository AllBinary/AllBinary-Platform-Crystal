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

class GameTypeFactory < JObject
    @j_NULL_GAME_TYPE_ARRAY : Array(GameType?)? = nil

    def jf_NULL_GAME_TYPE_ARRAY : Array(GameType?)?
        @j_NULL_GAME_TYPE_ARRAY
    end

    def jf_NULL_GAME_TYPE_ARRAY=(value : Array(GameType?)?) : Array(GameType?)?
        @j_NULL_GAME_TYPE_ARRAY = value
    end
    @j_NONE : GameType? = nil

    def jf_NONE : GameType?
        @j_NONE
    end

    def jf_NONE=(value : GameType?) : GameType?
        @j_NONE = value
    end
    @j_SINGLE_PLAYER : GameType? = nil

    def jf_SINGLE_PLAYER : GameType?
        @j_SINGLE_PLAYER
    end

    def jf_SINGLE_PLAYER=(value : GameType?) : GameType?
        @j_SINGLE_PLAYER = value
    end
    @j_MULTI_PLAYER : GameType? = nil

    def jf_MULTI_PLAYER : GameType?
        @j_MULTI_PLAYER
    end

    def jf_MULTI_PLAYER=(value : GameType?) : GameType?
        @j_MULTI_PLAYER = value
    end
    @j_BOT : GameType? = nil

    def jf_BOT : GameType?
        @j_BOT
    end

    def jf_BOT=(value : GameType?) : GameType?
        @j_BOT = value
    end

    @@jst_instance : GameTypeFactory? = nil

    def self.jst_instance : GameTypeFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameTypeFactory?) : GameTypeFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameTypeFactory.new.jinit_GameTypeFactory()
    end
    

    def self.getInstance : GameTypeFactory?
        return GameTypeFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameTypeFactory : Nil
    @j_NULL_GAME_TYPE_ARRAY = Array(GameType?).new(0, nil)
    @j_NONE = GameType.new.jinit_GameType(StringUtil.getInstance().not_nil!.jf_NULL_STRING)
    @j_SINGLE_PLAYER = GameType.new.jinit_GameType("Single Player")
    @j_MULTI_PLAYER = GameType.new.jinit_GameType("Multi Player")
    @j_BOT = GameType.new.jinit_GameType("Artificial Player")
    end

    def jinit_GameTypeFactory : self
        jfields_GameTypeFactory()
        self
    end
end

