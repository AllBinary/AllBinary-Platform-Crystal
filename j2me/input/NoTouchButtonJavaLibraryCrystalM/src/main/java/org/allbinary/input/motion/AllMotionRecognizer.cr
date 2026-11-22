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

class AllMotionRecognizer < JObject
    @id : Int32 = 0

    def jf_id : Int32
        @id
    end

    def jf_id=(value : Int32) : Int32
        @id = value
    end

    @@jst_index : Int32 = 0

    def self.jst_index : Int32
        jclinit
        @@jst_index
    end

    def self.jst_index=(value : Int32) : Int32
        jclinit
        @@jst_index = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_index = 0
    end
    

    def jinit_AllMotionRecognizer : self
        @id = ((AllMotionRecognizer.jst_index &+= 1) &- 1)
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
    

    def processMovedMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
    end
    

    def processScrolledMotionEvent(x : Int, y : Int, deviceId : Int, modifiers : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        deviceId = deviceId.to_i32!
        modifiers = modifiers.to_i32!
    end
    

    def getId : Int32
        return @id
    end
end

