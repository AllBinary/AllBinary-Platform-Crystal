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
# package org.allbinary.input.accelerometer

class AccelerometerSensorFactory < JObject

    @@jst_allBinaryAccelerometerSensor : AllBinaryOrientationSensor? = nil

    def self.jst_allBinaryAccelerometerSensor : AllBinaryOrientationSensor?
        jclinit
        @@jst_allBinaryAccelerometerSensor
    end

    def self.jst_allBinaryAccelerometerSensor=(value : AllBinaryOrientationSensor?) : AllBinaryOrientationSensor?
        jclinit
        @@jst_allBinaryAccelerometerSensor = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        
    end
    

    def self.init : Nil
        features : Features? = Features.getInstance()
        sensorFeatureFactory : SensorFeatureFactory? = SensorFeatureFactory.getInstance()
        if features.not_nil!.isFeature(sensorFeatureFactory.not_nil!.jf_ORIENTATION_SENSORS)
            raise (JException.new.jinit_JException("No Orientation Sensors")).not_nil!
        elsif features.not_nil!.isFeature(sensorFeatureFactory.not_nil!.jf_SIMULATED_ORIENTATION_SENSORS)
            raise (JException.new.jinit_JException("No Simulation Sensors")).not_nil!
        elsif features.not_nil!.isFeature(sensorFeatureFactory.not_nil!.jf_NO_ORIENTATION)
            AccelerometerSensorFactory.jst_allBinaryAccelerometerSensor = NoAccelerometerSensor.new.jinit_NoAccelerometerSensor()
        else
            raise (JException.new.jinit_JException("Not Such SensorFeature")).not_nil!
        end
    end
    

    def self.getInstance : AllBinaryOrientationSensor?
        return AccelerometerSensorFactory.jst_allBinaryAccelerometerSensor
    end

    def jinit_AccelerometerSensorFactory : self
        self
    end
end

