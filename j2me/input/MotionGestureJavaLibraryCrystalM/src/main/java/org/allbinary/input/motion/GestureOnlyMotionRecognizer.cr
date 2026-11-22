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
# package org.allbinary.input.motion

class GestureOnlyMotionRecognizer < MotionRecognizer
    @motionGestureRecognizer : MotionGestureRecognizer? = nil

    def jf_motionGestureRecognizer : MotionGestureRecognizer?
        @motionGestureRecognizer
    end

    def jf_motionGestureRecognizer=(value : MotionGestureRecognizer?) : MotionGestureRecognizer?
        @motionGestureRecognizer = value
    end
    @id : Int32 = 0

    def jf_id : Int32
        @id
    end

    def jf_id=(value : Int32) : Int32
        @id = value
    end

    @@jst_index : Int32 = 0

    def self.jst_index : Int32
        jclinit
        @@jst_index
    end

    def self.jst_index=(value : Int32) : Int32
        jclinit
        @@jst_index = value
    end

    @@jst_pointCircularPool : GPointCircularPool? = nil

    def self.jst_pointCircularPool : GPointCircularPool?
        jclinit
        @@jst_pointCircularPool
    end

    def self.jst_pointCircularPool=(value : GPointCircularPool?) : GPointCircularPool?
        jclinit
        @@jst_pointCircularPool = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_index = 0
        @@jst_pointCircularPool = GPointCircularPool.new.jinit_GPointCircularPool(40)
    end
    

    def jinit_GestureOnlyMotionRecognizer : self
        jinit_MotionRecognizer()
        @id = ((GestureOnlyMotionRecognizer.jst_index &+= 1) &- 1)
        @motionGestureRecognizer = MotionGestureRecognizer.new.jinit_MotionGestureRecognizer(@id)
        self
    end
    

    def processStartMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
        point : CustomGPoint? = JR.cast(GestureOnlyMotionRecognizer.jst_pointCircularPool.not_nil!.getNextInstance(), CustomGPoint)
        point.not_nil!.setX(x)
        point.not_nil!.setY(y)
        @motionGestureRecognizer.not_nil!.processPressedMotionEvent(point, deviceId, modifiers)
    end
    

    def processEndMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
        point : CustomGPoint? = JR.cast(GestureOnlyMotionRecognizer.jst_pointCircularPool.not_nil!.getNextInstance(), CustomGPoint)
        point.not_nil!.setX(x)
        point.not_nil!.setY(y)
        @motionGestureRecognizer.not_nil!.processReleasedMotionEvent(point, deviceId, modifiers)
    end
    

    def processDraggedMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
        point : CustomGPoint? = JR.cast(GestureOnlyMotionRecognizer.jst_pointCircularPool.not_nil!.getNextInstance(), CustomGPoint)
        point.not_nil!.setX(x)
        point.not_nil!.setY(y)
        @motionGestureRecognizer.not_nil!.processDraggedMotionEvent(point, deviceId, modifiers)
    end
end

