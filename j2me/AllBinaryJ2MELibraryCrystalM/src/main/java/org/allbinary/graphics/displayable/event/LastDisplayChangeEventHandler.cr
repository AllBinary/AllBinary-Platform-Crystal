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
# package org.allbinary.graphics.displayable.event

class LastDisplayChangeEventHandler < BasicEventHandler

    @@jst_SINGLETON : LastDisplayChangeEventHandler? = nil

    def self.jst_SINGLETON : LastDisplayChangeEventHandler?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : LastDisplayChangeEventHandler?) : LastDisplayChangeEventHandler?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = LastDisplayChangeEventHandler.new.jinit_LastDisplayChangeEventHandler()
    end
    

    def self.getInstance : LastDisplayChangeEventHandler?
        return LastDisplayChangeEventHandler.jst_SINGLETON
    end
    

    def jinit_LastDisplayChangeEventHandler : self
        jinit_BasicEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        displayChangeEventListener : DisplayChangeEventListener? = (JR.cast(eventListenerInterface, DisplayChangeEventListener))
        displayChangeEventListener.not_nil!.onDisplayChangeEvent(JR.cast(eventObject, DisplayChangeEvent))
    end
end

