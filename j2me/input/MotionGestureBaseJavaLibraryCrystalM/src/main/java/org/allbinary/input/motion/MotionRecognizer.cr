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

class MotionRecognizer < JObject

    def jinit_MotionRecognizer : self
        self
    end
    

    def processStartMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
    end
    

    def processEndMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
    end
    

    def processDraggedMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
    end
end

