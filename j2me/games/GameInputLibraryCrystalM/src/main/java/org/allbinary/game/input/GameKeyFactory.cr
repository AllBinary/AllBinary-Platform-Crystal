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

class GameKeyFactory < JObject
    @j_NONE : GameKey? = nil

    def jf_NONE : GameKey?
        @j_NONE
    end

    def jf_NONE=(value : GameKey?) : GameKey?
        @j_NONE = value
    end
    @j_UP : GameKey? = nil

    def jf_UP : GameKey?
        @j_UP
    end

    def jf_UP=(value : GameKey?) : GameKey?
        @j_UP = value
    end
    @j_DOWN : GameKey? = nil

    def jf_DOWN : GameKey?
        @j_DOWN
    end

    def jf_DOWN=(value : GameKey?) : GameKey?
        @j_DOWN = value
    end
    @j_LEFT : GameKey? = nil

    def jf_LEFT : GameKey?
        @j_LEFT
    end

    def jf_LEFT=(value : GameKey?) : GameKey?
        @j_LEFT = value
    end
    @j_RIGHT : GameKey? = nil

    def jf_RIGHT : GameKey?
        @j_RIGHT
    end

    def jf_RIGHT=(value : GameKey?) : GameKey?
        @j_RIGHT = value
    end
    @j_KEY_POUND : GameKey? = nil

    def jf_KEY_POUND : GameKey?
        @j_KEY_POUND
    end

    def jf_KEY_POUND=(value : GameKey?) : GameKey?
        @j_KEY_POUND = value
    end
    @j_KEY_STAR : GameKey? = nil

    def jf_KEY_STAR : GameKey?
        @j_KEY_STAR
    end

    def jf_KEY_STAR=(value : GameKey?) : GameKey?
        @j_KEY_STAR = value
    end
    @j_KEY_NUM0 : GameKey? = nil

    def jf_KEY_NUM0 : GameKey?
        @j_KEY_NUM0
    end

    def jf_KEY_NUM0=(value : GameKey?) : GameKey?
        @j_KEY_NUM0 = value
    end
    @j_KEY_NUM1 : GameKey? = nil

    def jf_KEY_NUM1 : GameKey?
        @j_KEY_NUM1
    end

    def jf_KEY_NUM1=(value : GameKey?) : GameKey?
        @j_KEY_NUM1 = value
    end
    @j_KEY_NUM2 : GameKey? = nil

    def jf_KEY_NUM2 : GameKey?
        @j_KEY_NUM2
    end

    def jf_KEY_NUM2=(value : GameKey?) : GameKey?
        @j_KEY_NUM2 = value
    end
    @j_KEY_NUM3 : GameKey? = nil

    def jf_KEY_NUM3 : GameKey?
        @j_KEY_NUM3
    end

    def jf_KEY_NUM3=(value : GameKey?) : GameKey?
        @j_KEY_NUM3 = value
    end
    @j_KEY_NUM4 : GameKey? = nil

    def jf_KEY_NUM4 : GameKey?
        @j_KEY_NUM4
    end

    def jf_KEY_NUM4=(value : GameKey?) : GameKey?
        @j_KEY_NUM4 = value
    end
    @j_KEY_NUM5 : GameKey? = nil

    def jf_KEY_NUM5 : GameKey?
        @j_KEY_NUM5
    end

    def jf_KEY_NUM5=(value : GameKey?) : GameKey?
        @j_KEY_NUM5 = value
    end
    @j_KEY_NUM6 : GameKey? = nil

    def jf_KEY_NUM6 : GameKey?
        @j_KEY_NUM6
    end

    def jf_KEY_NUM6=(value : GameKey?) : GameKey?
        @j_KEY_NUM6 = value
    end
    @j_KEY_NUM7 : GameKey? = nil

    def jf_KEY_NUM7 : GameKey?
        @j_KEY_NUM7
    end

    def jf_KEY_NUM7=(value : GameKey?) : GameKey?
        @j_KEY_NUM7 = value
    end
    @j_KEY_NUM8 : GameKey? = nil

    def jf_KEY_NUM8 : GameKey?
        @j_KEY_NUM8
    end

    def jf_KEY_NUM8=(value : GameKey?) : GameKey?
        @j_KEY_NUM8 = value
    end
    @j_KEY_NUM9 : GameKey? = nil

    def jf_KEY_NUM9 : GameKey?
        @j_KEY_NUM9
    end

    def jf_KEY_NUM9=(value : GameKey?) : GameKey?
        @j_KEY_NUM9 = value
    end
    @j_GAME_A : GameKey? = nil

    def jf_GAME_A : GameKey?
        @j_GAME_A
    end

    def jf_GAME_A=(value : GameKey?) : GameKey?
        @j_GAME_A = value
    end
    @j_GAME_B : GameKey? = nil

    def jf_GAME_B : GameKey?
        @j_GAME_B
    end

    def jf_GAME_B=(value : GameKey?) : GameKey?
        @j_GAME_B = value
    end
    @j_GAME_C : GameKey? = nil

    def jf_GAME_C : GameKey?
        @j_GAME_C
    end

    def jf_GAME_C=(value : GameKey?) : GameKey?
        @j_GAME_C = value
    end
    @j_GAME_D : GameKey? = nil

    def jf_GAME_D : GameKey?
        @j_GAME_D
    end

    def jf_GAME_D=(value : GameKey?) : GameKey?
        @j_GAME_D = value
    end
    @j_FIRE : GameKey? = nil

    def jf_FIRE : GameKey?
        @j_FIRE
    end

    def jf_FIRE=(value : GameKey?) : GameKey?
        @j_FIRE = value
    end
    @j_LEVEL_DOWN : GameKey? = nil

    def jf_LEVEL_DOWN : GameKey?
        @j_LEVEL_DOWN
    end

    def jf_LEVEL_DOWN=(value : GameKey?) : GameKey?
        @j_LEVEL_DOWN = value
    end
    @j_LEVEL_UP : GameKey? = nil

    def jf_LEVEL_UP : GameKey?
        @j_LEVEL_UP
    end

    def jf_LEVEL_UP=(value : GameKey?) : GameKey?
        @j_LEVEL_UP = value
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
    

    def self.getInstance : GameKeyFactory?
        if GameKeyFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            GameKeyFactory.jst_instance = GameKeyFactory.new.jinit_GameKeyFactory()
        end
        return JR.cast(GameKeyFactory.jst_instance, GameKeyFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_GameKeyFactory : Nil
    @j_NONE = GameKey.new.jinit_GameKey(InputFactory.getInstance().not_nil!.jf_MAX &- 1, "None")
    @j_UP = GameKey.new.jinit_GameKey(Canvas.jst_UP, CommonPhoneStrings.getInstance().not_nil!.jf_UP)
    @j_DOWN = GameKey.new.jinit_GameKey(Canvas.jst_DOWN, CommonPhoneStrings.getInstance().not_nil!.jf_DOWN)
    @j_LEFT = GameKey.new.jinit_GameKey(Canvas.jst_LEFT, CommonPhoneStrings.getInstance().not_nil!.jf_LEFT)
    @j_RIGHT = GameKey.new.jinit_GameKey(Canvas.jst_RIGHT, CommonPhoneStrings.getInstance().not_nil!.jf_RIGHT)
    @j_KEY_POUND = GameKey.new.jinit_GameKey(Canvas.jst_KEY_POUND, "POUND")
    @j_KEY_STAR = GameKey.new.jinit_GameKey(Canvas.jst_KEY_STAR, "STAR")
    @j_KEY_NUM0 = GameKey.new.jinit_GameKey(Canvas.jst_KEY_NUM0, CommonPhoneStrings.getInstance().not_nil!.jf_ZERO)
    @j_KEY_NUM1 = GameKey.new.jinit_GameKey(Canvas.jst_KEY_NUM1, CommonPhoneStrings.getInstance().not_nil!.jf_ONE)
    @j_KEY_NUM2 = GameKey.new.jinit_GameKey(Canvas.jst_KEY_NUM2, CommonPhoneStrings.getInstance().not_nil!.jf_TWO)
    @j_KEY_NUM3 = GameKey.new.jinit_GameKey(Canvas.jst_KEY_NUM3, CommonPhoneStrings.getInstance().not_nil!.jf_THREE)
    @j_KEY_NUM4 = GameKey.new.jinit_GameKey(Canvas.jst_KEY_NUM4, CommonPhoneStrings.getInstance().not_nil!.jf_FOUR)
    @j_KEY_NUM5 = GameKey.new.jinit_GameKey(Canvas.jst_KEY_NUM5, CommonPhoneStrings.getInstance().not_nil!.jf_FIVE)
    @j_KEY_NUM6 = GameKey.new.jinit_GameKey(Canvas.jst_KEY_NUM6, CommonPhoneStrings.getInstance().not_nil!.jf_SIX)
    @j_KEY_NUM7 = GameKey.new.jinit_GameKey(Canvas.jst_KEY_NUM7, CommonPhoneStrings.getInstance().not_nil!.jf_SEVEN)
    @j_KEY_NUM8 = GameKey.new.jinit_GameKey(Canvas.jst_KEY_NUM8, CommonPhoneStrings.getInstance().not_nil!.jf_EIGHT)
    @j_KEY_NUM9 = GameKey.new.jinit_GameKey(Canvas.jst_KEY_NUM9, CommonPhoneStrings.getInstance().not_nil!.jf_NINE)
    @j_GAME_A = GameKey.new.jinit_GameKey(Canvas.jst_GAME_A, "Game A")
    @j_GAME_B = GameKey.new.jinit_GameKey(Canvas.jst_GAME_B, "Game B")
    @j_GAME_C = GameKey.new.jinit_GameKey(Canvas.jst_GAME_C, "Game C")
    @j_GAME_D = GameKey.new.jinit_GameKey(Canvas.jst_GAME_D, "Game D")
    @j_FIRE = GameKey.new.jinit_GameKey(Canvas.jst_FIRE, CommonPhoneStrings.getInstance().not_nil!.jf_FIRE)
    @j_LEVEL_DOWN = GameKey.new.jinit_GameKey(Canvas.jst_KEY_NUM9 + 1, "Cheat Level Up")
    @j_LEVEL_UP = GameKey.new.jinit_GameKey(Canvas.jst_KEY_NUM9 + 2, "Cheat Level Down")
    end

    def jinit_GameKeyFactory : self
        jfields_GameKeyFactory()
        self
    end
end

