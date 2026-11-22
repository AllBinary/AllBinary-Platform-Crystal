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
# package org.allbinary.input.motion.touch.action

class DiagonalDownRightTouchInputToGameKeyEventAction < GameKeyCompleteMotionGestureInputEvent

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
    

    def self.getInstance : GameKeyCompleteMotionGestureInputEvent?
        if DiagonalDownRightTouchInputToGameKeyEventAction.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            DiagonalDownRightTouchInputToGameKeyEventAction.jst_instance = DiagonalDownRightTouchInputToGameKeyEventAction.new.jinit_DiagonalDownRightTouchInputToGameKeyEventAction()
        end
        return JR.cast(DiagonalDownRightTouchInputToGameKeyEventAction.jst_instance, GameKeyCompleteMotionGestureInputEvent)
    end
    

    def jinit_DiagonalDownRightTouchInputToGameKeyEventAction : self
        jinit_GameKeyCompleteMotionGestureInputEvent("Diagonal Down Right Action", TouchMotionGestureFactory.getInstance().not_nil!.jf_DIAGONAL_DOWN_RIGHT, PlatformInputMappingFactory.getInstance().not_nil!.getPersistentInputMappingInstance().not_nil!.getInputMapping())
        self
    end
end

