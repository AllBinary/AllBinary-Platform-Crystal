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

class CompleteMotionGestureInputToGameMotionGestureInput < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_instance : CompleteMotionGestureInputToGameMotionGestureInput? = nil

    def self.jst_instance : CompleteMotionGestureInputToGameMotionGestureInput?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CompleteMotionGestureInputToGameMotionGestureInput?) : CompleteMotionGestureInputToGameMotionGestureInput?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CompleteMotionGestureInputToGameMotionGestureInput.new.jinit_CompleteMotionGestureInputToGameMotionGestureInput()
    end
    

    def self.getInstance : CompleteMotionGestureInputToGameMotionGestureInput?
        return CompleteMotionGestureInputToGameMotionGestureInput.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CompleteMotionGestureInputToGameMotionGestureInput : Nil
    @logUtil = LogUtil.getInstance()
    end

    def jinit_CompleteMotionGestureInputToGameMotionGestureInput : self
        jfields_CompleteMotionGestureInputToGameMotionGestureInput()
        self
    end
    

    def init : Nil
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        begin
            PreLogUtil.put("Compound Motion Gestures", self, commonStrings.not_nil!.jf_INIT)
            motionGestureConfiguration : MotionGestureConfiguration? = MotionGestureConfigurationFactory.getInstance()
            touchMotionGestureFactory : TouchMotionGestureFactory? = TouchMotionGestureFactory.getInstance()
            list : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
            list.not_nil!.add(touchMotionGestureFactory.not_nil!.jf_DIAGONAL_DOWN_LEFT)
            motionGestureConfiguration.not_nil!.addMotionGestureAction(list, DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new.jinit_BasicArrayListD()
            list.not_nil!.add(touchMotionGestureFactory.not_nil!.jf_DIAGONAL_DOWN_RIGHT)
            motionGestureConfiguration.not_nil!.addMotionGestureAction(list, DiagonalDownRightTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new.jinit_BasicArrayListD()
            list.not_nil!.add(touchMotionGestureFactory.not_nil!.jf_DIAGONAL_UP_LEFT)
            motionGestureConfiguration.not_nil!.addMotionGestureAction(list, DiagonalUpLeftTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new.jinit_BasicArrayListD()
            list.not_nil!.add(touchMotionGestureFactory.not_nil!.jf_DIAGONAL_UP_RIGHT)
            motionGestureConfiguration.not_nil!.addMotionGestureAction(list, DiagonalUpRightTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new.jinit_BasicArrayListD()
            list.not_nil!.add(touchMotionGestureFactory.not_nil!.jf_LEFT)
            motionGestureConfiguration.not_nil!.addMotionGestureAction(list, LeftTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new.jinit_BasicArrayListD()
            list.not_nil!.add(touchMotionGestureFactory.not_nil!.jf_RIGHT)
            motionGestureConfiguration.not_nil!.addMotionGestureAction(list, RightTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new.jinit_BasicArrayListD()
            list.not_nil!.add(touchMotionGestureFactory.not_nil!.jf_DOWN)
            motionGestureConfiguration.not_nil!.addMotionGestureAction(list, DownTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new.jinit_BasicArrayListD()
            list.not_nil!.add(touchMotionGestureFactory.not_nil!.jf_UP)
            motionGestureConfiguration.not_nil!.addMotionGestureAction(list, UpTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new.jinit_BasicArrayListD()
            list.not_nil!.add(touchMotionGestureFactory.not_nil!.jf_RELEASED)
            motionGestureConfiguration.not_nil!.addMotionGestureAction(list, ReleaseTouchInputToGameKeyEventAction.getInstance())
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_INIT, e)
            else
                raise jex1
            end
        end
    end
end

