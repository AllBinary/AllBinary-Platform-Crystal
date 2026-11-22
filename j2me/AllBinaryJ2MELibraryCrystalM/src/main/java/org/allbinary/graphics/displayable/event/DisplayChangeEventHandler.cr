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
# package org.allbinary.graphics.displayable.event

class DisplayChangeEventHandler < BasicEventHandler

    @@jst_SINGLETON : DisplayChangeEventHandler? = nil

    def self.jst_SINGLETON : DisplayChangeEventHandler?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : DisplayChangeEventHandler?) : DisplayChangeEventHandler?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = DisplayChangeEventHandler.new.jinit_DisplayChangeEventHandler()
    end
    

    def self.getInstance : DisplayChangeEventHandler?
        return DisplayChangeEventHandler.jst_SINGLETON
    end
    

    def jinit_DisplayChangeEventHandler : self
        jinit_BasicEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        displayChangeEventListener : DisplayChangeEventListener? = (JR.cast(eventListenerInterface, DisplayChangeEventListener))
        displayChangeEventListener.not_nil!.onDisplayChangeEvent(JR.cast(eventObject, DisplayChangeEvent))
    end
end

