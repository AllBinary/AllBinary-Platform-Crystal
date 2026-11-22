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
# package org.allbinary.input.motion.gesture.observer

class MotionEventCircularPool < JObject
    @j_MIN : Int32 = 0

    def jf_MIN : Int32
        @j_MIN
    end

    def jf_MIN=(value : Int32) : Int32
        @j_MIN = value
    end
    @eventPool : AllBinaryEventCircularPool? = nil

    def jf_eventPool : AllBinaryEventCircularPool?
        @eventPool
    end

    def jf_eventPool=(value : AllBinaryEventCircularPool?) : AllBinaryEventCircularPool?
        @eventPool = value
    end
    

    def self.createPool(id : Int) : MotionEventCircularPool?
        id = id.to_i32!
        return MotionEventCircularPool.new.jinit_MotionEventCircularPool(id)
    end

    # Java field initializers run after the super constructor
    def jfields_MotionEventCircularPool : Nil
    @j_MIN = TouchMotionGestureFactory.getInstance().not_nil!.jf_LAST_MOTION.not_nil!.getId()
    @eventPool = AllBinaryEventCircularPool.new.jinit_AllBinaryEventCircularPool((InputFactory.getInstance().not_nil!.jf_MAX &- 1) &- @j_MIN)
    end
    

    def jinit_MotionEventCircularPool(id : Int) : self
        id = id.to_i32!
        jfields_MotionEventCircularPool()
        @eventPool.not_nil!.initAllBinaryEventCircularPool(MotionEventFactory.new.jinit_MotionEventFactory(@eventPool, id))
        self
    end
    

    def getInstance(motionGestureInput : MotionGestureInput?) : MotionGestureEvent?
        return JR.cast(@eventPool.not_nil!.getInstance(motionGestureInput.not_nil!.getId() &- @j_MIN), MotionGestureEvent)
    end
end

