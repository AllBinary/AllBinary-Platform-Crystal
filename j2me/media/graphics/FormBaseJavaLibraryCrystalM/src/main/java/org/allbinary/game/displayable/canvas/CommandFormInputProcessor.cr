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

class CommandFormInputProcessor < BasicMenuInputProcessor
    @j_MOTION_GESTURE_SOURCE_ID : Int32 = 0

    def jf_MOTION_GESTURE_SOURCE_ID : Int32
        @j_MOTION_GESTURE_SOURCE_ID
    end

    def jf_MOTION_GESTURE_SOURCE_ID=(value : Int32) : Int32
        @j_MOTION_GESTURE_SOURCE_ID = value
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
    @j_DOUBLE_CLICK_DELAY : Int32 = 0

    def jf_DOUBLE_CLICK_DELAY : Int32
        @j_DOUBLE_CLICK_DELAY
    end

    def jf_DOUBLE_CLICK_DELAY=(value : Int32) : Int32
        @j_DOUBLE_CLICK_DELAY = value
    end
    @doubleClickTimeHelper : TimeDelayHelper? = nil

    def jf_doubleClickTimeHelper : TimeDelayHelper?
        @doubleClickTimeHelper
    end

    def jf_doubleClickTimeHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @doubleClickTimeHelper = value
    end
    @isSingleKeyProcessing : Bool = false

    def jf_isSingleKeyProcessing : Bool
        @isSingleKeyProcessing
    end

    def jf_isSingleKeyProcessing=(value : Bool) : Bool
        @isSingleKeyProcessing = value
    end
    @form : ScrollSelectionForm? = nil

    def jf_form : ScrollSelectionForm?
        @form
    end

    def jf_form=(value : ScrollSelectionForm?) : ScrollSelectionForm?
        @form = value
    end
    @hasPressed : Bool = false

    def jf_hasPressed : Bool
        @hasPressed
    end

    def jf_hasPressed=(value : Bool) : Bool
        @hasPressed = value
    end
    @j_PROCESS_COMMAND : String = ""

    def jf_PROCESS_COMMAND : String
        @j_PROCESS_COMMAND
    end

    def jf_PROCESS_COMMAND=(value : String) : String
        @j_PROCESS_COMMAND = value
    end
    @j_NAME_LABEL : String = ""

    def jf_NAME_LABEL : String
        @j_NAME_LABEL
    end

    def jf_NAME_LABEL=(value : String) : String
        @j_NAME_LABEL = value
    end

    # Java field initializers run after the super constructor
    def jfields_CommandFormInputProcessor : Nil
    @j_MOTION_GESTURE_SOURCE_ID = GameKeyEventFactory.getInstance().not_nil!.jf_MOTION_GESTURE_SOURCE_ID
    @j_CLICK_DELAY = 150
    @clickTimeHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(@j_CLICK_DELAY)
    @j_DOUBLE_CLICK_DELAY = 1200
    @doubleClickTimeHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(@j_DOUBLE_CLICK_DELAY)
    @isSingleKeyProcessing = InputFeatureFactory.getInstance().not_nil!.isSingleKeyProcessing()
    
    @hasPressed = false
    @j_PROCESS_COMMAND = "processCommand"
    @j_NAME_LABEL = " ScrollSelectionForm: "
    end
    

    def jinit_CommandFormInputProcessor(gameKeyEventList : BasicArrayList?, playerInputId : Int, gameCanvas : MyCanvas?, form : ScrollSelectionForm?) : self
        playerInputId = playerInputId.to_i32!
        jinit_BasicMenuInputProcessor(gameKeyEventList, playerInputId, gameCanvas)
        jfields_CommandFormInputProcessor()
        @form = form
        self
    end
    

    def processInput(key : Int) : Int32
        key = key.to_i32!
        if key == Canvas.jst_LEFT || key == Canvas.jst_RIGHT || key == Canvas.jst_UP || key == Canvas.jst_DOWN
            PrimaryPlayerQueueFactory.getInstance().not_nil!.add(SelectSound.getInstance())
            @form.not_nil!.processInputKey(key)
            return 1
        elsif key == Canvas.jst_FIRE
            PrimaryPlayerQueueFactory.getInstance().not_nil!.add(SelectSound.getInstance())
            return self.processCommand()
        end
        return 0
    end
    

    def processCommand : Int32
        commandCurrentSelectionForm : CommandCurrentSelectionForm? = JR.cast(@form, CommandCurrentSelectionForm)
        command : Command? = commandCurrentSelectionForm.not_nil!.getSelectedCommand()
        @logUtil.not_nil!.putF(command.not_nil!.toString(), self, @j_PROCESS_COMMAND)
        features : Features? = Features.getInstance()
        openGLFeatureFactory : OpenGLFeatureFactory? = OpenGLFeatureFactory.getInstance()
        if SWTUtil.jst_isSWT && features.not_nil!.isFeature(openGLFeatureFactory.not_nil!.jf_OPENGL) && command != GameCommandsFactory.getInstance().not_nil!.jf_EXIT_COMMAND
            CommandRunnable.new.jinit_CommandRunnable(self, command).not_nil!.run()
        else
            PrimaryThreadPool.getInstance().not_nil!.runTask(CommandRunnable.new.jinit_CommandRunnable(self, command))
        end
        if command == GameCommandsFactory.getInstance().not_nil!.jf_QUIT_COMMAND
            return -1
        else
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
                key = gameKeyEvent.not_nil!.getKey()
                if gameKeyEvent.not_nil!.getSourceId() != @j_MOTION_GESTURE_SOURCE_ID
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
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @gameInputStrings.not_nil!.jf_PROCESS_INPUT, e)
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
        touchMotionGestureFactory : TouchMotionGestureFactory? = TouchMotionGestureFactory.getInstance()
        motionGestureInput : MotionGestureInput? = motionGestureEvent.not_nil!.getMotionGesture()
        if motionGestureInput == touchMotionGestureFactory.not_nil!.jf_RELEASED
            point : GPoint? = motionGestureEvent.not_nil!.getCurrentPoint()
            if @form.not_nil!.isInForm(point)
                index : Int32 = @form.not_nil!.getSelectedIndexForPoint(point)
                if index != -1
                    PrimaryPlayerQueueFactory.getInstance().not_nil!.add(SelectSound.getInstance())
                    if index == @form.not_nil!.getSelectedIndex()
                        if @clickTimeHelper.not_nil!.isTimeTNT()
                            self.processCommand()
                        end
                    else
                        @form.not_nil!.setSelectedIndex(index)
                    end
                else
                end
            end
            if @hasPressed
                if !@doubleClickTimeHelper.not_nil!.isTimeTNT()
                    @logUtil.not_nil!.putF("Double Press", self, @gameInputStrings.not_nil!.jf_PROCESS_MOTION_INPUT)
                    self.processCommand()
                end
                @doubleClickTimeHelper.not_nil!.jf_delay = @j_DOUBLE_CLICK_DELAY
                @doubleClickTimeHelper.not_nil!.setStartTimeTNT()
            end
            @hasPressed = false
        elsif motionGestureInput == touchMotionGestureFactory.not_nil!.jf_PRESSED
            @doubleClickTimeHelper.not_nil!.jf_delay = 0
            @hasPressed = true
        end
    end
    

    def toString : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append(super()).not_nil!.append(@j_NAME_LABEL).not_nil!.append(@form.not_nil!.toString()).not_nil!.toString()
    end
end

