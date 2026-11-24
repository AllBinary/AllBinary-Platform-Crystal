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
# package org.allbinary.input.gyro

class AllBinaryOrientationSensor < AllBinarySensor
    @listener : CompleteMotionGestureInputEventListenerInterface? = nil

    def jf_listener : CompleteMotionGestureInputEventListenerInterface?
        @listener
    end

    def jf_listener=(value : CompleteMotionGestureInputEventListenerInterface?) : CompleteMotionGestureInputEventListenerInterface?
        @listener = value
    end

    @@jst_NULL_ALLBINARY_ORIENTATION_SENSOR : AllBinaryOrientationSensor? = nil

    def self.jst_NULL_ALLBINARY_ORIENTATION_SENSOR : AllBinaryOrientationSensor?
        jclinit
        @@jst_NULL_ALLBINARY_ORIENTATION_SENSOR
    end

    def self.jst_NULL_ALLBINARY_ORIENTATION_SENSOR=(value : AllBinaryOrientationSensor?) : AllBinaryOrientationSensor?
        jclinit
        @@jst_NULL_ALLBINARY_ORIENTATION_SENSOR = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_ALLBINARY_ORIENTATION_SENSOR = AllBinaryOrientationSensor.new.jinit_AllBinaryOrientationSensor()
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinaryOrientationSensor : Nil
    @listener = NoCompleteMotionGestureInputEventListener.getInstance()
    end
    

    def setListener(completeMotionGestureInputEventListenerInterface : CompleteMotionGestureInputEventListenerInterface?) : Nil
        @listener = JR.cast(completeMotionGestureInputEventListenerInterface, CompleteMotionGestureInputEventListenerInterface)
    end
    

    def jinit_AllBinaryOrientationSensor : self
        jinit_AllBinarySensor()
        jfields_AllBinaryOrientationSensor()
        self
    end
    

    def getOrientation : Orientation?
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
end

