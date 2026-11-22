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
# package org.allbinary.input.motion.gesture

class MotionGestureToMotionGestureActionAssociation < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @motionGestureAction : CompleteMotionGestureInputEvent? = nil

    def jf_motionGestureAction : CompleteMotionGestureInputEvent?
        @motionGestureAction
    end

    def jf_motionGestureAction=(value : CompleteMotionGestureInputEvent?) : CompleteMotionGestureInputEvent?
        @motionGestureAction = value
    end
    

    def jinit_MotionGestureToMotionGestureActionAssociation(list : BasicArrayList?, commandAction : CompleteMotionGestureInputEvent?) : self
        @list = list
        @motionGestureAction = commandAction
        self
    end
    

    def getMotionGesture : BasicArrayList?
        return @list
    end
    

    def setMotionGestures(list : BasicArrayList?) : Nil
        @list = list
    end
    

    def getCommandAction : CompleteMotionGestureInputEvent?
        return @motionGestureAction
    end
    

    def setMotionGestureAction(commandAction : CompleteMotionGestureInputEvent?) : Nil
        @motionGestureAction = commandAction
    end
    

    def isMotionGestureArrayEquals(aList : BasicArrayList?) : Bool
        size : Int32 = aList.not_nil!.size()
        if @list.not_nil!.size() != size
            return false
        end
        i : Int32 = size &- 1
        jfor1 = false
        while true
            if jfor1
                i &-= 1
            end
            jfor1 = true
            break unless i >= 0
            if aList.not_nil!.jf_objectArray.not_nil![i] != @list.not_nil!.jf_objectArray.not_nil![i]
                return false
            end
        end
        return true
    end
end

