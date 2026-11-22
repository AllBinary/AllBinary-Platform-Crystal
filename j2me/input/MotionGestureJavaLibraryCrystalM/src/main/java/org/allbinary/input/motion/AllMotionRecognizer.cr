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

class AllMotionRecognizer < MotionRecognizer
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @motionGestureRecognizer : MotionGestureRecognizer? = nil

    def jf_motionGestureRecognizer : MotionGestureRecognizer?
        @motionGestureRecognizer
    end

    def jf_motionGestureRecognizer=(value : MotionGestureRecognizer?) : MotionGestureRecognizer?
        @motionGestureRecognizer = value
    end
    @touchButtonProcessing : Bool = false

    def jf_touchButtonProcessing : Bool
        @touchButtonProcessing
    end

    def jf_touchButtonProcessing=(value : Bool) : Bool
        @touchButtonProcessing = value
    end
    @touchButtonRecognizer : TouchButtonRecognizer? = nil

    def jf_touchButtonRecognizer : TouchButtonRecognizer?
        @touchButtonRecognizer
    end

    def jf_touchButtonRecognizer=(value : TouchButtonRecognizer?) : TouchButtonRecognizer?
        @touchButtonRecognizer = value
    end
    @id : Int32 = 0

    def jf_id : Int32
        @id
    end

    def jf_id=(value : Int32) : Int32
        @id = value
    end
    @lastX : Int32 = 0

    def jf_lastX : Int32
        @lastX
    end

    def jf_lastX=(value : Int32) : Int32
        @lastX = value
    end
    @lastY : Int32 = 0

    def jf_lastY : Int32
        @lastY
    end

    def jf_lastY=(value : Int32) : Int32
        @lastY = value
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

    # Java field initializers run after the super constructor
    def jfields_AllMotionRecognizer : Nil
    @logUtil = LogUtil.getInstance()
    
    @touchButtonProcessing = false
    
    
    
    
    end
    

    def jinit_AllMotionRecognizer : self
        jinit_MotionRecognizer()
        jfields_AllMotionRecognizer()
        @id = ((AllMotionRecognizer.jst_index &+= 1) &- 1)
        @motionGestureRecognizer = MotionGestureRecognizer.new.jinit_MotionGestureRecognizer(@id)
        @touchButtonRecognizer = TouchButtonRecognizer.new.jinit_TouchButtonRecognizer()
        self
    end
    

    def processStartMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
        if @touchButtonRecognizer.not_nil!.pressTouchButtonInput(x, y, deviceId)
            @touchButtonProcessing = true
        end
        if !@touchButtonProcessing
            point : CustomGPoint? = JR.cast(AllMotionRecognizer.jst_pointCircularPool.not_nil!.getNextInstance(), CustomGPoint)
            point.not_nil!.setX(x)
            point.not_nil!.setY(y)
            @motionGestureRecognizer.not_nil!.processPressedMotionEvent(point, deviceId, modifiers)
        end
    end
    

    def processEndMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
        if @touchButtonRecognizer.not_nil!.releaseTouchButtonInput(x, y, deviceId)
        end
        if !@touchButtonProcessing
            point : CustomGPoint? = JR.cast(AllMotionRecognizer.jst_pointCircularPool.not_nil!.getNextInstance(), CustomGPoint)
            point.not_nil!.setX(x)
            point.not_nil!.setY(y)
            @motionGestureRecognizer.not_nil!.processReleasedMotionEvent(point, deviceId, modifiers)
        end
        if @touchButtonProcessing
            @touchButtonProcessing = false
        end
    end
    

    def processDraggedMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
        if @touchButtonProcessing
            @touchButtonRecognizer.not_nil!.pressTouchButtonInput(x, y, deviceId)
        end
        if !@touchButtonProcessing
            point : CustomGPoint? = JR.cast(AllMotionRecognizer.jst_pointCircularPool.not_nil!.getNextInstance(), CustomGPoint)
            point.not_nil!.setX(x)
            point.not_nil!.setY(y)
            @motionGestureRecognizer.not_nil!.processDraggedMotionEvent(point, deviceId, modifiers)
        end
    end
    

    def processMovedMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
        if x != @lastX || y != @lastY
            @lastX = x
            @lastY = y
            point : CustomGPoint? = JR.cast(AllMotionRecognizer.jst_pointCircularPool.not_nil!.getNextInstance(), CustomGPoint)
            point.not_nil!.setX(x)
            point.not_nil!.setY(y)
            @motionGestureRecognizer.not_nil!.processMovedMotionEvent(point, deviceId, modifiers)
        end
    end
    

    def processScrolledMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
        point : CustomGPoint? = JR.cast(AllMotionRecognizer.jst_pointCircularPool.not_nil!.getNextInstance(), CustomGPoint)
        point.not_nil!.setX(x)
        point.not_nil!.setY(y)
        @motionGestureRecognizer.not_nil!.processScrolledMotionEvent(point, deviceId, modifiers)
    end
    

    def getMotionGestureRecognizer : MotionGestureRecognizer?
        return @motionGestureRecognizer
    end
end

