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
# package org.allbinary.input.motion.button

class TouchButtonRecognizer < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @rectangleCollisionUtil : RectangleCollisionUtil? = nil

    def jf_rectangleCollisionUtil : RectangleCollisionUtil?
        @rectangleCollisionUtil
    end

    def jf_rectangleCollisionUtil=(value : RectangleCollisionUtil?) : RectangleCollisionUtil?
        @rectangleCollisionUtil = value
    end
    @upGameKeyEventHandler : UpGameKeyEventHandler? = nil

    def jf_upGameKeyEventHandler : UpGameKeyEventHandler?
        @upGameKeyEventHandler
    end

    def jf_upGameKeyEventHandler=(value : UpGameKeyEventHandler?) : UpGameKeyEventHandler?
        @upGameKeyEventHandler = value
    end
    @downGameKeyEventHandler : DownGameKeyEventHandler? = nil

    def jf_downGameKeyEventHandler : DownGameKeyEventHandler?
        @downGameKeyEventHandler
    end

    def jf_downGameKeyEventHandler=(value : DownGameKeyEventHandler?) : DownGameKeyEventHandler?
        @downGameKeyEventHandler = value
    end
    @lastPressedTouchButtonInput : TouchButtonInput? = nil

    def jf_lastPressedTouchButtonInput : TouchButtonInput?
        @lastPressedTouchButtonInput
    end

    def jf_lastPressedTouchButtonInput=(value : TouchButtonInput?) : TouchButtonInput?
        @lastPressedTouchButtonInput = value
    end
    @currentlyPressedTouchButtonSingleton : CurrentlyPressedTouchButtonSingleton? = nil

    def jf_currentlyPressedTouchButtonSingleton : CurrentlyPressedTouchButtonSingleton?
        @currentlyPressedTouchButtonSingleton
    end

    def jf_currentlyPressedTouchButtonSingleton=(value : CurrentlyPressedTouchButtonSingleton?) : CurrentlyPressedTouchButtonSingleton?
        @currentlyPressedTouchButtonSingleton = value
    end
    @releaseHelper : ReleaseHelper? = nil

    def jf_releaseHelper : ReleaseHelper?
        @releaseHelper
    end

    def jf_releaseHelper=(value : ReleaseHelper?) : ReleaseHelper?
        @releaseHelper = value
    end

    # Java field initializers run after the super constructor
    def jfields_TouchButtonRecognizer : Nil
    @logUtil = LogUtil.getInstance()
    @rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
    @upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    @downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    @lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().not_nil!.jf_NONE
    @currentlyPressedTouchButtonSingleton = CurrentlyPressedTouchButtonSingleton.getInstance()
    
    end
    

    def jinit_TouchButtonRecognizer : self
        jfields_TouchButtonRecognizer()
        if TouchScreenFactory.getInstance().not_nil!.isMultiTouch()
            @releaseHelper = MultitouchReleaseHelper.new.jinit_MultitouchReleaseHelper(self)
        else
            @releaseHelper = ReleaseHelper.new.jinit_ReleaseHelper(self)
        end
        self
    end
    

    def processRelease(touchButtonInput : TouchButtonInput?, deviceId : Int) : Nil
        deviceId = deviceId.to_i32!
        @releaseHelper.not_nil!.release(touchButtonInput, deviceId)
        gameKeyEvent : GameKeyEvent? = touchButtonInput.not_nil!.getGameKeyEvent()
        @upGameKeyEventHandler.not_nil!.fireEvent(gameKeyEvent)
        @upGameKeyEventHandler.not_nil!.getInstanceForDevice(deviceId).not_nil!.fireEvent(gameKeyEvent)
        @currentlyPressedTouchButtonSingleton.not_nil!.remove(touchButtonInput)
    end
    

    def releaseTouchButtonInput(x : Int, y : Int, deviceId : Int) : Bool
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        touchButtonInput : TouchButtonInput? = @lastPressedTouchButtonInput
        if @currentlyPressedTouchButtonSingleton.not_nil!.contains(touchButtonInput)
            @lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().not_nil!.jf_NONE
            self.processRelease(touchButtonInput, deviceId)
            return true
        else
            list : BasicArrayList? = TouchButtonFactory.getInstance().not_nil!.getList()
            rectangle : Rectangle? = nil
            point : GPoint? = nil
            touchButton : TouchButton? = nil
            index : Int32 = list.not_nil!.size() &- 1
            jfor1 = false
            while true
                if jfor1
                    index &-= 1
                end
                jfor1 = true
                break unless index >= 0
                touchButton = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], TouchButton)
                rectangle = touchButton.not_nil!.getRectangle()
                point = rectangle.not_nil!.getPoint()
                if @rectangleCollisionUtil.not_nil!.isInside(point.not_nil!.getX(), point.not_nil!.getY(), rectangle.not_nil!.getMaxX(), rectangle.not_nil!.getMaxY(), x, y)
                    touchButtonInput = touchButton.not_nil!.getTouchButtonInput()
                    self.processRelease(touchButtonInput, deviceId)
                    return true
                end
            end
        end
        return false
    end
    

    def pressTouchButtonInput(x : Int, y : Int, deviceId : Int) : Bool
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        list : BasicArrayList? = TouchButtonFactory.getInstance().not_nil!.getList()
        rectangle : Rectangle? = nil
        point : GPoint? = nil
        touchButton : TouchButton? = nil
        touchButtonInput : TouchButtonInput? = nil
        gameKeyEvent : GameKeyEvent? = nil
        index : Int32 = list.not_nil!.size() &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            touchButton = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], TouchButton)
            rectangle = touchButton.not_nil!.getRectangle()
            point = rectangle.not_nil!.getPoint()
            if @rectangleCollisionUtil.not_nil!.isInside(point.not_nil!.getX(), point.not_nil!.getY(), rectangle.not_nil!.getMaxX(), rectangle.not_nil!.getMaxY(), x, y)
                touchButtonInput = touchButton.not_nil!.getTouchButtonInput()
                if !@currentlyPressedTouchButtonSingleton.not_nil!.contains(touchButtonInput)
                    @releaseHelper.not_nil!.release(touchButtonInput, deviceId)
                    @lastPressedTouchButtonInput = touchButtonInput
                    @currentlyPressedTouchButtonSingleton.not_nil!.add(touchButtonInput)
                    gameKeyEvent = touchButtonInput.not_nil!.getGameKeyEvent()
                    @downGameKeyEventHandler.not_nil!.fireEvent(gameKeyEvent)
                    @downGameKeyEventHandler.not_nil!.getInstanceForDevice(deviceId).not_nil!.fireEvent(gameKeyEvent)
                end
                return true
            end
        end
        return false
    end
end

