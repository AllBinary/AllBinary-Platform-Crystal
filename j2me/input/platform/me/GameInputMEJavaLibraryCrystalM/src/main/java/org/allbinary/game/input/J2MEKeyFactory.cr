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

class J2MEKeyFactory < JObject
    @gameKeyFactory : GameKeyFactory? = nil

    def jf_gameKeyFactory : GameKeyFactory?
        @gameKeyFactory
    end

    def jf_gameKeyFactory=(value : GameKeyFactory?) : GameKeyFactory?
        @gameKeyFactory = value
    end

    @@jst_instance : J2MEKeyFactory? = nil

    def self.jst_instance : J2MEKeyFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : J2MEKeyFactory?) : J2MEKeyFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = J2MEKeyFactory.new.jinit_J2MEKeyFactory()
    end
    

    def self.getInstance : J2MEKeyFactory?
        return J2MEKeyFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_J2MEKeyFactory : Nil
    @gameKeyFactory = GameKeyFactory.getInstance()
    end
    

    def jinit_J2MEKeyFactory : self
        jfields_J2MEKeyFactory()
        self
    end
    

    def init : Nil
        gameKeyArray : Array(GameKey?)? = [@gameKeyFactory.not_nil!.jf_DOWN, @gameKeyFactory.not_nil!.jf_FIRE, @gameKeyFactory.not_nil!.jf_GAME_A, @gameKeyFactory.not_nil!.jf_GAME_B, @gameKeyFactory.not_nil!.jf_GAME_C, @gameKeyFactory.not_nil!.jf_GAME_D, @gameKeyFactory.not_nil!.jf_KEY_NUM0, @gameKeyFactory.not_nil!.jf_KEY_NUM1, @gameKeyFactory.not_nil!.jf_KEY_NUM2, @gameKeyFactory.not_nil!.jf_KEY_NUM3, @gameKeyFactory.not_nil!.jf_KEY_NUM4, @gameKeyFactory.not_nil!.jf_KEY_NUM5, @gameKeyFactory.not_nil!.jf_KEY_NUM6, @gameKeyFactory.not_nil!.jf_KEY_NUM7, @gameKeyFactory.not_nil!.jf_KEY_NUM8, @gameKeyFactory.not_nil!.jf_KEY_NUM9, @gameKeyFactory.not_nil!.jf_KEY_POUND, @gameKeyFactory.not_nil!.jf_KEY_STAR, @gameKeyFactory.not_nil!.jf_LEFT, @gameKeyFactory.not_nil!.jf_LEVEL_DOWN, @gameKeyFactory.not_nil!.jf_LEVEL_UP, @gameKeyFactory.not_nil!.jf_NONE, @gameKeyFactory.not_nil!.jf_RIGHT, @gameKeyFactory.not_nil!.jf_UP] of GameKey?
        inputFactory : InputFactory? = InputFactory.getInstance()
        index : Int32 = gameKeyArray.not_nil!.size
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            inputFactory.not_nil!.add(gameKeyArray.not_nil![index].not_nil!.getId(), gameKeyArray.not_nil![index])
        end
    end
    

    def isSubmission(input : Input?) : Bool
        if input == @gameKeyFactory.not_nil!.jf_FIRE
            return true
        end
        return false
    end
    

    def isDelete(input : Input?) : Bool
        if input == @gameKeyFactory.not_nil!.jf_GAME_D
            return true
        end
        return false
    end
    

    def isBackSpace(input : Input?) : Bool
        return false
    end
    

    def isUp(input : Input?) : Bool
        if input == @gameKeyFactory.not_nil!.jf_UP
            return true
        end
        return false
    end
    

    def isDown(input : Input?) : Bool
        if input == @gameKeyFactory.not_nil!.jf_DOWN
            return true
        end
        return false
    end
    

    def isLeft(input : Input?) : Bool
        if input == @gameKeyFactory.not_nil!.jf_LEFT
            return true
        end
        return false
    end
    

    def isRight(input : Input?) : Bool
        if input == @gameKeyFactory.not_nil!.jf_RIGHT
            return true
        end
        return false
    end
    

    def isEnter(input : Input?) : Bool
        if input == @gameKeyFactory.not_nil!.jf_FIRE
            return true
        end
        return false
    end
end

