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
# package org.allbinary.game.tracking

class TrackingEventCircularStaticPool < JObject
    @j_EVENT_POOL : AllBinaryEventCircularPool? = nil

    def jf_EVENT_POOL : AllBinaryEventCircularPool?
        @j_EVENT_POOL
    end

    def jf_EVENT_POOL=(value : AllBinaryEventCircularPool?) : AllBinaryEventCircularPool?
        @j_EVENT_POOL = value
    end

    @@jst_instance : TrackingEventCircularStaticPool? = nil

    def self.jst_instance : TrackingEventCircularStaticPool?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TrackingEventCircularStaticPool?) : TrackingEventCircularStaticPool?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TrackingEventCircularStaticPool.new.jinit_TrackingEventCircularStaticPool()
    end
    

    def self.getInstance : TrackingEventCircularStaticPool?
        return TrackingEventCircularStaticPool.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_TrackingEventCircularStaticPool : Nil
    @j_EVENT_POOL = AllBinaryEventCircularPool.new.jinit_AllBinaryEventCircularPool(20)
    end

    def jinit_TrackingEventCircularStaticPool : self
        jfields_TrackingEventCircularStaticPool()
        self
    end
    

    def init : Nil
        @j_EVENT_POOL.not_nil!.initAllBinaryEventCircularPool(TrackingEventFactory.new.jinit_TrackingEventFactory())
    end
    

    def getNextInstance(layerInterface : AllBinaryLayer?) : TrackingEvent?
        trackingEvent : TrackingEvent? = JR.cast(@j_EVENT_POOL.not_nil!.getNextInstance(), TrackingEvent)
        trackingEvent.not_nil!.setLayerInterfaceForCircularStaticPool(layerInterface)
        return trackingEvent
    end
end

