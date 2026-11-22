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
# package org.allbinary.input.gyro

class OrientationMotionGestureFactory < JObject
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
    @j_ROLL_LEFT : MotionGestureInput? = nil

    def jf_ROLL_LEFT : MotionGestureInput?
        @j_ROLL_LEFT
    end

    def jf_ROLL_LEFT=(value : MotionGestureInput?) : MotionGestureInput?
        @j_ROLL_LEFT = value
    end
    @j_ROLL_RIGHT : MotionGestureInput? = nil

    def jf_ROLL_RIGHT : MotionGestureInput?
        @j_ROLL_RIGHT
    end

    def jf_ROLL_RIGHT=(value : MotionGestureInput?) : MotionGestureInput?
        @j_ROLL_RIGHT = value
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
    

    def self.getInstance : OrientationMotionGestureFactory?
        if OrientationMotionGestureFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            OrientationMotionGestureFactory.jst_instance = OrientationMotionGestureFactory.new.jinit_OrientationMotionGestureFactory()
        end
        return JR.cast(OrientationMotionGestureFactory.jst_instance, OrientationMotionGestureFactory)
    end
    

    def jinit_OrientationMotionGestureFactory : self
        j_MAX : Int32 = InputFactory.getInstance().not_nil!.jf_MAX
        @j_LEFT = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 20, "Left Orient")
        @j_RIGHT = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 21, "Right Orient")
        @j_UP = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 22, "Up Orient")
        @j_DOWN = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 23, "Down Orient")
        @j_ROLL_LEFT = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 24, "Roll Left")
        @j_ROLL_RIGHT = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 25, "Roll Right")
        self
    end
end

