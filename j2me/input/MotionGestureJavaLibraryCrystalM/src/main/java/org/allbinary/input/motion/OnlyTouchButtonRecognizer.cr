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

class OnlyTouchButtonRecognizer < MotionRecognizer
    @touchButtonRecognizer : TouchButtonRecognizer? = nil

    def jf_touchButtonRecognizer : TouchButtonRecognizer?
        @touchButtonRecognizer
    end

    def jf_touchButtonRecognizer=(value : TouchButtonRecognizer?) : TouchButtonRecognizer?
        @touchButtonRecognizer = value
    end
    @touchButtonProcessing : Bool = false

    def jf_touchButtonProcessing : Bool
        @touchButtonProcessing
    end

    def jf_touchButtonProcessing=(value : Bool) : Bool
        @touchButtonProcessing = value
    end

    # Java field initializers run after the super constructor
    def jfields_OnlyTouchButtonRecognizer : Nil
    
    @touchButtonProcessing = false
    end
    

    def jinit_OnlyTouchButtonRecognizer : self
        jinit_MotionRecognizer()
        jfields_OnlyTouchButtonRecognizer()
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
    end
    

    def processEndMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
        if @touchButtonProcessing
            @touchButtonProcessing = false
        end
        if @touchButtonRecognizer.not_nil!.releaseTouchButtonInput(x, y, deviceId)
            return
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
    end
end

