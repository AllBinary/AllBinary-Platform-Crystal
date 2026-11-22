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
# package org.allbinary.game.combat.destroy.event

class DestroyEventCircularStaticPool < JObject
    @j_EVENT_POOL : AllBinaryEventCircularPool? = nil

    def jf_EVENT_POOL : AllBinaryEventCircularPool?
        @j_EVENT_POOL
    end

    def jf_EVENT_POOL=(value : AllBinaryEventCircularPool?) : AllBinaryEventCircularPool?
        @j_EVENT_POOL = value
    end

    @@jst_instance : DestroyEventCircularStaticPool? = nil

    def self.jst_instance : DestroyEventCircularStaticPool?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DestroyEventCircularStaticPool?) : DestroyEventCircularStaticPool?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DestroyEventCircularStaticPool.new.jinit_DestroyEventCircularStaticPool()
    end
    

    def self.getInstance : DestroyEventCircularStaticPool?
        return DestroyEventCircularStaticPool.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_DestroyEventCircularStaticPool : Nil
    @j_EVENT_POOL = AllBinaryEventCircularPool.new.jinit_AllBinaryEventCircularPool(20)
    end
    

    def jinit_DestroyEventCircularStaticPool : self
        jfields_DestroyEventCircularStaticPool()
        self
    end
    

    def init(combatGameCanvas : AllBinaryGameCanvas?) : Nil
        @j_EVENT_POOL.not_nil!.initAllBinaryEventCircularPool(DestroyEventFactory.new.jinit_DestroyEventFactory(combatGameCanvas))
    end
    

    def getInstanceForLayer(layerInterface : AllBinaryLayer?) : DestroyedEvent?
        destroyedEvent : DestroyedEvent? = JR.cast(@j_EVENT_POOL.not_nil!.getNextInstance(), DestroyedEvent)
        destroyedEvent.not_nil!.setLayerInterfaceForCircularStaticPool(layerInterface)
        return destroyedEvent
    end
end

