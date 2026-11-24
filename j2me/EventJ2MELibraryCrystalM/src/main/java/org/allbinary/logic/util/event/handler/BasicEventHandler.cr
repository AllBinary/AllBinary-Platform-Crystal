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
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @eventStrings : EventStrings? = nil

    def jf_eventStrings : EventStrings?
        @eventStrings
    end

    def jf_eventStrings=(value : EventStrings?) : EventStrings?
        @eventStrings = value
    end
    @eventListenerInterfaceList : BasicArrayList? = nil

    def jf_eventListenerInterfaceList : BasicArrayList?
        @eventListenerInterfaceList
    end

    def jf_eventListenerInterfaceList=(value : BasicArrayList?) : BasicArrayList?
        @eventListenerInterfaceList = value
    end

    # Java field initializers run after the super constructor
    def jfields_BasicEventHandler : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @eventStrings = EventStrings.getInstance()
    
    end
    

    def jinit_BasicEventHandler : self
        jfields_BasicEventHandler()
        @eventListenerInterfaceList = BasicArrayListD.new.jinit_BasicArrayListD()
        self
    end
    

    def removeAllListeners : Nil
        @eventListenerInterfaceList = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def addListeners(vector : BasicArrayList?) : Nil
        eventListenerInterface : EventListenerInterface? = nil
        size : Int32 = vector.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            eventListenerInterface = JR.cast(JR.cast(vector.not_nil!.get(index), EventListenerInterface), EventListenerInterface)
            self.addListenerInterface(eventListenerInterface)
        end
    end
    

    def removeListeners(vector : BasicArrayList?) : Nil
        eventListenerInterface : EventListenerInterface? = nil
        size : Int32 = vector.not_nil!.size()
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            eventListenerInterface = JR.cast(JR.cast(vector.not_nil!.get(index), EventListenerInterface), EventListenerInterface)
            self.removeListener(eventListenerInterface)
        end
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
        eventListenerInterface : EventListenerInterface? = nil
        index : Int32 = 0
        while index < @eventListenerInterfaceList.not_nil!.size()
            begin
                eventListenerInterface = JR.cast(JR.cast(@eventListenerInterfaceList.not_nil!.get(index), EventListenerInterface), EventListenerInterface)
                self.process(eventObject, eventListenerInterface)
            rescue jexc1 : ::Exception
                jex1 = JR.jthrowable(jexc1)
                if jex1.is_a?(JException)
                    e = jex1.as(JException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @eventStrings.not_nil!.jf_FIRE_EVENT, e)
                else
                    raise jex1
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
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(@eventStrings.not_nil!.jf_TOTAL_LISTENERS)
        stringBuffer.not_nil!.appendint(@eventListenerInterfaceList.not_nil!.size())
        eventListenerInterface : EventListenerInterface? = nil
        index : Int32 = 0
        while index < @eventListenerInterfaceList.not_nil!.size()
            begin
                eventListenerInterface = JR.cast(JR.cast(@eventListenerInterfaceList.not_nil!.get(index), EventListenerInterface), EventListenerInterface)
                stringBuffer.not_nil!.append(@eventStrings.not_nil!.jf_LISTENER_LABEL)
                stringBuffer.not_nil!.append(eventListenerInterface.not_nil!.toString())
            rescue jexc2 : ::Exception
                jex2 = JR.jthrowable(jexc2)
                if jex2.is_a?(JException)
                    e = jex2.as(JException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_TOSTRING, e)
                else
                    raise jex2
                end
            end
            index &+= 1
        end
        return stringBuffer.not_nil!.toString()
    end
end

