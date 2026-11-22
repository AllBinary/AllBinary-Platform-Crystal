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

class DownGameKeyEventHandlerBase < BasicEventHandler
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
    def jfields_DownGameKeyEventHandlerBase : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_DownGameKeyEventHandlerBase : self
        jinit_BasicEventHandler()
        jfields_DownGameKeyEventHandlerBase()
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
    

    def fireEvent(eventObject : AllBinaryEventObject?) : Nil
        index : Int32 = @list.not_nil!.size()
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            begin
                playerGameInput : PlayerGameInput? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], PlayerGameInput)
                playerGameInput.not_nil!.onDownGameKeyEvent(JR.cast(eventObject, GameKeyEvent))
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
        downGameKeyEventListenerInterface : DownGameKeyEventListenerInterface? = JR.cast(eventListenerInterface, DownGameKeyEventListenerInterface)
        downGameKeyEventListenerInterface.not_nil!.onDownGameKeyEvent(JR.cast(eventObject, GameKeyEvent))
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(super())
        stringBuffer.not_nil!.append(DownGameKeyEventHandlerBase.jst_TOTAL_LISTENERS)
        stringBuffer.not_nil!.appendint(@list.not_nil!.size())
        eventListenerInterface : EventListenerInterface? = nil
        size : Int32 = @list.not_nil!.size()
        index : Int32 = 0
        while index < size
            begin
                eventListenerInterface = JR.cast(@list.not_nil!.get(index), EventListenerInterface)
                stringBuffer.not_nil!.append(DownGameKeyEventHandlerBase.jst_LISTENER_LABEL)
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

