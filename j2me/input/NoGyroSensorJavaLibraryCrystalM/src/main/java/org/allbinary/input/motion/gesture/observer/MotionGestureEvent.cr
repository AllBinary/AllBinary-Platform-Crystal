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

class MotionGestureEvent < AllBinaryEventObject
    @motionGesture : MotionGestureInput? = nil

    def jf_motionGesture : MotionGestureInput?
        @motionGesture
    end

    def jf_motionGesture=(value : MotionGestureInput?) : MotionGestureInput?
        @motionGesture = value
    end
    @id : Int32 = 0

    def jf_id : Int32
        @id
    end

    def jf_id=(value : Int32) : Int32
        @id = value
    end
    @previousPoint : GPoint? = nil

    def jf_previousPoint : GPoint?
        @previousPoint
    end

    def jf_previousPoint=(value : GPoint?) : GPoint?
        @previousPoint = value
    end
    @currentPoint : GPoint? = nil

    def jf_currentPoint : GPoint?
        @currentPoint
    end

    def jf_currentPoint=(value : GPoint?) : GPoint?
        @currentPoint = value
    end
    @commonLabels : CommonLabels? = nil

    def jf_commonLabels : CommonLabels?
        @commonLabels
    end

    def jf_commonLabels=(value : CommonLabels?) : CommonLabels?
        @commonLabels = value
    end

    def self.jst_PREVIOUS : String
        " Previous: "
    end

    def self.jst_HASHCODE : String
        " hashcode: "
    end

    # Java field initializers run after the super constructor
    def jfields_MotionGestureEvent : Nil
    @motionGesture = TouchMotionGestureFactory.getInstance().not_nil!.jf_NO_MOTION
    
    @previousPoint = PointFactory.getInstance().not_nil!.jf_ZERO_ZERO
    @currentPoint = PointFactory.getInstance().not_nil!.jf_ZERO_ZERO
    @commonLabels = CommonLabels.getInstance()
    end
    

    def jinit_MotionGestureEvent(source : JAny, id : Int, motionGesture : MotionGestureInput?) : self
        id = id.to_i32!
        jinit_AllBinaryEventObject(source)
        jfields_MotionGestureEvent()
        @id = id
        self.setMotionGesture(motionGesture)
        self
    end
    

    def getMotionGesture : MotionGestureInput?
        return @motionGesture
    end
    

    def setMotionGesture(motionGesture : MotionGestureInput?) : Nil
        @motionGesture = motionGesture
    end
    

    def getPreviousPoint : GPoint?
        return @previousPoint
    end
    

    def setPreviousPoint(previousPoint : GPoint?) : Nil
        @previousPoint = previousPoint
    end
    

    def getCurrentPoint : GPoint?
        return @currentPoint
    end
    

    def setCurrentPoint(currentPoint : GPoint?) : Nil
        @currentPoint = currentPoint
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringUtil : StringUtil? = StringUtil.getInstance()
        stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(@motionGesture))
        stringBuffer.not_nil!.append(@commonLabels.not_nil!.jf_CURRENT)
        stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(@currentPoint))
        stringBuffer.not_nil!.append(MotionGestureEvent.jst_PREVIOUS)
        stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(@previousPoint))
        stringBuffer.not_nil!.append(MotionGestureEvent.jst_HASHCODE)
        stringBuffer.not_nil!.appendint(TsUtil.getInstance().not_nil!.hashCode(self))
        return stringBuffer.not_nil!.toString()
    end
    

    def getId : Int32
        return @id
    end
end

