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
# package org.allbinary.game.combat.destroy

class DestroyedLayerProcessor < BasicLayerProcessor

    @@jst_DESTROYED_LAYER_PROCESSOR : BasicLayerProcessor? = nil

    def self.jst_DESTROYED_LAYER_PROCESSOR : BasicLayerProcessor?
        jclinit
        @@jst_DESTROYED_LAYER_PROCESSOR
    end

    def self.jst_DESTROYED_LAYER_PROCESSOR=(value : BasicLayerProcessor?) : BasicLayerProcessor?
        jclinit
        @@jst_DESTROYED_LAYER_PROCESSOR = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_DESTROYED_LAYER_PROCESSOR = BasicLayerProcessor.jst_NULL_LAYER_PROCESSOR
    end
    

    def self.init : Nil
        DestroyedLayerProcessor.jst_DESTROYED_LAYER_PROCESSOR = DestroyedLayerProcessor.new.jinit_DestroyedLayerProcessor()
    end
    

    def self.getInstance : BasicLayerProcessor?
        return DestroyedLayerProcessor.jst_DESTROYED_LAYER_PROCESSOR
    end
    

    def jinit_DestroyedLayerProcessor : self
        jinit_BasicLayerProcessor()
        self
    end
    

    def process(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        list : BasicArrayList? = self.getList()
        size : Int32 = list.not_nil!.size()
        destroyedEventHandler : DestroyedEventHandler? = DestroyedEventHandler.getInstance()
        destroyEventCircularStaticPool : DestroyEventCircularStaticPool? = DestroyEventCircularStaticPool.getInstance()
        destroyedEvent : DestroyedEvent? = nil
        layerInterface : AllBinaryLayer? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            layerInterfaceCanBeNull : JAny = list.not_nil!.jf_objectArray.not_nil![index]
            if !(layerInterfaceCanBeNull).nil?
                layerInterface = JR.cast(layerInterfaceCanBeNull, AllBinaryLayer)
                allBinaryLayerManager.not_nil!.remove(layerInterface)
                destroyedEvent = destroyEventCircularStaticPool.not_nil!.getInstanceForLayer(layerInterface)
                destroyedEventHandler.not_nil!.fireEvent(destroyedEvent)
            else
                commonStrings : CommonStrings? = CommonStrings.getInstance()
            end
        end
        list.not_nil!.clear()
    end
end

