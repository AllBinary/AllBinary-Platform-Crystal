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

class ImmediateCommandFormInputProcessor < CommandFormInputProcessor
    @timeHelper : TimeDelayHelper? = nil

    def jf_timeHelper : TimeDelayHelper?
        @timeHelper
    end

    def jf_timeHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeHelper = value
    end
    @gameCommandCanvas : GameCommandCanvas? = nil

    def jf_gameCommandCanvas : GameCommandCanvas?
        @gameCommandCanvas
    end

    def jf_gameCommandCanvas=(value : GameCommandCanvas?) : GameCommandCanvas?
        @gameCommandCanvas = value
    end

    # Java field initializers run after the super constructor
    def jfields_ImmediateCommandFormInputProcessor : Nil
    @timeHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(25)
    
    end
    

    def jinit_ImmediateCommandFormInputProcessor(gameKeyEventList : BasicArrayList?, playerInputId : Int, gameCommandCanvas : GameCommandCanvas?, form : ScrollSelectionForm?) : self
        playerInputId = playerInputId.to_i32!
        jinit_CommandFormInputProcessor(gameKeyEventList, playerInputId, gameCommandCanvas, form)
        jfields_ImmediateCommandFormInputProcessor()
        @gameCommandCanvas = gameCommandCanvas
        self
    end
    

    def onPressGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
        begin
            super(gameKeyEvent)
            if @timeHelper.not_nil!.isTimeTNT()
                self.processInputList()
                @gameCommandCanvas.not_nil!.jf_repaintBehavior.not_nil!.onChangeRepaint(self.getCanvas())
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @gameInputStrings.not_nil!.jf_ON_PRESS_GAME_KEY, e)
            else
                raise jex1
            end
        end
    end
    

    def onDownGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
        begin
            super(gameKeyEvent)
            if @timeHelper.not_nil!.isTimeTNT()
                self.processInputList()
                @gameCommandCanvas.not_nil!.jf_repaintBehavior.not_nil!.onChangeRepaint(self.getCanvas())
            end
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @gameInputStrings.not_nil!.jf_ON_DOWN_GAME_KEY, e)
            else
                raise jex2
            end
        end
    end
    

    def onUpGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
        begin
            super(gameKeyEvent)
            if @timeHelper.not_nil!.isTimeTNT()
                self.processInputList()
                @gameCommandCanvas.not_nil!.jf_repaintBehavior.not_nil!.onChangeRepaint(self.getCanvas())
            end
        rescue jexc3 : ::Exception
            jex3 = JR.jthrowable(jexc3)
            if jex3.is_a?(JException)
                e = jex3.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @gameInputStrings.not_nil!.jf_ON_UP_GAME_KEY, e)
            else
                raise jex3
            end
        end
    end
    

    def onMotionGestureEvent(motionGestureEvent : MotionGestureEvent?) : Nil
        begin
            super(motionGestureEvent)
            if @timeHelper.not_nil!.isTimeTNT()
                self.processInputList()
                @gameCommandCanvas.not_nil!.jf_repaintBehavior.not_nil!.onChangeRepaint(self.getCanvas())
            end
        rescue jexc4 : ::Exception
            jex4 = JR.jthrowable(jexc4)
            if jex4.is_a?(JException)
                e = jex4.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "onMotionGestureEvent", e)
            else
                raise jex4
            end
        end
    end
end

