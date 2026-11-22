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

class OrientationToGameKeyEvent < JObject
    @allBinaryGyroSensor : AllBinaryOrientationSensor? = nil

    def jf_allBinaryGyroSensor : AllBinaryOrientationSensor?
        @allBinaryGyroSensor
    end

    def jf_allBinaryGyroSensor=(value : AllBinaryOrientationSensor?) : AllBinaryOrientationSensor?
        @allBinaryGyroSensor = value
    end
    @j_MIN : Int32 = 0

    def jf_MIN : Int32
        @j_MIN
    end

    def jf_MIN=(value : Int32) : Int32
        @j_MIN = value
    end

    # Java field initializers run after the super constructor
    def jfields_OrientationToGameKeyEvent : Nil
    
    @j_MIN = 15
    end
    

    def jinit_OrientationToGameKeyEvent : self
        jfields_OrientationToGameKeyEvent()
        if Features.getInstance().not_nil!.isFeature(SensorFeatureFactory.getInstance().not_nil!.jf_NO_ORIENTATION)
            @allBinaryGyroSensor = NoGyroSensor.new.jinit_NoGyroSensor()
        else
            raise (JException.new.jinit_JException("Not Such Feature")).not_nil!
        end
        self
    end
    

    def setAllBinaryGyroSensor(allBinaryGyroSensor : AllBinaryOrientationSensor?) : Nil
        @allBinaryGyroSensor = allBinaryGyroSensor
    end
    

    def getAllBinaryGyroSensor : AllBinaryOrientationSensor?
        return @allBinaryGyroSensor
    end
    

    def process : Nil
    end
    

    def updateGameKeyEvents(orientation : Orientation?, yaw : Int, pitch : Int, roll : Int) : Nil
        yaw = yaw.to_i32!
        pitch = pitch.to_i32!
        roll = roll.to_i32!
    end
end

