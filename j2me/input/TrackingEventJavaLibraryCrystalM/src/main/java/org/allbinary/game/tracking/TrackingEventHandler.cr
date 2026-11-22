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
# package org.allbinary.game.tracking

class TrackingEventHandler < BasicEventHandler

    @@jst_instance : TrackingEventHandler? = nil

    def self.jst_instance : TrackingEventHandler?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TrackingEventHandler?) : TrackingEventHandler?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TrackingEventHandler.new.jinit_TrackingEventHandler()
    end
    

    def self.getInstance : TrackingEventHandler?
        return TrackingEventHandler.jst_instance
    end
    

    def jinit_TrackingEventHandler : self
        jinit_BasicEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        trackingEventListenerInterface : TrackingEventListenerInterface? = JR.cast(eventListenerInterface, TrackingEventListenerInterface)
        trackingEventListenerInterface.not_nil!.onMovement(JR.cast(eventObject, TrackingEvent))
    end
end

