# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.input.event

class RawKeyEventHandler < JObject
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

    @@jst_instance : RawKeyEventHandler? = nil

    def self.jst_instance : RawKeyEventHandler?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : RawKeyEventHandler?) : RawKeyEventHandler?
        jclinit
        @@jst_instance = value
    end

    def self.jst_TOTAL_LISTENERS : String
        "Total Listeners: "
    end

    def self.jst_LISTENER_LABEL : String
        " Listener: "
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = RawKeyEventHandler.new.jinit_RawKeyEventHandler()
        
        
    end
    

    def self.getInstance : RawKeyEventHandler?
        return RawKeyEventHandler.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_RawKeyEventHandler : Nil
    @logUtil = LogUtil.getInstance()
    
    end
    

    def jinit_RawKeyEventHandler : self
        jfields_RawKeyEventHandler()
        @eventListenerInterfaceList = BasicArrayListD.new.jinit_BasicArrayListD()
        self
    end
    

    def removeAllListeners : Nil
        @eventListenerInterfaceList = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def addListeners(vector : BasicArrayList?) : Nil
        eventListenerInterface : RawKeyEventListener? = nil
        size : Int32 = vector.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            eventListenerInterface = JR.cast(JR.cast(vector.not_nil!.get(index), RawKeyEventListener), RawKeyEventListener)
            self.addListener(eventListenerInterface)
        end
    end
    

    def addListenerSingleThreaded(eventListenerInterface : RawKeyEventListener?) : Nil
        if !@eventListenerInterfaceList.not_nil!.contains(eventListenerInterface)
            @eventListenerInterfaceList.not_nil!.add(eventListenerInterface)
        end
    end
    

    def addListener(eventListenerInterface : RawKeyEventListener?) : Nil
        if !@eventListenerInterfaceList.not_nil!.contains(eventListenerInterface)
            @eventListenerInterfaceList.not_nil!.add(eventListenerInterface)
        end
    end
    

    def removeListenerSingleThreaded(eventListenerInterface : RawKeyEventListener?) : Nil
        @eventListenerInterfaceList.not_nil!.remove(eventListenerInterface)
    end
    

    def removeListener(eventListenerInterface : RawKeyEventListener?) : Nil
        @eventListenerInterfaceList.not_nil!.remove(eventListenerInterface)
    end
    

    def fireEvent(keyCode : Int, deviceId : Int, repeated : Bool) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        eventListenerInterface : RawKeyEventListener? = nil
        index : Int32 = 0
        while index < @eventListenerInterfaceList.not_nil!.size()
            begin
                eventListenerInterface = JR.cast(JR.cast(@eventListenerInterfaceList.not_nil!.get(index), RawKeyEventListener), RawKeyEventListener)
                self.process(keyCode, deviceId, repeated, eventListenerInterface)
            rescue jexc1 : ::Exception
                jex1 = JR.jthrowable(jexc1)
                if jex1.is_a?(JException)
                    e = jex1.as(JException)
                commonStrings : CommonStrings? = CommonStrings.getInstance()
                @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, EventStrings.getInstance().not_nil!.jf_FIRE_EVENT, e)
                else
                    raise jex1
                end
            end
            index &+= 1
        end
    end
    

    def process(keyCode : Int, deviceId : Int, repeated : Bool, eventListenerInterface : RawKeyEventListener?) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        eventListenerInterface.not_nil!.onEventRaw(keyCode, deviceId, repeated)
    end
    

    def getEventListenerInterfaceListP : BasicArrayList?
        return @eventListenerInterfaceList
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(RawKeyEventHandler.jst_TOTAL_LISTENERS)
        stringBuffer.not_nil!.appendint(@eventListenerInterfaceList.not_nil!.size())
        eventListenerInterface : RawKeyEventListener? = nil
        index : Int32 = 0
        while index < @eventListenerInterfaceList.not_nil!.size()
            begin
                eventListenerInterface = JR.cast(JR.cast(@eventListenerInterfaceList.not_nil!.get(index), RawKeyEventListener), RawKeyEventListener)
                stringBuffer.not_nil!.append(RawKeyEventHandler.jst_LISTENER_LABEL)
                stringBuffer.not_nil!.append(eventListenerInterface.not_nil!.toString())
            rescue jexc2 : ::Exception
                jex2 = JR.jthrowable(jexc2)
                if jex2.is_a?(JException)
                    e = jex2.as(JException)
                commonStrings : CommonStrings? = CommonStrings.getInstance()
                @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_TOSTRING, e)
                else
                    raise jex2
                end
            end
            index &+= 1
        end
        return stringBuffer.not_nil!.toString()
    end
end

