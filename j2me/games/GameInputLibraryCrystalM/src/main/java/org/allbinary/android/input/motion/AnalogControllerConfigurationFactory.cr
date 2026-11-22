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
# package org.allbinary.android.input.motion

class AnalogControllerConfigurationFactory < JObject
    @j_SCALE_FACTOR : Int32 = 0

    def jf_SCALE_FACTOR : Int32
        @j_SCALE_FACTOR
    end

    def jf_SCALE_FACTOR=(value : Int32) : Int32
        @j_SCALE_FACTOR = value
    end
    @j_SCALE_VALUE : Int32 = 0

    def jf_SCALE_VALUE : Int32
        @j_SCALE_VALUE
    end

    def jf_SCALE_VALUE=(value : Int32) : Int32
        @j_SCALE_VALUE = value
    end
    @available : Bool = false

    def jf_available : Bool
        @available
    end

    def jf_available=(value : Bool) : Bool
        @available = value
    end
    @analogControllerConfigurationEvent : AnalogControllerConfigurationEvent? = nil

    def jf_analogControllerConfigurationEvent : AnalogControllerConfigurationEvent?
        @analogControllerConfigurationEvent
    end

    def jf_analogControllerConfigurationEvent=(value : AnalogControllerConfigurationEvent?) : AnalogControllerConfigurationEvent?
        @analogControllerConfigurationEvent = value
    end

    @@jst_instance : AnalogControllerConfigurationFactory? = nil

    def self.jst_instance : AnalogControllerConfigurationFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AnalogControllerConfigurationFactory?) : AnalogControllerConfigurationFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AnalogControllerConfigurationFactory.new.jinit_AnalogControllerConfigurationFactory()
    end
    

    def self.getInstance : AnalogControllerConfigurationFactory?
        return AnalogControllerConfigurationFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AnalogControllerConfigurationFactory : Nil
    @j_SCALE_FACTOR = ScaleFactorFactory.getInstance().not_nil!.jf_DEFAULT_SCALE_FACTOR
    @j_SCALE_VALUE = ScaleFactorFactory.getInstance().not_nil!.jf_DEFAULT_SCALE_VALUE
    
    @analogControllerConfigurationEvent = AnalogControllerConfigurationEvent.new.jinit_AnalogControllerConfigurationEvent(self)
    end
    

    def jinit_AnalogControllerConfigurationFactory : self
        jfields_AnalogControllerConfigurationFactory()
        self
    end
    

    def isAvailable : Bool
        return @available
    end
    

    def setAvailable(available : Bool) : Nil
        @available = available
        AnalogControllerConfigurationEventHandler.getInstance().not_nil!.fireEvent(@analogControllerConfigurationEvent)
    end
end

