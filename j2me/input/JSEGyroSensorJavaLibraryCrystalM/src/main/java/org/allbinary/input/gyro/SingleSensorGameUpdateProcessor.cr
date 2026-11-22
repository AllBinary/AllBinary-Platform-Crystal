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

class SingleSensorGameUpdateProcessor < SensorGameUpdateProcessor
    @accelerometerSensorUpdateProcessor : Processor? = nil

    def jf_accelerometerSensorUpdateProcessor : Processor?
        @accelerometerSensorUpdateProcessor
    end

    def jf_accelerometerSensorUpdateProcessor=(value : Processor?) : Processor?
        @accelerometerSensorUpdateProcessor = value
    end
    @gyroSensorUpdateProcessor : Processor? = nil

    def jf_gyroSensorUpdateProcessor : Processor?
        @gyroSensorUpdateProcessor
    end

    def jf_gyroSensorUpdateProcessor=(value : Processor?) : Processor?
        @gyroSensorUpdateProcessor = value
    end

    # Java field initializers run after the super constructor
    def jfields_SingleSensorGameUpdateProcessor : Nil
    @accelerometerSensorUpdateProcessor = AccelerometerSensorUpdateProcessor.new.jinit_AccelerometerSensorUpdateProcessor()
    @gyroSensorUpdateProcessor = GyroSensorUpdateProcessor.new.jinit_GyroSensorUpdateProcessor()
    end

    def jinit_SingleSensorGameUpdateProcessor : self
        jinit_SensorGameUpdateProcessor()
        jfields_SingleSensorGameUpdateProcessor()
        self
    end
    

    def process(anyType : JAny) : Nil
        self.setNoSensors()
    end
    

    def sendNotifications(anyType : JAny) : Nil
    end
end

