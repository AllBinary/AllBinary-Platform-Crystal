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

class NormalJ2MEDefaultGameInputMapping < PersistentInputMapping
    

    def jinit_NormalJ2MEDefaultGameInputMapping : self
        jinit_PersistentInputMapping(GamePersistanceStrings.getInstance().not_nil!.jf_DEFAULT_INPUT_MAPPING_RECORD_ID)
        inputToGameKeyMapping : InputToGameKeyMapping? = self.getInputMapping()
        gameKeyFactory : GameKeyFactory? = GameKeyFactory.getInstance()
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_UP, gameKeyFactory.not_nil!.jf_KEY_NUM2)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEFT, gameKeyFactory.not_nil!.jf_KEY_NUM4)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_RIGHT, gameKeyFactory.not_nil!.jf_KEY_NUM6)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_DOWN, gameKeyFactory.not_nil!.jf_KEY_NUM8)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM1, gameKeyFactory.not_nil!.jf_GAME_A)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM3, gameKeyFactory.not_nil!.jf_GAME_B)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM7, gameKeyFactory.not_nil!.jf_GAME_C)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM9, gameKeyFactory.not_nil!.jf_GAME_D)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEVEL_DOWN, gameKeyFactory.not_nil!.jf_LEVEL_DOWN)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEVEL_UP, gameKeyFactory.not_nil!.jf_LEVEL_UP)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_UP, gameKeyFactory.not_nil!.jf_UP)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_DOWN, gameKeyFactory.not_nil!.jf_DOWN)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEFT, gameKeyFactory.not_nil!.jf_LEFT)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_RIGHT, gameKeyFactory.not_nil!.jf_RIGHT)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_POUND, gameKeyFactory.not_nil!.jf_KEY_POUND)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_STAR, gameKeyFactory.not_nil!.jf_KEY_STAR)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM1, gameKeyFactory.not_nil!.jf_KEY_NUM1)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM3, gameKeyFactory.not_nil!.jf_KEY_NUM3)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM5, gameKeyFactory.not_nil!.jf_KEY_NUM5)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM7, gameKeyFactory.not_nil!.jf_KEY_NUM7)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM9, gameKeyFactory.not_nil!.jf_KEY_NUM9)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM0, gameKeyFactory.not_nil!.jf_KEY_NUM0)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM1, gameKeyFactory.not_nil!.jf_FIRE)
        self
    end
end

