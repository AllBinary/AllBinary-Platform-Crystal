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

class UpKeyEventHandlerBase < BasicEventHandler
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
    def jfields_UpKeyEventHandlerBase : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_UpKeyEventHandlerBase : self
        jinit_BasicEventHandler()
        jfields_UpKeyEventHandlerBase()
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
    

    def fireEventForInteger(eventObject : JInteger?) : Nil
        index = @list.not_nil!.size()
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            begin
                playerGameInput : PlayerGameInput? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], PlayerGameInput)
                playerGameInput.not_nil!.onUpKeyEvent(eventObject)
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
                self.processForInteger(eventObject, eventListenerInterface)
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
    

    def processForInteger(eventObject : JInteger?, eventListenerInterface : EventListenerInterface?) : Nil
        upKeyEventListenerInterface : UpKeyEventListenerInterface? = JR.cast(eventListenerInterface, UpKeyEventListenerInterface)
        upKeyEventListenerInterface.not_nil!.onUpKeyEvent(eventObject)
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(super())
        stringBuffer.not_nil!.append(UpKeyEventHandlerBase.jst_TOTAL_LISTENERS)
        stringBuffer.not_nil!.appendint(@list.not_nil!.size())
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < @list.not_nil!.size()
            begin
                eventListenerInterface : EventListenerInterface? = JR.cast(@list.not_nil!.get(index), EventListenerInterface)
                stringBuffer.not_nil!.append(UpKeyEventHandlerBase.jst_LISTENER_LABEL)
                stringBuffer.not_nil!.append(eventListenerInterface.not_nil!.toString())
            rescue jexc3 : ::Exception
                jex3 = JR.jthrowable(jexc3)
                if jex3.is_a?(JException)
                    e = jex3.as(JException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_TOSTRING, e)
                else
                    raise jex3
                end
            end
        end
        return stringBuffer.not_nil!.toString()
    end
end

