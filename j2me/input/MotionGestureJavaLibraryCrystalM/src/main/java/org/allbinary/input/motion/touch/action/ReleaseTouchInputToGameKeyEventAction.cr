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

class ReleaseTouchInputToGameKeyEventAction < GameKeyCompleteMotionGestureInputEvent
    @j_NONE : GameKey? = nil

    def jf_NONE : GameKey?
        @j_NONE
    end

    def jf_NONE=(value : GameKey?) : GameKey?
        @j_NONE = value
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
    

    def self.getInstance : GameKeyCompleteMotionGestureInputEvent?
        if ReleaseTouchInputToGameKeyEventAction.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            ReleaseTouchInputToGameKeyEventAction.jst_instance = ReleaseTouchInputToGameKeyEventAction.new.jinit_ReleaseTouchInputToGameKeyEventAction()
        end
        return JR.cast(ReleaseTouchInputToGameKeyEventAction.jst_instance, GameKeyCompleteMotionGestureInputEvent)
    end

    # Java field initializers run after the super constructor
    def jfields_ReleaseTouchInputToGameKeyEventAction : Nil
    @j_NONE = GameKeyFactory.getInstance().not_nil!.jf_NONE
    end
    

    def jinit_ReleaseTouchInputToGameKeyEventAction : self
        jinit_GameKeyCompleteMotionGestureInputEvent("Release Action", TouchMotionGestureFactory.getInstance().not_nil!.jf_RELEASED, PlatformInputMappingFactory.getInstance().not_nil!.getPersistentInputMappingInstance().not_nil!.getInputMapping())
        jfields_ReleaseTouchInputToGameKeyEventAction()
        begin
            self.setGameKey(@j_NONE)
            self.setGameKeyEvent(GameKeyEventFactory.getInstance().not_nil!.getInstanceForInput(self, @j_NONE))
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_CONSTRUCTOR, e)
            else
                raise jex1
            end
        end
        self
    end
    

    def update : Nil
    end
end

