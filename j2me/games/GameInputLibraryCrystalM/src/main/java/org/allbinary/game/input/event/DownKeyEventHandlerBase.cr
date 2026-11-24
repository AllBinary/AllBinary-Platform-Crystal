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
# package org.allbinary.game.input.event

class DownKeyEventHandlerBase < BasicEventHandler
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    def self.jst_TOTAL_LISTENERS : String
        " Total PlayerGameInput Listeners: "
    end

    def self.jst_LISTENER_LABEL : String
        " PlayerGameInput Listener: "
    end

    # Java field initializers run after the super constructor
    def jfields_DownKeyEventHandlerBase : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_DownKeyEventHandlerBase : self
        jinit_BasicEventHandler()
        jfields_DownKeyEventHandlerBase()
        self
    end
    

    def addListener(playerGameInput : PlayerGameInput?) : Nil
        if !@list.not_nil!.contains(playerGameInput)
            @list.not_nil!.add(playerGameInput)
        end
    end
    

    def removeAllListeners : Nil
        @list.not_nil!.clear()
        super()
    end
    

    def removeListenerSingleThreaded(eventListenerInterface : EventListenerInterface?) : Nil
        @list.not_nil!.remove(eventListenerInterface)
        super(eventListenerInterface)
    end
    

    def removeListener(eventListenerInterface : EventListenerInterface?) : Nil
        @list.not_nil!.remove(eventListenerInterface)
        super(eventListenerInterface)
    end
    

    def fireEventI(eventObject : JInteger?) : Nil
        index = @list.not_nil!.size()
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            begin
                playerGameInput : PlayerGameInput? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], PlayerGameInput)
                playerGameInput.not_nil!.onDownKey(eventObject)
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
        index = 0
        eventListenerInterface : EventListenerInterface? = nil
        while index < @eventListenerInterfaceList.not_nil!.size()
            begin
                eventListenerInterface = JR.cast(JR.cast(@eventListenerInterfaceList.not_nil!.get(index), EventListenerInterface), EventListenerInterface)
                self.processI(eventObject, eventListenerInterface)
            rescue jexc2 : ::Exception
                jex2 = JR.jthrowable(jexc2)
                if jex2.is_a?(JException)
                    e = jex2.as(JException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, EventStrings.getInstance().not_nil!.jf_FIRE_EVENT, e)
                else
                    raise jex2
                end
            end
            index &+= 1
        end
    end
    

    def fireEventForGameKeyEvent(eventObject : GameKeyEvent?) : Nil
        size : Int32 = @list.not_nil!.size()
        index = size
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            begin
                playerGameInput : PlayerGameInput? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], PlayerGameInput)
                playerGameInput.not_nil!.onDownKeyEvent(eventObject)
            rescue jexc3 : ::Exception
                jex3 = JR.jthrowable(jexc3)
                if jex3.is_a?(JException)
                    e = jex3.as(JException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, EventStrings.getInstance().not_nil!.jf_FIRE_EVENT, e)
                else
                    raise jex3
                end
            end
        end
        index = 0
        eventListenerInterface : EventListenerInterface? = nil
        while index < @eventListenerInterfaceList.not_nil!.size()
            begin
                eventListenerInterface = JR.cast(JR.cast(@eventListenerInterfaceList.not_nil!.get(index), EventListenerInterface), EventListenerInterface)
                self.processEvent(eventObject, eventListenerInterface)
            rescue jexc4 : ::Exception
                jex4 = JR.jthrowable(jexc4)
                if jex4.is_a?(JException)
                    e = jex4.as(JException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, EventStrings.getInstance().not_nil!.jf_FIRE_EVENT, e)
                else
                    raise jex4
                end
            end
            index &+= 1
        end
    end
    

    def processI(eventObject : JInteger?, eventListenerInterface : EventListenerInterface?) : Nil
        downKeyEventListenerInterface : DownKeyEventListenerInterface? = JR.cast(eventListenerInterface, DownKeyEventListenerInterface)
        downKeyEventListenerInterface.not_nil!.onDownKey(eventObject)
    end
    

    def processEvent(eventObject : GameKeyEvent?, eventListenerInterface : EventListenerInterface?) : Nil
        downKeyEventListenerInterface : DownKeyEventListenerInterface? = JR.cast(eventListenerInterface, DownKeyEventListenerInterface)
        downKeyEventListenerInterface.not_nil!.onDownKeyEvent(eventObject)
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(super())
        stringBuffer.not_nil!.append(DownKeyEventHandlerBase.jst_TOTAL_LISTENERS)
        stringBuffer.not_nil!.appendint(@list.not_nil!.size())
        eventListenerInterface : EventListenerInterface? = nil
        index : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < @list.not_nil!.size()
            begin
                eventListenerInterface = JR.cast(JR.cast(@list.not_nil!.get(index), EventListenerInterface), EventListenerInterface)
                stringBuffer.not_nil!.append(DownKeyEventHandlerBase.jst_LISTENER_LABEL)
                stringBuffer.not_nil!.append(eventListenerInterface.not_nil!.toString())
            rescue jexc5 : ::Exception
                jex5 = JR.jthrowable(jexc5)
                if jex5.is_a?(JException)
                    e = jex5.as(JException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_TOSTRING, e)
                else
                    raise jex5
                end
            end
        end
        return stringBuffer.not_nil!.toString()
    end
end

