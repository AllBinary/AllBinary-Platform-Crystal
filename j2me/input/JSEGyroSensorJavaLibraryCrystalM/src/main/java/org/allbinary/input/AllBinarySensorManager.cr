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
# package org.allbinary.input

class AllBinarySensorManager < JObject
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
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : AllBinarySensorManager?
        if AllBinarySensorManager.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            AllBinarySensorManager.jst_instance = AllBinarySensorManager.new.jinit_AllBinarySensorManager()
        end
        return JR.cast(AllBinarySensorManager.jst_instance, AllBinarySensorManager)
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinarySensorManager : Nil
    @j_ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
    @j_ORIENTATION_TYPE = "Orientation Type"
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_AllBinarySensorManager : self
        jfields_AllBinarySensorManager()
        self
    end
    

    def init : Nil
    end
    

    def getSensorNamesList : BasicArrayList?
        return @list
    end
    

    def shutdown : Nil
    end
end

