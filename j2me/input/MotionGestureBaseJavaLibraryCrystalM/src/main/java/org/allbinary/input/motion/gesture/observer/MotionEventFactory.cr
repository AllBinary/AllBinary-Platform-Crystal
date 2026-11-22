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
# package org.allbinary.input.motion.gesture.observer

class MotionEventFactory < JObject
    include AllBinaryEventObjectFactoryInterface
    @source : JAny = nil

    def jf_source : JAny
        @source
    end

    def jf_source=(value : JAny) : JAny
        @source = value
    end
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
    

    def jinit_MotionEventFactory(source : JAny, id : Int) : self
        id = id.to_i32!
        @source = source
        @id = id
        MotionEventFactory.jst_index = TouchMotionGestureFactory.getInstance().not_nil!.jf_LAST_MOTION.not_nil!.getId()
        self
    end
    

    def getInstance : AllBinaryEventObject?
        inputFactory : InputFactory? = InputFactory.getInstance()
        input : Input? = inputFactory.not_nil!.getInstanceById(((MotionEventFactory.jst_index &+= 1) &- 1))
        if input == inputFactory.not_nil!.jf_NO_INPUT
            return MotionGestureEvent.new.jinit_MotionGestureEvent(@source, @id, JR.cast(TouchMotionGestureFactory.getInstance().not_nil!.jf_NO_MOTION, MotionGestureInput))
        else
            return MotionGestureEvent.new.jinit_MotionGestureEvent(@source, @id, JR.cast(input, MotionGestureInput))
        end
        return nil
    end
end

