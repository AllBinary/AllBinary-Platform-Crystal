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

class TrackballMotionGestureFactory < JObject
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
    

    def self.getInstance : TrackballMotionGestureFactory?
        if TrackballMotionGestureFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            TrackballMotionGestureFactory.jst_instance = TrackballMotionGestureFactory.new.jinit_TrackballMotionGestureFactory()
        end
        return JR.cast(TrackballMotionGestureFactory.jst_instance, TrackballMotionGestureFactory)
    end
    

    def jinit_TrackballMotionGestureFactory : self
        j_MAX : Int32 = InputFactory.getInstance().not_nil!.jf_MAX
        @j_LEFT = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 26, "L Trackball")
        @j_RIGHT = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 27, "R Trackball")
        @j_UP = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 28, "Up Trackball")
        @j_DOWN = MotionGestureInput.new.jinit_MotionGestureInput(j_MAX &- 29, "D Trackball")
        self
    end
end

