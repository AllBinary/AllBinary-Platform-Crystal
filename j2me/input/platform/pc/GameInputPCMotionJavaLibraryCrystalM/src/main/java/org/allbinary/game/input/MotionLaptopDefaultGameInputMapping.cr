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

class MotionLaptopDefaultGameInputMapping < PersistentInputMapping
    

    def jinit_MotionLaptopDefaultGameInputMapping : self
        jinit_PersistentInputMapping(GamePersistanceStrings.getInstance().not_nil!.jf_DEFAULT_INPUT_MAPPING_RECORD_ID)
        pcKeyFactory : PCKeyFactory? = PCKeyFactory.getInstance()
        inputToGameKeyMapping : InputToGameKeyMapping? = self.getInputMapping()
        gameKeyFactory : GameKeyFactory? = GameKeyFactory.getInstance()
        touchMotionGestureFactory : TouchMotionGestureFactory? = TouchMotionGestureFactory.getInstance()
        basicTouchInputFactory : BasicTouchInputFactory? = BasicTouchInputFactory.getInstance()
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_FIRE, pcKeyFactory.not_nil!.jf_ENTER)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM1, pcKeyFactory.not_nil!.jf_FOUR)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM1, pcKeyFactory.not_nil!.jf__P)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM1, pcKeyFactory.not_nil!.jf_p)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_UP, pcKeyFactory.not_nil!.jf_DPAD_UP)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_DOWN, pcKeyFactory.not_nil!.jf_DPAD_DOWN)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEFT, pcKeyFactory.not_nil!.jf_DPAD_LEFT)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_RIGHT, pcKeyFactory.not_nil!.jf_DPAD_RIGHT)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM7, pcKeyFactory.not_nil!.jf__Y)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM9, pcKeyFactory.not_nil!.jf__I)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_UP, pcKeyFactory.not_nil!.jf__U)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEFT, pcKeyFactory.not_nil!.jf__H)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_RIGHT, pcKeyFactory.not_nil!.jf__J)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_DOWN, pcKeyFactory.not_nil!.jf__N)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM5, pcKeyFactory.not_nil!.jf__M)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM7, pcKeyFactory.not_nil!.jf_y)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM9, pcKeyFactory.not_nil!.jf_i)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_UP, pcKeyFactory.not_nil!.jf_u)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEFT, pcKeyFactory.not_nil!.jf_h)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_RIGHT, pcKeyFactory.not_nil!.jf_j)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_DOWN, pcKeyFactory.not_nil!.jf_n)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM5, pcKeyFactory.not_nil!.jf_m)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM7, pcKeyFactory.not_nil!.jf__Q)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM9, pcKeyFactory.not_nil!.jf__E)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_UP, pcKeyFactory.not_nil!.jf__W)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEFT, pcKeyFactory.not_nil!.jf__A)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_RIGHT, pcKeyFactory.not_nil!.jf__D)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_DOWN, pcKeyFactory.not_nil!.jf__S)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM5, pcKeyFactory.not_nil!.jf__X)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM7, pcKeyFactory.not_nil!.jf_q)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM9, pcKeyFactory.not_nil!.jf_e)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_UP, pcKeyFactory.not_nil!.jf_w)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEFT, pcKeyFactory.not_nil!.jf_a)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_RIGHT, pcKeyFactory.not_nil!.jf_d)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_DOWN, pcKeyFactory.not_nil!.jf_s)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM5, pcKeyFactory.not_nil!.jf_x)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_UP, touchMotionGestureFactory.not_nil!.jf_UP)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_DOWN, touchMotionGestureFactory.not_nil!.jf_DOWN)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEFT, touchMotionGestureFactory.not_nil!.jf_LEFT)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_RIGHT, touchMotionGestureFactory.not_nil!.jf_RIGHT)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_UP, basicTouchInputFactory.not_nil!.jf_UP)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEFT, basicTouchInputFactory.not_nil!.jf_LEFT)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_RIGHT, basicTouchInputFactory.not_nil!.jf_RIGHT)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_DOWN, basicTouchInputFactory.not_nil!.jf_DOWN)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM0, basicTouchInputFactory.not_nil!.jf_SPECIAL_BUTTON_FIVE)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM7, basicTouchInputFactory.not_nil!.jf_SPECIAL_BUTTON_FOUR)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM9, basicTouchInputFactory.not_nil!.jf_SPECIAL_BUTTON_THREE)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM1, basicTouchInputFactory.not_nil!.jf_SPECIAL_BUTTON_TWO)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM3, basicTouchInputFactory.not_nil!.jf_SPECIAL_BUTTON_ONE)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM2, basicTouchInputFactory.not_nil!.jf_SPECIAL_BUTTON_SIX)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM3, pcKeyFactory.not_nil!.jf_THREE)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM0, pcKeyFactory.not_nil!.jf_ZERO)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM0, pcKeyFactory.not_nil!.jf_ONE)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM0, pcKeyFactory.not_nil!.jf_SPACE)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_POUND, pcKeyFactory.not_nil!.jf_DEL)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_POUND, pcKeyFactory.not_nil!.jf_TWO)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_STAR, pcKeyFactory.not_nil!.jf_ESCAPE)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_STAR, pcKeyFactory.not_nil!.jf_STAR)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEVEL_DOWN, pcKeyFactory.not_nil!.jf_COMMA)
        inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEVEL_UP, pcKeyFactory.not_nil!.jf_PERIOD)
        self
    end
end

