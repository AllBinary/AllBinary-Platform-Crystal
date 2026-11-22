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

class MirrorMotionGestureEventUtil < JObject
    @motionEventCircularPool : MotionEventCircularPool? = nil

    def jf_motionEventCircularPool : MotionEventCircularPool?
        @motionEventCircularPool
    end

    def jf_motionEventCircularPool=(value : MotionEventCircularPool?) : MotionEventCircularPool?
        @motionEventCircularPool = value
    end

    @@jst_instance : MirrorMotionGestureEventUtil? = nil

    def self.jst_instance : MirrorMotionGestureEventUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : MirrorMotionGestureEventUtil?) : MirrorMotionGestureEventUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = MirrorMotionGestureEventUtil.new.jinit_MirrorMotionGestureEventUtil()
    end
    

    def self.getInstance : MirrorMotionGestureEventUtil?
        return MirrorMotionGestureEventUtil.jst_instance
    end
    

    def jinit_MirrorMotionGestureEventUtil : self
        @motionEventCircularPool = MotionEventCircularPool.createPool(JInteger.jst_MAX_VALUE)
        self
    end
    

    def mirrorVerticle(motionGestureEvent : MotionGestureEvent?, halfWidth : Int) : MotionGestureEvent?
        halfWidth = halfWidth.to_i32!
        event : MotionGestureEvent? = @motionEventCircularPool.not_nil!.getInstance(motionGestureEvent.not_nil!.getMotionGesture())
        previousNewX : Int32 = self.getNewX(motionGestureEvent.not_nil!.getPreviousPoint().not_nil!.getX(), halfWidth)
        currentNewX : Int32 = self.getNewX(motionGestureEvent.not_nil!.getCurrentPoint().not_nil!.getX(), halfWidth)
        pointFactory : PointFactory? = PointFactory.getInstance()
        mirroredPreviousPoint : GPoint? = pointFactory.not_nil!.createXY(previousNewX, motionGestureEvent.not_nil!.getPreviousPoint().not_nil!.getY())
        mirroredCurrentPoint : GPoint? = pointFactory.not_nil!.createXY(currentNewX, motionGestureEvent.not_nil!.getCurrentPoint().not_nil!.getY())
        event.not_nil!.setPreviousPoint(mirroredPreviousPoint)
        event.not_nil!.setCurrentPoint(mirroredCurrentPoint)
        return event
    end
    

    def getNewX(x : Int, halfWidth : Int) : Int32
        x = x.to_i32!
        halfWidth = halfWidth.to_i32!
        newX : Int32 = 0
        if x > halfWidth
            newX = halfWidth &- (x &- halfWidth)
        else
            newX = halfWidth &+ (halfWidth &- x)
        end
        return newX
    end
end

