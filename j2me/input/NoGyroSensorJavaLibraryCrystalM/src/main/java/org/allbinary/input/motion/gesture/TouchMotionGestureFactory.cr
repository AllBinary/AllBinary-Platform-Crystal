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
# package org.allbinary.input.motion.gesture

class TouchMotionGestureFactory < JObject
    @j_LEFT : MotionGestureInput? = nil

    def jf_LEFT : MotionGestureInput?
        @j_LEFT
    end

    def jf_LEFT=(value : MotionGestureInput?) : MotionGestureInput?
        @j_LEFT = value
    end
    @j_RIGHT : MotionGestureInput? = nil

    def jf_RIGHT : MotionGestureInput?
        @j_RIGHT
    end

    def jf_RIGHT=(value : MotionGestureInput?) : MotionGestureInput?
        @j_RIGHT = value
    end
    @j_UP : MotionGestureInput? = nil

    def jf_UP : MotionGestureInput?
        @j_UP
    end

    def jf_UP=(value : MotionGestureInput?) : MotionGestureInput?
        @j_UP = value
    end
    @j_DOWN : MotionGestureInput? = nil

    def jf_DOWN : MotionGestureInput?
        @j_DOWN
    end

    def jf_DOWN=(value : MotionGestureInput?) : MotionGestureInput?
        @j_DOWN = value
    end
    @j_PRESSED : MotionGestureInput? = nil

    def jf_PRESSED : MotionGestureInput?
        @j_PRESSED
    end

    def jf_PRESSED=(value : MotionGestureInput?) : MotionGestureInput?
        @j_PRESSED = value
    end
    @j_RELEASED : MotionGestureInput? = nil

    def jf_RELEASED : MotionGestureInput?
        @j_RELEASED
    end

    def jf_RELEASED=(value : MotionGestureInput?) : MotionGestureInput?
        @j_RELEASED = value
    end
    @j_DIAGONAL_DOWN_RIGHT : MotionGestureInput? = nil

    def jf_DIAGONAL_DOWN_RIGHT : MotionGestureInput?
        @j_DIAGONAL_DOWN_RIGHT
    end

    def jf_DIAGONAL_DOWN_RIGHT=(value : MotionGestureInput?) : MotionGestureInput?
        @j_DIAGONAL_DOWN_RIGHT = value
    end
    @j_DIAGONAL_DOWN_LEFT : MotionGestureInput? = nil

    def jf_DIAGONAL_DOWN_LEFT : MotionGestureInput?
        @j_DIAGONAL_DOWN_LEFT
    end

    def jf_DIAGONAL_DOWN_LEFT=(value : MotionGestureInput?) : MotionGestureInput?
        @j_DIAGONAL_DOWN_LEFT = value
    end
    @j_DIAGONAL_UP_RIGHT : MotionGestureInput? = nil

    def jf_DIAGONAL_UP_RIGHT : MotionGestureInput?
        @j_DIAGONAL_UP_RIGHT
    end

    def jf_DIAGONAL_UP_RIGHT=(value : MotionGestureInput?) : MotionGestureInput?
        @j_DIAGONAL_UP_RIGHT = value
    end
    @j_DIAGONAL_UP_LEFT : MotionGestureInput? = nil

    def jf_DIAGONAL_UP_LEFT : MotionGestureInput?
        @j_DIAGONAL_UP_LEFT
    end

    def jf_DIAGONAL_UP_LEFT=(value : MotionGestureInput?) : MotionGestureInput?
        @j_DIAGONAL_UP_LEFT = value
    end
    @j_SCROLL_UP : MotionGestureInput? = nil

    def jf_SCROLL_UP : MotionGestureInput?
        @j_SCROLL_UP
    end

    def jf_SCROLL_UP=(value : MotionGestureInput?) : MotionGestureInput?
        @j_SCROLL_UP = value
    end
    @j_SCROLL_DOWN : MotionGestureInput? = nil

    def jf_SCROLL_DOWN : MotionGestureInput?
        @j_SCROLL_DOWN
    end

    def jf_SCROLL_DOWN=(value : MotionGestureInput?) : MotionGestureInput?
        @j_SCROLL_DOWN = value
    end
    @j_NO_MOTION : MotionGestureInput? = nil

    def jf_NO_MOTION : MotionGestureInput?
        @j_NO_MOTION
    end

    def jf_NO_MOTION=(value : MotionGestureInput?) : MotionGestureInput?
        @j_NO_MOTION = value
    end
    @j_LAST_MOTION : MotionGestureInput? = nil

    def jf_LAST_MOTION : MotionGestureInput?
        @j_LAST_MOTION
    end

    def jf_LAST_MOTION=(value : MotionGestureInput?) : MotionGestureInput?
        @j_LAST_MOTION = value
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
    

    def self.getInstance : TouchMotionGestureFactory?
        if TouchMotionGestureFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            TouchMotionGestureFactory.jst_instance = TouchMotionGestureFactory.new.jinit_TouchMotionGestureFactory()
        end
        return JR.cast(TouchMotionGestureFactory.jst_instance, TouchMotionGestureFactory)
    end
    

    def jinit_TouchMotionGestureFactory : self
        j_MAX : Int32 = InputFactory.getInstance().not_nil!.jf_MAX
        @j_LEFT = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 3, "Left Touch")
        @j_RIGHT = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 4, "Right Touch")
        @j_UP = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 5, "Up Touch")
        @j_DOWN = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 6, "Down Touch")
        @j_PRESSED = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 7, "Screen Press")
        @j_RELEASED = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 8, "Released")
        @j_DIAGONAL_DOWN_RIGHT = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 9, "Diagonal Dn R")
        @j_DIAGONAL_DOWN_LEFT = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 10, "Diagonal Dn L")
        @j_DIAGONAL_UP_RIGHT = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 11, "Diagonal Up R")
        @j_DIAGONAL_UP_LEFT = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 12, "Diagonal Up L")
        @j_SCROLL_UP = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 13, "Scroll Up")
        @j_SCROLL_DOWN = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 14, "Scroll Down")
        @j_NO_MOTION = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 2, "No Motion")
        @j_LAST_MOTION = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 19, "Last Motion")
        self
    end
end

