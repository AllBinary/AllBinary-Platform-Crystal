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
# package org.allbinary.logic.util.event

class NullEventListener < JObject
    include EventListenerInterface

    @@jst_NULL_EVENT_LISTENER : NullEventListener? = nil

    def self.jst_NULL_EVENT_LISTENER : NullEventListener?
        jclinit
        @@jst_NULL_EVENT_LISTENER
    end

    def self.jst_NULL_EVENT_LISTENER=(value : NullEventListener?) : NullEventListener?
        jclinit
        @@jst_NULL_EVENT_LISTENER = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_EVENT_LISTENER = NullEventListener.new.jinit_NullEventListener()
    end

    def jinit_NullEventListener : self
        self
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
    end
end

