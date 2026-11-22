# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.input.mapping.event

class NullInputMappingEventListener < JObject
    include InputMappingEventListenerInterface

    @@jst_NULL_INPUT_MAPPING_EVENT_LISTENER : NullInputMappingEventListener? = nil

    def self.jst_NULL_INPUT_MAPPING_EVENT_LISTENER : NullInputMappingEventListener?
        jclinit
        @@jst_NULL_INPUT_MAPPING_EVENT_LISTENER
    end

    def self.jst_NULL_INPUT_MAPPING_EVENT_LISTENER=(value : NullInputMappingEventListener?) : NullInputMappingEventListener?
        jclinit
        @@jst_NULL_INPUT_MAPPING_EVENT_LISTENER = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_INPUT_MAPPING_EVENT_LISTENER = NullInputMappingEventListener.new.jinit_NullInputMappingEventListener()
    end

    def jinit_NullInputMappingEventListener : self
        self
    end
    

    def onInputMappingEvent(inputMappingEvent : InputMappingEvent?) : Nil
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
    end
end

