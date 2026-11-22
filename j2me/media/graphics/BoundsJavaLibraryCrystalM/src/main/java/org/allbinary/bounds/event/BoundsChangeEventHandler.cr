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
# package org.allbinary.bounds.event

class BoundsChangeEventHandler < BasicEventHandler

    @@jst_SINGLETON : BasicEventHandler? = nil

    def self.jst_SINGLETON : BasicEventHandler?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : BasicEventHandler?) : BasicEventHandler?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = BoundsChangeEventHandler.new.jinit_BoundsChangeEventHandler()
    end
    

    def self.getInstance : BasicEventHandler?
        return BoundsChangeEventHandler.jst_SINGLETON
    end
    

    def jinit_BoundsChangeEventHandler : self
        jinit_BasicEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        boundsChangeEventListener : BoundsChangeEventListener? = JR.cast(eventListenerInterface, BoundsChangeEventListener)
        boundsChangeEventListener.not_nil!.onBoundsChangeEvent(JR.cast(eventObject, BoundsChangeEvent))
    end
end

