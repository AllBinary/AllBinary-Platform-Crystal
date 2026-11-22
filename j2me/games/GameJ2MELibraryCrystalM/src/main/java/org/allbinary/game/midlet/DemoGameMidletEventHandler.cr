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
# package org.allbinary.game.midlet

class DemoGameMidletEventHandler < BasicEventHandler

    @@jst_gameKeyEventHandler : DemoGameMidletEventHandler? = nil

    def self.jst_gameKeyEventHandler : DemoGameMidletEventHandler?
        jclinit
        @@jst_gameKeyEventHandler
    end

    def self.jst_gameKeyEventHandler=(value : DemoGameMidletEventHandler?) : DemoGameMidletEventHandler?
        jclinit
        @@jst_gameKeyEventHandler = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_gameKeyEventHandler = DemoGameMidletEventHandler.new.jinit_DemoGameMidletEventHandler()
    end
    

    def self.getInstance : DemoGameMidletEventHandler?
        return DemoGameMidletEventHandler.jst_gameKeyEventHandler
    end
    

    def jinit_DemoGameMidletEventHandler : self
        jinit_BasicEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        demoGameMidletEventListener : DemoGameMidletEventListener? = JR.cast(eventListenerInterface, DemoGameMidletEventListener)
        demoGameMidletEventListener.not_nil!.onDemoGameMidletEvent(JR.cast(eventObject, DemoGameMidletEvent))
    end
end

