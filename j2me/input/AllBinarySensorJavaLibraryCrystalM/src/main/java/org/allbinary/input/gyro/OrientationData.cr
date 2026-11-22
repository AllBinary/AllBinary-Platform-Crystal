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

class OrientationData < JObject
    @j_ORIENTATION_SENSOR_INPUT : String = ""

    def jf_ORIENTATION_SENSOR_INPUT : String
        @j_ORIENTATION_SENSOR_INPUT
    end

    def jf_ORIENTATION_SENSOR_INPUT=(value : String) : String
        @j_ORIENTATION_SENSOR_INPUT = value
    end
    @j_ORIENTATION_TYPE : String = ""

    def jf_ORIENTATION_TYPE : String
        @j_ORIENTATION_TYPE
    end

    def jf_ORIENTATION_TYPE=(value : String) : String
        @j_ORIENTATION_TYPE = value
    end

    @@jst_SINGLETON : OrientationData? = nil

    def self.jst_SINGLETON : OrientationData?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : OrientationData?) : OrientationData?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = OrientationData.new.jinit_OrientationData()
    end
    

    def self.getInstance : OrientationData?
        return OrientationData.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_OrientationData : Nil
    @j_ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
    @j_ORIENTATION_TYPE = "Orientation Type"
    end
    

    def jinit_OrientationData : self
        jfields_OrientationData()
        self
    end
end

