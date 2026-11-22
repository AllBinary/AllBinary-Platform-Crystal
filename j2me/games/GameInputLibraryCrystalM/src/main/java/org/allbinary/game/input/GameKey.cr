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

class GameKey < Input

    @@jst_NULL_GAME_KEY : GameKey? = nil

    def self.jst_NULL_GAME_KEY : GameKey?
        jclinit
        @@jst_NULL_GAME_KEY
    end

    def self.jst_NULL_GAME_KEY=(value : GameKey?) : GameKey?
        jclinit
        @@jst_NULL_GAME_KEY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_GAME_KEY = GameKey.new.jinit_GameKey(-1, StringUtil.getInstance().not_nil!.jf_NULL_STRING)
    end
    

    def jinit_GameKey(key : Int, name : String) : self
        key = key.to_i32!
        jinit_Input(key, name)
        self
    end
    

    def toString : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append("GameKey ").not_nil!.append(super()).not_nil!.toString()
    end
end

