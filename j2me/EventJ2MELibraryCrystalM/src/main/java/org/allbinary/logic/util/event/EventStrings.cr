# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.logic.util.event

class EventStrings < JObject
    @j_PERFORMANCE_MESSAGE : String = ""

    def jf_PERFORMANCE_MESSAGE : String
        @j_PERFORMANCE_MESSAGE
    end

    def jf_PERFORMANCE_MESSAGE=(value : String) : String
        @j_PERFORMANCE_MESSAGE = value
    end
    @j_TOTAL_LISTENERS : String = ""

    def jf_TOTAL_LISTENERS : String
        @j_TOTAL_LISTENERS
    end

    def jf_TOTAL_LISTENERS=(value : String) : String
        @j_TOTAL_LISTENERS = value
    end
    @j_LISTENER_LABEL : String = ""

    def jf_LISTENER_LABEL : String
        @j_LISTENER_LABEL
    end

    def jf_LISTENER_LABEL=(value : String) : String
        @j_LISTENER_LABEL = value
    end
    @j_FIRE_EVENT : String = ""

    def jf_FIRE_EVENT : String
        @j_FIRE_EVENT
    end

    def jf_FIRE_EVENT=(value : String) : String
        @j_FIRE_EVENT = value
    end

    @@jst_instance : EventStrings? = nil

    def self.jst_instance : EventStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : EventStrings?) : EventStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = EventStrings.new.jinit_EventStrings()
    end
    

    def self.getInstance : EventStrings?
        return EventStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_EventStrings : Nil
    @j_PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization"
    @j_TOTAL_LISTENERS = "Total Listeners: "
    @j_LISTENER_LABEL = " Listener: "
    @j_FIRE_EVENT = "fireEvent"
    end

    def jinit_EventStrings : self
        jfields_EventStrings()
        self
    end
end

