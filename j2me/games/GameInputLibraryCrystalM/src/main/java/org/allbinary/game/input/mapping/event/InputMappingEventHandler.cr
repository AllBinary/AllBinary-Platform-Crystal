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
# package org.allbinary.game.input.mapping.event

class InputMappingEventHandler < BasicEventHandler

    @@jst_gameKeyEventHandler : InputMappingEventHandler? = nil

    def self.jst_gameKeyEventHandler : InputMappingEventHandler?
        jclinit
        @@jst_gameKeyEventHandler
    end

    def self.jst_gameKeyEventHandler=(value : InputMappingEventHandler?) : InputMappingEventHandler?
        jclinit
        @@jst_gameKeyEventHandler = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_gameKeyEventHandler = InputMappingEventHandler.new.jinit_InputMappingEventHandler()
    end
    

    def self.getInstance : InputMappingEventHandler?
        return InputMappingEventHandler.jst_gameKeyEventHandler
    end
    

    def jinit_InputMappingEventHandler : self
        jinit_BasicEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        inputMappingEventListenerInterface : InputMappingEventListenerInterface? = JR.cast(eventListenerInterface, InputMappingEventListenerInterface)
        inputMappingEventListenerInterface.not_nil!.onInputMappingEvent(JR.cast(eventObject, InputMappingEvent))
    end
end

