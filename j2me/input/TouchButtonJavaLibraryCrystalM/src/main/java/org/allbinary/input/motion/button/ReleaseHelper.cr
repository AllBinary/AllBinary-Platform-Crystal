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

class ReleaseHelper < JObject
    @touchButtonRecognizer : TouchButtonRecognizer? = nil

    def jf_touchButtonRecognizer : TouchButtonRecognizer?
        @touchButtonRecognizer
    end

    def jf_touchButtonRecognizer=(value : TouchButtonRecognizer?) : TouchButtonRecognizer?
        @touchButtonRecognizer = value
    end
    

    def jinit_ReleaseHelper(touchButtonRecognizer : TouchButtonRecognizer?) : self
        @touchButtonRecognizer = touchButtonRecognizer
        self
    end
    

    def release(touchButtonInput : TouchButtonInput?, deviceId : Int) : Nil
        deviceId = deviceId.to_i32!
        nextTouchButtonInput : TouchButtonInput? = nil
        gameKeyEvent : GameKeyEvent? = nil
        index : Int32 = @touchButtonRecognizer.not_nil!.jf_currentlyPressedTouchButtonSingleton.not_nil!.size() &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            nextTouchButtonInput = @touchButtonRecognizer.not_nil!.jf_currentlyPressedTouchButtonSingleton.not_nil!.get(index)
            gameKeyEvent = nextTouchButtonInput.not_nil!.getGameKeyEvent()
            @touchButtonRecognizer.not_nil!.jf_upGameKeyEventHandler.not_nil!.fireEvent(gameKeyEvent)
            @touchButtonRecognizer.not_nil!.jf_upGameKeyEventHandler.not_nil!.getInstanceForDevice(deviceId).not_nil!.fireEvent(gameKeyEvent)
            @touchButtonRecognizer.not_nil!.jf_currentlyPressedTouchButtonSingleton.not_nil!.removeAt(index)
        end
    end
end

