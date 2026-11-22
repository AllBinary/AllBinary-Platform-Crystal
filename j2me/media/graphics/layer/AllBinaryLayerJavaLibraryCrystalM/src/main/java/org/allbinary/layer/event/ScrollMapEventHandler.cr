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
# package org.allbinary.layer.event

class ScrollMapEventHandler < BasicEventHandler

    @@jst_SINGLETON : ScrollMapEventHandler? = nil

    def self.jst_SINGLETON : ScrollMapEventHandler?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : ScrollMapEventHandler?) : ScrollMapEventHandler?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = ScrollMapEventHandler.new.jinit_ScrollMapEventHandler()
    end
    

    def self.getInstance : ScrollMapEventHandler?
        return ScrollMapEventHandler.jst_SINGLETON
    end
    

    def jinit_ScrollMapEventHandler : self
        jinit_BasicEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        scrollMapEventListenerInterface : ScrollMapEventListenerInterface? = (JR.cast(eventListenerInterface, ScrollMapEventListenerInterface))
        scrollMapEventListenerInterface.not_nil!.onMoveEvent(JR.cast(eventObject, ScrollMapEvent))
    end
end

