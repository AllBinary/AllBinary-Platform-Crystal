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
# package org.allbinary.layer.event

class LayerManagerEventHandler < BasicEventHandler
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @j_CREATE : String = ""

    def jf_CREATE : String
        @j_CREATE
    end

    def jf_CREATE=(value : String) : String
        @j_CREATE = value
    end
    @j_DELETE : String = ""

    def jf_DELETE : String
        @j_DELETE
    end

    def jf_DELETE=(value : String) : String
        @j_DELETE = value
    end

    @@jst_instance : LayerManagerEventHandler? = nil

    def self.jst_instance : LayerManagerEventHandler?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LayerManagerEventHandler?) : LayerManagerEventHandler?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LayerManagerEventHandler.new.jinit_LayerManagerEventHandler()
    end
    

    def self.getInstance : LayerManagerEventHandler?
        return LayerManagerEventHandler.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LayerManagerEventHandler : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    @j_CREATE = "Create"
    @j_DELETE = "Delete"
    end
    

    def jinit_LayerManagerEventHandler : self
        jinit_BasicEventHandler()
        jfields_LayerManagerEventHandler()
        self
    end
    

    def addListener(layerManagerEventListener : LayerManagerEventListener?) : Nil
        if !@list.not_nil!.contains(layerManagerEventListener)
            @list.not_nil!.add(layerManagerEventListener)
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
                layerManagerEventListener : LayerManagerEventListener? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], LayerManagerEventListener)
                layerManagerEventListener.not_nil!.onCreateLayerManagerEvent(JR.cast(eventObject, LayerManagerEvent))
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
    

    def fireDeleteEvent(eventObject : AllBinaryEventObject?) : Nil
        index : Int32 = @list.not_nil!.size()
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            begin
                layerManagerEventListener : LayerManagerEventListener? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], LayerManagerEventListener)
                layerManagerEventListener.not_nil!.onDeleteLayerManagerEvent(JR.cast(eventObject, LayerManagerEvent))
            rescue jexc2 : ::Exception
                jex2 = JR.jthrowable(jexc2)
                if jex2.is_a?(JException)
                    e = jex2.as(JException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, EventStrings.getInstance().not_nil!.jf_FIRE_EVENT, e)
                else
                    raise jex2
                end
            end
        end
        eventListenerInterfaceList : BasicArrayList? = @eventListenerInterfaceList
        eventListenerInterface : EventListenerInterface? = nil
        layerManagerEventListenerInterface : LayerManagerEventListenerInterface? = nil
        listenerIndex : Int32 = 0
        while listenerIndex < eventListenerInterfaceList.not_nil!.size()
            begin
                eventListenerInterface = JR.cast(JR.cast(eventListenerInterfaceList.not_nil!.jf_objectArray.not_nil![listenerIndex], EventListenerInterface), EventListenerInterface)
                layerManagerEventListenerInterface = JR.cast((JR.cast(eventListenerInterface, LayerManagerEventListenerInterface)), LayerManagerEventListenerInterface)
                layerManagerEventListenerInterface.not_nil!.onDeleteLayerManagerEvent(JR.cast(eventObject, LayerManagerEvent))
            rescue jexc3 : ::Exception
                jex3 = JR.jthrowable(jexc3)
                if jex3.is_a?(JException)
                    e = jex3.as(JException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, EventStrings.getInstance().not_nil!.jf_FIRE_EVENT, e)
                else
                    raise jex3
                end
            end
            listenerIndex &+= 1
        end
    end
    

    def process(eventObject : AllBinaryEventObject?, eventListenerInterface : EventListenerInterface?) : Nil
        layerManagerEventListenerInterface : LayerManagerEventListenerInterface? = (JR.cast(eventListenerInterface, LayerManagerEventListenerInterface))
        layerManagerEventListenerInterface.not_nil!.onCreateLayerManagerEvent(JR.cast(eventObject, LayerManagerEvent))
    end
end

