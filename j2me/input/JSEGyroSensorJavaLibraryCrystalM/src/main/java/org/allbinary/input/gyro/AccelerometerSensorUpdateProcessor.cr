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

class AccelerometerSensorUpdateProcessor < Processor

    def jinit_AccelerometerSensorUpdateProcessor : self
        jinit_Processor()
        self
    end
    

    def process : Nil
        sensorFeatureFactory : SensorFeatureFactory? = SensorFeatureFactory.getInstance()
        if Features.getInstance().not_nil!.isFeature(sensorFeatureFactory.not_nil!.jf_ORIENTATION_SENSORS)
            AccelerometerSensorFactory.getInstance().not_nil!.setCompleteMotionGestureInputEventListener(SingleKeyPressGameKeyFromMotionGestureEventListener.new.jinit_SingleKeyPressGameKeyFromMotionGestureEventListener())
        elsif Features.getInstance().not_nil!.isFeature(sensorFeatureFactory.not_nil!.jf_SIMULATED_ORIENTATION_SENSORS)
            AccelerometerSensorFactory.getInstance().not_nil!.setCompleteMotionGestureInputEventListener(SingleKeyPressGameKeyFromMotionGestureEventListener.new.jinit_SingleKeyPressGameKeyFromMotionGestureEventListener())
        elsif Features.getInstance().not_nil!.isFeature(sensorFeatureFactory.not_nil!.jf_NO_ORIENTATION)
            AccelerometerSensorFactory.getInstance().not_nil!.setCompleteMotionGestureInputEventListener(NoCompleteMotionGestureInputEventListener.getInstance())
        else
            raise (JException.new.jinit_JException("Sensor Feature Not Set")).not_nil!
        end
    end
end

