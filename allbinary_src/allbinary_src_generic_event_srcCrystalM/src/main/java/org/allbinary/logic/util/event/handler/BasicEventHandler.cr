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
# package org.allbinary.logic.util.event.handler

class BasicEventHandler < JObject
    include BasicEventHandlerInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @eventListenerInterfaceList : BasicArrayList? = nil

    def jf_eventListenerInterfaceList : BasicArrayList?
        @eventListenerInterfaceList
    end

    def jf_eventListenerInterfaceList=(value : BasicArrayList?) : BasicArrayList?
        @eventListenerInterfaceList = value
    end

    def self.jst_PERFORMANCE_MESSAGE : String
        "Use Custom onEvent Methods for needed optimization"
    end

    # Java field initializers run after the super constructor
    def jfields_BasicEventHandler : Nil
    @logUtil = LogUtil.getInstance()
    
    end
    

    def jinit_BasicEventHandler : self
        jfields_BasicEventHandler()
        @eventListenerInterfaceList = BasicArrayListD.new.jinit_BasicArrayListD()
        self
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        j_LISTENER : String = " Listener: "
        stringBuffer.not_nil!.append("Total Listeners: ")
        stringBuffer.not_nil!.appendint(@eventListenerInterfaceList.not_nil!.size())
        eventListenerInterface : EventListenerInterface? = nil
        index : Int32 = 0
        while index < @eventListenerInterfaceList.not_nil!.size()
            begin
                eventListenerInterface = JR.cast(JR.cast(@eventListenerInterfaceList.not_nil!.jf_objectArray.not_nil![index], EventListenerInterface), EventListenerInterface)
                stringBuffer.not_nil!.append(j_LISTENER)
                stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(eventListenerInterface))
            rescue jexc1 : ::Exception
                jex1 = JR.jthrowable(jexc1)
                if jex1.is_a?(JException)
                    e = jex1.as(JException)
                commonStrings : CommonStrings? = CommonStrings.getInstance()
                @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_TOSTRING, e)
                else
                    raise jex1
                end
            end
            index &+= 1
        end
        return stringBuffer.not_nil!.toString()
    end
    

    def removeAllListeners : Nil
        @eventListenerInterfaceList = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def addListenerSingleThreaded(eventListenerInterface : EventListenerInterface?) : Nil
        if !@eventListenerInterfaceList.not_nil!.contains(eventListenerInterface)
            @eventListenerInterfaceList.not_nil!.add(eventListenerInterface)
        end
    end
    

    def addListenerInterface(eventListenerInterface : EventListenerInterface?) : Nil
        if !@eventListenerInterfaceList.not_nil!.contains(eventListenerInterface)
            @eventListenerInterfaceList.not_nil!.add(eventListenerInterface)
        end
    end
    

    def removeListenerSingleThreaded(eventListenerInterface : EventListenerInterface?) : Nil
        @eventListenerInterfaceList.not_nil!.remove(eventListenerInterface)
    end
    

    def removeListener(eventListenerInterface : EventListenerInterface?) : Nil
        @eventListenerInterfaceList.not_nil!.remove(eventListenerInterface)
    end
    

    def fireEvent(eventObject : AllBinaryEventObject?) : Nil
        index : Int32 = 0
        eventListenerInterface : EventListenerInterface? = nil
        while index < @eventListenerInterfaceList.not_nil!.size()
            begin
                eventListenerInterface = JR.cast(JR.cast(@eventListenerInterfaceList.not_nil!.jf_objectArray.not_nil![index], EventListenerInterface), EventListenerInterface)
                self.process(eventObject, eventListenerInterface)
            rescue jexc2 : ::Exception
                jex2 = JR.jthrowable(jexc2)
                if jex2.is_a?(JException)
                    e = jex2.as(JException)
                commonStrings : CommonStrings? = CommonStrings.getInstance()
                @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, EventStrings.getInstance().not_nil!.jf_FIRE_EVENT, e)
                else
                    raise jex2
                end
            end
            index &+= 1
        end
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        eventListenerInterface.not_nil!.onEvent(eventObject)
    end
    

    def getEventListenerInterfaceListP : BasicArrayList?
        return @eventListenerInterfaceList
    end
end

