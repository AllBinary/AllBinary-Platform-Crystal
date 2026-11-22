# Generated Code Do Not Modify
# package org.allbinary.game.terrain

class TerrainEventListener < JObject
    include TerrainEventListenerInterface
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    # Java field initializers run after the super constructor
    def jfields_TerrainEventListener : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end

    def jinit_TerrainEventListener : self
        jfields_TerrainEventListener()
        self
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onTerrainEvent(terrainEvent : TerrainEvent?) : Nil
        @list.not_nil!.clear()
        @list.not_nil!.add(terrainEvent)
    end
    

    def getList : BasicArrayList?
        return @list
    end
end

