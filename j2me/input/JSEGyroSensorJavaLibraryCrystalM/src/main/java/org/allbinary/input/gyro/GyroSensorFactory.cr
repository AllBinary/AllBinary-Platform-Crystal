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

class GyroSensorFactory < JObject

    @@jst_allBinaryGyroSensor : AllBinaryOrientationSensor? = nil

    def self.jst_allBinaryGyroSensor : AllBinaryOrientationSensor?
        jclinit
        @@jst_allBinaryGyroSensor
    end

    def self.jst_allBinaryGyroSensor=(value : AllBinaryOrientationSensor?) : AllBinaryOrientationSensor?
        jclinit
        @@jst_allBinaryGyroSensor = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        
    end
    

    def self.init : Nil
        GyroSensorFactory.jst_allBinaryGyroSensor = NoGyroSensor.new.jinit_NoGyroSensor()
    end
    

    def self.getInstance : AllBinaryOrientationSensor?
        return GyroSensorFactory.jst_allBinaryGyroSensor
    end

    def jinit_GyroSensorFactory : self
        self
    end
end

