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

class SensorGameUpdateProcessor < JObject
    @inputSensor : AllBinarySensor? = nil

    def jf_inputSensor : AllBinarySensor?
        @inputSensor
    end

    def jf_inputSensor=(value : AllBinarySensor?) : AllBinarySensor?
        @inputSensor = value
    end

    # Java field initializers run after the super constructor
    def jfields_SensorGameUpdateProcessor : Nil
    @inputSensor = NoAllBinarySensor.getInstance()
    end

    def jinit_SensorGameUpdateProcessor : self
        jfields_SensorGameUpdateProcessor()
        self
    end
    

    def setInputSensor(inputSensor : AllBinarySensor?) : Nil
        @inputSensor = inputSensor
    end
    

    def getInputSensor : AllBinarySensor?
        return @inputSensor
    end
    

    def process(anyType : JAny) : Nil
    end
    

    def sendNotifications(anyType : JAny) : Nil
    end
    

    def isAnySensor : Bool
        if @inputSensor == NoAllBinarySensor.getInstance()
            return false
        else
            return true
        end
        return false
    end
    

    def setNoSensors : Nil
        self.setInputSensor(NoAllBinarySensor.getInstance())
    end
end

