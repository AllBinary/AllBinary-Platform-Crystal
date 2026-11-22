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
# package org.allbinary.game.displayable.canvas

class PopupMenuInputProcessor < BasicMenuInputProcessor
    @rectangleCollisionUtil : RectangleCollisionUtil? = nil

    def jf_rectangleCollisionUtil : RectangleCollisionUtil?
        @rectangleCollisionUtil
    end

    def jf_rectangleCollisionUtil=(value : RectangleCollisionUtil?) : RectangleCollisionUtil?
        @rectangleCollisionUtil = value
    end
    @j_CLICK_DELAY : Int32 = 0

    def jf_CLICK_DELAY : Int32
        @j_CLICK_DELAY
    end

    def jf_CLICK_DELAY=(value : Int32) : Int32
        @j_CLICK_DELAY = value
    end
    @clickTimeHelper : TimeDelayHelper? = nil

    def jf_clickTimeHelper : TimeDelayHelper?
        @clickTimeHelper
    end

    def jf_clickTimeHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @clickTimeHelper = value
    end
    @rectangle : Rectangle? = nil

    def jf_rectangle : Rectangle?
        @rectangle
    end

    def jf_rectangle=(value : Rectangle?) : Rectangle?
        @rectangle = value
    end

    # Java field initializers run after the super constructor
    def jfields_PopupMenuInputProcessor : Nil
    @rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
    @j_CLICK_DELAY = 120
    @clickTimeHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(@j_CLICK_DELAY)
    
    end
    

    def jinit_PopupMenuInputProcessor(gameKeyEventList : BasicArrayList?, playerInputId : Int, gameCanvas : MyCanvas?, rectangle : Rectangle?) : self
        playerInputId = playerInputId.to_i32!
        jinit_BasicMenuInputProcessor(gameKeyEventList, playerInputId, gameCanvas)
        jfields_PopupMenuInputProcessor()
        @rectangle = rectangle
        self
    end
    

    def init(rectangle : Rectangle?) : Nil
        @rectangle = rectangle
    end
    

    def processInput(key : Int) : Int32
        key = key.to_i32!
        if key == Canvas.jst_KEY_STAR
            gameCanvas : AllBinaryGameCanvas? = JR.cast(self.getCanvas(), AllBinaryGameCanvas)
            gameCanvas.not_nil!.toggleMenu()
            return 1
        end
        return 0
    end
    

    def processInputList : Int32
        begin
            motionInputsIndex : Int32 = self.processMotionInputs()
            list : BasicArrayList? = self.getGameKeyEventList()
            size : Int32 = list.not_nil!.size()
            key : Int32 = 0
            gameKeyEvent : GameKeyEvent? = nil
            index : Int32 = 0
            jfor1 = false
            while true
                if jfor1
                    index &+= 1
                end
                jfor1 = true
                break unless index < size
                gameKeyEvent = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], GameKeyEvent)
                if !(gameKeyEvent).nil?
                    key = gameKeyEvent.not_nil!.getKey()
                    if self.processInput(key) == 1
                        break
                    end
                end
            end
            self.clear()
            if size > 0 || motionInputsIndex >= 0
                return 1
            else
                return -1
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, GameInputStrings.getInstance().not_nil!.jf_PROCESS_INPUT, e)
            return -1
            else
                raise jex1
            end
        end
        return 0
    end
    

    def processMotionInputs : Int32
        lastIndex : Int32 = @motionGestureEventList.not_nil!.size() &- 1
        if lastIndex >= 0
            motionGestureEvent : MotionGestureEvent? = JR.cast(@motionGestureEventList.not_nil!.jf_objectArray.not_nil![lastIndex], MotionGestureEvent)
            self.processMotionInput(motionGestureEvent)
        end
        @motionGestureEventList.not_nil!.clear()
        return lastIndex
    end
    

    def processMotionInput(motionGestureEvent : MotionGestureEvent?) : Nil
        if (motionGestureEvent).nil?
            @logUtil.not_nil!.putF("Exception: Bug", self, @gameInputStrings.not_nil!.jf_PROCESS_MOTION_INPUT)
            return
        end
        touchMotionGestureFactory : TouchMotionGestureFactory? = TouchMotionGestureFactory.getInstance()
        motionGestureInput : MotionGestureInput? = motionGestureEvent.not_nil!.getMotionGesture()
        if motionGestureInput == touchMotionGestureFactory.not_nil!.jf_RELEASED
            point : GPoint? = motionGestureEvent.not_nil!.getCurrentPoint()
            rectPoint : GPoint? = @rectangle.not_nil!.getPoint()
            if @rectangleCollisionUtil.not_nil!.isInside(rectPoint.not_nil!.getX(), rectPoint.not_nil!.getY(), @rectangle.not_nil!.getMaxX() &+ 20, @rectangle.not_nil!.getMaxY(), point.not_nil!.getX(), point.not_nil!.getY())
                if @clickTimeHelper.not_nil!.isTimeTNT()
                    gameCanvas : AllBinaryGameCanvas? = JR.cast(self.getCanvas(), AllBinaryGameCanvas)
                    gameCanvas.not_nil!.toggleMenu()
                end
            end
        end
    end
end

