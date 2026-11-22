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

class NoAccelerometerSensor < AllBinaryOrientationSensor
    

    def jinit_NoAccelerometerSensor : self
        jinit_AllBinaryOrientationSensor()
        self
    end
    

    def getOrientation : Orientation?
        return Orientation.jst_NONE
    end
    

    def onSensorChange : Nil
    end
end

