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

class MotionGestureRecognizer < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j2seMath : J2SEMath? = nil

    def jf_j2seMath : J2SEMath?
        @j2seMath
    end

    def jf_j2seMath=(value : J2SEMath?) : J2SEMath?
        @j2seMath = value
    end
    @origin : GPoint? = nil

    def jf_origin : GPoint?
        @origin
    end

    def jf_origin=(value : GPoint?) : GPoint?
        @origin = value
    end
    @previous : GPoint? = nil

    def jf_previous : GPoint?
        @previous
    end

    def jf_previous=(value : GPoint?) : GPoint?
        @previous = value
    end
    @intermediate : GPoint? = nil

    def jf_intermediate : GPoint?
        @intermediate
    end

    def jf_intermediate=(value : GPoint?) : GPoint?
        @intermediate = value
    end
    @line : Line? = nil

    def jf_line : Line?
        @line
    end

    def jf_line=(value : Line?) : Line?
        @line = value
    end
    @motionGesturesHandler : BasicMotionGesturesHandler? = nil

    def jf_motionGesturesHandler : BasicMotionGesturesHandler?
        @motionGesturesHandler
    end

    def jf_motionGesturesHandler=(value : BasicMotionGesturesHandler?) : BasicMotionGesturesHandler?
        @motionGesturesHandler = value
    end
    @movedMotionGesturesHandler : BasicEventHandler? = nil

    def jf_movedMotionGesturesHandler : BasicEventHandler?
        @movedMotionGesturesHandler
    end

    def jf_movedMotionGesturesHandler=(value : BasicEventHandler?) : BasicEventHandler?
        @movedMotionGesturesHandler = value
    end
    @scrolledMotionGesturesHandler : BasicEventHandler? = nil

    def jf_scrolledMotionGesturesHandler : BasicEventHandler?
        @scrolledMotionGesturesHandler
    end

    def jf_scrolledMotionGesturesHandler=(value : BasicEventHandler?) : BasicEventHandler?
        @scrolledMotionGesturesHandler = value
    end
    @motionEventCircularPool : MotionEventCircularPool? = nil

    def jf_motionEventCircularPool : MotionEventCircularPool?
        @motionEventCircularPool
    end

    def jf_motionEventCircularPool=(value : MotionEventCircularPool?) : MotionEventCircularPool?
        @motionEventCircularPool = value
    end

    # Java field initializers run after the super constructor
    def jfields_MotionGestureRecognizer : Nil
    @logUtil = LogUtil.getInstance()
    @j2seMath = J2SEMath.getInstance()
    @origin = PointFactory.getInstance().not_nil!.jf_ZERO_ZERO
    @previous = @origin
    @intermediate = @origin
    @line = Line.new.jinit_Line(@origin, @origin)
    
    
    
    
    end
    

    def jinit_MotionGestureRecognizer(id : Int) : self
        id = id.to_i32!
        jfields_MotionGestureRecognizer()
        @motionEventCircularPool = MotionEventCircularPool.createPool(id)
        motionGesturesHandler : BasicEventHandler? = BasicEventHandler.new.jinit_BasicEventHandler()
        movedMotionGesturesHandler : BasicEventHandler? = motionGesturesHandler
        scrolledMotionGesturesHandler : BasicEventHandler? = motionGesturesHandler
        begin
            motionGesturesHandler = BasicMotionGesturesHandler.getInstance()
            movedMotionGesturesHandler = MovedMotionGesturesHandler.getInstance()
            scrolledMotionGesturesHandler = ScrolledMotionGesturesHandler.getInstance()
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
        @motionGesturesHandler = JR.cast(motionGesturesHandler, BasicMotionGesturesHandler)
        @movedMotionGesturesHandler = movedMotionGesturesHandler
        @scrolledMotionGesturesHandler = scrolledMotionGesturesHandler
        self
    end
    

    def processPressedMotionEvent(current : GPoint?, deviceId : Int, button : Int) : Bool
        deviceId = deviceId.to_i32!
        button = button.to_i32!
        @intermediate = @origin
        @previous = @origin
        event : MotionGestureEvent? = @motionEventCircularPool.not_nil!.getInstance(TouchMotionGestureFactory.getInstance().not_nil!.jf_PRESSED)
        event.not_nil!.setPreviousPoint(@previous)
        event.not_nil!.setCurrentPoint(current)
        @motionGesturesHandler.not_nil!.fireEvent(event)
        return true
    end
    

    def processReleasedMotionEvent(current : GPoint?, deviceId : Int, button : Int) : Bool
        deviceId = deviceId.to_i32!
        button = button.to_i32!
        event : MotionGestureEvent? = @motionEventCircularPool.not_nil!.getInstance(TouchMotionGestureFactory.getInstance().not_nil!.jf_RELEASED)
        event.not_nil!.setPreviousPoint(@previous)
        event.not_nil!.setCurrentPoint(current)
        @motionGesturesHandler.not_nil!.fireEvent(event)
        return true
    end
    

    def processDraggedMotionEvent(current : GPoint?, deviceId : Int, buttonMask : Int) : Nil
        deviceId = deviceId.to_i32!
        buttonMask = buttonMask.to_i32!
        if @previous == @origin || @intermediate == @origin
            @previous = current
            @intermediate = current
            return
        end
        @line.not_nil!.setP1(@previous)
        @line.not_nil!.setP2(current)
        minimumMotionGesture : Int32 = MotionGestureConfigurationFactory.getInstance().not_nil!.getMinimumMotionGesture()
        if @j2seMath.not_nil!.abs((@line.not_nil!.getDeltaX()).to_f32) < (minimumMotionGesture).to_f32 && @j2seMath.not_nil!.abs((@line.not_nil!.getDeltaY()).to_f32) < (minimumMotionGesture).to_f32
            @intermediate = current
            return
        end
        gradient : Float64 = @line.not_nil!.getGradient()
        absGradient : Float64 = (@j2seMath.not_nil!.abs((gradient).to_f32)).to_f64
        conf : MotionGestureConfiguration? = MotionGestureConfigurationFactory.getInstance()
        touchMotionGestureFactory : TouchMotionGestureFactory? = TouchMotionGestureFactory.getInstance()
        newMotionGesture : MotionGestureInput? = touchMotionGestureFactory.not_nil!.jf_NO_MOTION
        diagonalToleranceHigher : Float64 = 12.0
        diagonalToleranceLower : Float64 = 12.0
        if conf.not_nil!.isDiagonalMotionGestureAllowed()
            diagonalToleranceHigher = ((90 &- conf.not_nil!.getDiagonalTolerance())).to_f64
            diagonalToleranceLower = (conf.not_nil!.getDiagonalTolerance()).to_f64
        end
        if absGradient > JMath.tan(JMath.toRadians(diagonalToleranceHigher))
            if @line.not_nil!.getDeltaY() > 0.0
                newMotionGesture = touchMotionGestureFactory.not_nil!.jf_UP
            else
                newMotionGesture = touchMotionGestureFactory.not_nil!.jf_DOWN
            end
        else
            if absGradient < JMath.tan(JMath.toRadians(diagonalToleranceLower))
                if @line.not_nil!.getDeltaX() > 0.0
                    newMotionGesture = touchMotionGestureFactory.not_nil!.jf_LEFT
                else
                    newMotionGesture = touchMotionGestureFactory.not_nil!.jf_RIGHT
                end
            else
                if gradient > 0.0
                    if @line.not_nil!.getDeltaX() > 0.0
                        newMotionGesture = touchMotionGestureFactory.not_nil!.jf_DIAGONAL_UP_LEFT
                    else
                        newMotionGesture = touchMotionGestureFactory.not_nil!.jf_DIAGONAL_DOWN_RIGHT
                    end
                else
                    if @line.not_nil!.getDeltaX() > 0.0
                        newMotionGesture = touchMotionGestureFactory.not_nil!.jf_DIAGONAL_DOWN_LEFT
                    else
                        newMotionGesture = touchMotionGestureFactory.not_nil!.jf_DIAGONAL_UP_RIGHT
                    end
                end
            end
        end
        @previous = current
        @intermediate = current
        event : MotionGestureEvent? = @motionEventCircularPool.not_nil!.getInstance(newMotionGesture)
        event.not_nil!.setPreviousPoint(@previous)
        event.not_nil!.setCurrentPoint(current)
        @motionGesturesHandler.not_nil!.fireEvent(event)
        return
    end
    

    def processMovedMotionEvent(current : GPoint?, deviceId : Int, button : Int) : Bool
        deviceId = deviceId.to_i32!
        button = button.to_i32!
        event : MotionGestureEvent? = @motionEventCircularPool.not_nil!.getInstance(TouchMotionGestureFactory.getInstance().not_nil!.jf_NO_MOTION)
        event.not_nil!.setPreviousPoint(@previous)
        event.not_nil!.setCurrentPoint(current)
        @movedMotionGesturesHandler.not_nil!.fireEvent(event)
        return true
    end
    

    def processScrolledMotionEvent(current : GPoint?, deviceId : Int, button : Int) : Bool
        deviceId = deviceId.to_i32!
        button = button.to_i32!
        touchMotionGestureFactory : TouchMotionGestureFactory? = TouchMotionGestureFactory.getInstance()
        newMotionGesture : MotionGestureInput? = touchMotionGestureFactory.not_nil!.jf_NO_MOTION
        if button > 0
            newMotionGesture = touchMotionGestureFactory.not_nil!.jf_SCROLL_UP
        elsif button < 0
            newMotionGesture = touchMotionGestureFactory.not_nil!.jf_SCROLL_DOWN
        end
        event : MotionGestureEvent? = @motionEventCircularPool.not_nil!.getInstance(newMotionGesture)
        event.not_nil!.setPreviousPoint(@previous)
        event.not_nil!.setCurrentPoint(current)
        @scrolledMotionGesturesHandler.not_nil!.fireEvent(event)
        return true
    end
    

    def getMotionGesturesHandler : BasicMotionGesturesHandler?
        return @motionGesturesHandler
    end
end

