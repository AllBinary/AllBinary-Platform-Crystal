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
# package org.allbinary.input.event

class VirtualKeyboardEventHandler < BasicEventHandler
    @j_SHOW_EVENT : VirtualKeyboardEvent? = nil

    def jf_SHOW_EVENT : VirtualKeyboardEvent?
        @j_SHOW_EVENT
    end

    def jf_SHOW_EVENT=(value : VirtualKeyboardEvent?) : VirtualKeyboardEvent?
        @j_SHOW_EVENT = value
    end
    @j_HIDE_EVENT : VirtualKeyboardEvent? = nil

    def jf_HIDE_EVENT : VirtualKeyboardEvent?
        @j_HIDE_EVENT
    end

    def jf_HIDE_EVENT=(value : VirtualKeyboardEvent?) : VirtualKeyboardEvent?
        @j_HIDE_EVENT = value
    end

    @@jst_gameKeyEventHandler : VirtualKeyboardEventHandler? = nil

    def self.jst_gameKeyEventHandler : VirtualKeyboardEventHandler?
        jclinit
        @@jst_gameKeyEventHandler
    end

    def self.jst_gameKeyEventHandler=(value : VirtualKeyboardEventHandler?) : VirtualKeyboardEventHandler?
        jclinit
        @@jst_gameKeyEventHandler = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_gameKeyEventHandler = VirtualKeyboardEventHandler.new.jinit_VirtualKeyboardEventHandler()
    end
    

    def self.getInstance : VirtualKeyboardEventHandler?
        return VirtualKeyboardEventHandler.jst_gameKeyEventHandler
    end

    # Java field initializers run after the super constructor
    def jfields_VirtualKeyboardEventHandler : Nil
    @j_SHOW_EVENT = VirtualKeyboardEvent.new.jinit_VirtualKeyboardEvent(BooleanFactory.getInstance().not_nil!.jf_TRUE)
    @j_HIDE_EVENT = VirtualKeyboardEvent.new.jinit_VirtualKeyboardEvent(BooleanFactory.getInstance().not_nil!.jf_FALSE)
    end
    

    def jinit_VirtualKeyboardEventHandler : self
        jinit_BasicEventHandler()
        jfields_VirtualKeyboardEventHandler()
        self
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        virtualKeyboardEventListenerInterface : VirtualKeyboardEventListenerInterface? = JR.cast(eventListenerInterface, VirtualKeyboardEventListenerInterface)
        virtualKeyboardEventListenerInterface.not_nil!.onVirtualKeyboardEvent(JR.cast(eventObject, VirtualKeyboardEvent))
    end
    

    def open : Nil
        begin
            JThread.sleep_j(120)
            self.fireEvent(@j_SHOW_EVENT)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "open", e)
            else
                raise jex1
            end
        end
    end
    

    def close : Nil
        begin
            JThread.sleep_j(120)
            self.fireEvent(@j_HIDE_EVENT)
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_CLOSE, e)
            else
                raise jex2
            end
        end
    end
end

