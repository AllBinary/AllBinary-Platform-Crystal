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
# package org.allbinary.game.configuration.feature

class SensorFeatureFactory < JObject
    @j_NO_ORIENTATION : SensorFeature? = nil

    def jf_NO_ORIENTATION : SensorFeature?
        @j_NO_ORIENTATION
    end

    def jf_NO_ORIENTATION=(value : SensorFeature?) : SensorFeature?
        @j_NO_ORIENTATION = value
    end
    @j_ORIENTATION_SENSORS : SensorFeature? = nil

    def jf_ORIENTATION_SENSORS : SensorFeature?
        @j_ORIENTATION_SENSORS
    end

    def jf_ORIENTATION_SENSORS=(value : SensorFeature?) : SensorFeature?
        @j_ORIENTATION_SENSORS = value
    end
    @j_SIMULATED_ORIENTATION_SENSORS : SensorFeature? = nil

    def jf_SIMULATED_ORIENTATION_SENSORS : SensorFeature?
        @j_SIMULATED_ORIENTATION_SENSORS
    end

    def jf_SIMULATED_ORIENTATION_SENSORS=(value : SensorFeature?) : SensorFeature?
        @j_SIMULATED_ORIENTATION_SENSORS = value
    end
    @j_YAW : SensorFeature? = nil

    def jf_YAW : SensorFeature?
        @j_YAW
    end

    def jf_YAW=(value : SensorFeature?) : SensorFeature?
        @j_YAW = value
    end
    @j_YAW_MINUS_RIGHT_PLUS_LEFT : SensorFeature? = nil

    def jf_YAW_MINUS_RIGHT_PLUS_LEFT : SensorFeature?
        @j_YAW_MINUS_RIGHT_PLUS_LEFT
    end

    def jf_YAW_MINUS_RIGHT_PLUS_LEFT=(value : SensorFeature?) : SensorFeature?
        @j_YAW_MINUS_RIGHT_PLUS_LEFT = value
    end
    @j_YAW_MINUS_LEFT_PLUS_RIGHT : SensorFeature? = nil

    def jf_YAW_MINUS_LEFT_PLUS_RIGHT : SensorFeature?
        @j_YAW_MINUS_LEFT_PLUS_RIGHT
    end

    def jf_YAW_MINUS_LEFT_PLUS_RIGHT=(value : SensorFeature?) : SensorFeature?
        @j_YAW_MINUS_LEFT_PLUS_RIGHT = value
    end
    @j_PITCH : SensorFeature? = nil

    def jf_PITCH : SensorFeature?
        @j_PITCH
    end

    def jf_PITCH=(value : SensorFeature?) : SensorFeature?
        @j_PITCH = value
    end
    @j_ROLL : SensorFeature? = nil

    def jf_ROLL : SensorFeature?
        @j_ROLL
    end

    def jf_ROLL=(value : SensorFeature?) : SensorFeature?
        @j_ROLL = value
    end

    @@jst_instance : SensorFeatureFactory? = nil

    def self.jst_instance : SensorFeatureFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : SensorFeatureFactory?) : SensorFeatureFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = SensorFeatureFactory.new.jinit_SensorFeatureFactory()
    end
    

    def self.getInstance : SensorFeatureFactory?
        return SensorFeatureFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_SensorFeatureFactory : Nil
    @j_NO_ORIENTATION = SensorFeature.new.jinit_SensorFeature("No Orientation")
    @j_ORIENTATION_SENSORS = SensorFeature.new.jinit_SensorFeature("Orientation Sensors")
    @j_SIMULATED_ORIENTATION_SENSORS = SensorFeature.new.jinit_SensorFeature("Simulated Orientation Sensors")
    @j_YAW = SensorFeature.new.jinit_SensorFeature("Yaw")
    @j_YAW_MINUS_RIGHT_PLUS_LEFT = SensorFeature.new.jinit_SensorFeature("Yaw -Right +Left")
    @j_YAW_MINUS_LEFT_PLUS_RIGHT = SensorFeature.new.jinit_SensorFeature("Yaw -Left +Right ")
    @j_PITCH = SensorFeature.new.jinit_SensorFeature("Pitch")
    @j_ROLL = SensorFeature.new.jinit_SensorFeature("Roll")
    end
    

    def jinit_SensorFeatureFactory : self
        jfields_SensorFeatureFactory()
        self
    end
end

