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
# package org.allbinary.game.terrain

class TerrainEventHandler < BasicEventHandler
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_hashtable : ABHashtable? = nil

    def self.jst_hashtable : ABHashtable?
        jclinit
        @@jst_hashtable
    end

    def self.jst_hashtable=(value : ABHashtable?) : ABHashtable?
        jclinit
        @@jst_hashtable = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_hashtable = StdUtil.getInstance().not_nil!.jf_NULL_TABLE
    end
    

    def self.init : Nil
        TerrainEventHandler.jst_hashtable = StdUtil.getInstance().not_nil!.createHashtable()
    end
    

    def self.getInstance(anyType : JAny) : TerrainEventHandler?
        eventHandlerCanBeNull : JAny = TerrainEventHandler.jst_hashtable.not_nil!.get(anyType)
        if (eventHandlerCanBeNull).nil?
            eventHandlerCanBeNull = TerrainEventHandler.new.jinit_TerrainEventHandler()
            TerrainEventHandler.jst_hashtable.not_nil!.put(anyType, eventHandlerCanBeNull)
        end
        return JR.cast(eventHandlerCanBeNull, TerrainEventHandler)
    end

    # Java field initializers run after the super constructor
    def jfields_TerrainEventHandler : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_TerrainEventHandler : self
        jinit_BasicEventHandler()
        jfields_TerrainEventHandler()
        self
    end
    

    def addListener(terrainEventListener : TerrainEventListener?) : Nil
        if !@list.not_nil!.contains(terrainEventListener)
            @list.not_nil!.add(terrainEventListener)
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
                terrainEventListener : TerrainEventListener? = JR.cast(@list.not_nil!.get(index), TerrainEventListener)
                terrainEventListener.not_nil!.onTerrainEvent(JR.cast(eventObject, TerrainEvent))
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
        terrainEventListenerInterface : TerrainEventListenerInterface? = JR.cast(eventListenerInterface, TerrainEventListenerInterface)
        terrainEventListenerInterface.not_nil!.onTerrainEvent(JR.cast(eventObject, TerrainEvent))
    end
end

