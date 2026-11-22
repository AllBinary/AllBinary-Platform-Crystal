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
# package org.allbinary.android.input.motion.event

class AnalogControllerConfigurationEventHandler < BasicEventHandler
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_instance : AnalogControllerConfigurationEventHandler? = nil

    def self.jst_instance : AnalogControllerConfigurationEventHandler?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AnalogControllerConfigurationEventHandler?) : AnalogControllerConfigurationEventHandler?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AnalogControllerConfigurationEventHandler.new.jinit_AnalogControllerConfigurationEventHandler()
    end
    

    def self.getInstance : AnalogControllerConfigurationEventHandler?
        return AnalogControllerConfigurationEventHandler.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AnalogControllerConfigurationEventHandler : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_AnalogControllerConfigurationEventHandler : self
        jinit_BasicEventHandler()
        jfields_AnalogControllerConfigurationEventHandler()
        self
    end
    

    def addListener(analogControllerConfigurationEventListenerInterface : AnalogControllerConfigurationEventListenerInterface?) : Nil
        if !@list.not_nil!.contains(analogControllerConfigurationEventListenerInterface)
            @list.not_nil!.add(analogControllerConfigurationEventListenerInterface)
        end
    end
    

    def removeAllListeners : Nil
        @list.not_nil!.clear()
        super()
    end
    

    def removeListener(eventListenerInterface : EventListenerInterface?) : Nil
        @list.not_nil!.remove(eventListenerInterface)
        super(eventListenerInterface)
    end
    

    def fireEvent(eventObject : AllBinaryEventObject?) : Nil
        index : Int32 = @list.not_nil!.size()
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            begin
                playerGameInput : AnalogControllerConfigurationEventListenerInterface? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], AnalogControllerConfigurationEventListenerInterface)
                playerGameInput.not_nil!.onAnalogControllerConfigurationEvent(JR.cast(eventObject, AnalogControllerConfigurationEvent))
            rescue jexc1 : ::Exception
                jex1 = JR.jthrowable(jexc1)
                if jex1.is_a?(JException)
                    e = jex1.as(JException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, EventStrings.getInstance().not_nil!.jf_FIRE_EVENT, e)
                else
                    raise jex1
                end
            end
        end
        super(eventObject)
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        analogControllerConfigurationEventListenerInterface : AnalogControllerConfigurationEventListenerInterface? = (JR.cast(eventListenerInterface, AnalogControllerConfigurationEventListenerInterface))
        analogControllerConfigurationEventListenerInterface.not_nil!.onAnalogControllerConfigurationEvent(JR.cast(eventObject, AnalogControllerConfigurationEvent))
    end
end

