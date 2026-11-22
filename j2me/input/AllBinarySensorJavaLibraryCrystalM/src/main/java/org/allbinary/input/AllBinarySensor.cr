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

class AllBinarySensor < JObject
    include AllBinarySensorListener
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end

    @@jst_NULL_ALLBINARY_SENSOR : AllBinarySensor? = nil

    def self.jst_NULL_ALLBINARY_SENSOR : AllBinarySensor?
        jclinit
        @@jst_NULL_ALLBINARY_SENSOR
    end

    def self.jst_NULL_ALLBINARY_SENSOR=(value : AllBinarySensor?) : AllBinarySensor?
        jclinit
        @@jst_NULL_ALLBINARY_SENSOR = value
    end

    @@jst_max : Int32 = 0

    def self.jst_max : Int32
        jclinit
        @@jst_max
    end

    def self.jst_max=(value : Int32) : Int32
        jclinit
        @@jst_max = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_ALLBINARY_SENSOR = AllBinarySensor.new.jinit_AllBinarySensor()
        @@jst_max = 100
    end
    

    def self.setMax(max : Int) : Nil
        max = max.to_i32!
        AllBinarySensor.jst_max = max
    end
    

    def self.getMax : Int32
        return AllBinarySensor.jst_max
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinarySensor : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    end
    

    def jinit_AllBinarySensor : self
        jfields_AllBinarySensor()
        self
    end
    

    def init : Nil
    end
    

    def update : Nil
    end
    

    def getId : Int32
        return AllBinarySensor.getMax()
    end
    

    def shutdown : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, "shutdown")
    end
    

    def onSensorChange : Nil
        ForcedLogUtil.log(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED, self)
    end
end

