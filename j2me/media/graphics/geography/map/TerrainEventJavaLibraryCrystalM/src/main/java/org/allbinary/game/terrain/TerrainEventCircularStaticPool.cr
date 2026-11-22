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

class TerrainEventCircularStaticPool < JObject
    @j_EVENT_POOL : AllBinaryEventCircularPool? = nil

    def jf_EVENT_POOL : AllBinaryEventCircularPool?
        @j_EVENT_POOL
    end

    def jf_EVENT_POOL=(value : AllBinaryEventCircularPool?) : AllBinaryEventCircularPool?
        @j_EVENT_POOL = value
    end

    @@jst_instance : TerrainEventCircularStaticPool? = nil

    def self.jst_instance : TerrainEventCircularStaticPool?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TerrainEventCircularStaticPool?) : TerrainEventCircularStaticPool?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TerrainEventCircularStaticPool.new.jinit_TerrainEventCircularStaticPool()
    end
    

    def self.getInstance : TerrainEventCircularStaticPool?
        return TerrainEventCircularStaticPool.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_TerrainEventCircularStaticPool : Nil
    @j_EVENT_POOL = AllBinaryEventCircularPool.new.jinit_AllBinaryEventCircularPool(20)
    end

    def jinit_TerrainEventCircularStaticPool : self
        jfields_TerrainEventCircularStaticPool()
        self
    end
    

    def init : Nil
        @j_EVENT_POOL.not_nil!.initAllBinaryEventCircularPool(TerrainEventFactory.new.jinit_TerrainEventFactory())
    end
    

    def getNext(basicTerrainInfo : BasicTerrainInfo?) : TerrainEvent?
        trackingEvent : TerrainEvent? = JR.cast(@j_EVENT_POOL.not_nil!.getNextInstance(), TerrainEvent)
        trackingEvent.not_nil!.setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo)
        return trackingEvent
    end
end

