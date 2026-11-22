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
# package org.allbinary.game.layer.drop

class DropLayerProcessor < BasicLayerProcessor

    @@jst_LAYER_PROCESSOR : BasicLayerProcessor? = nil

    def self.jst_LAYER_PROCESSOR : BasicLayerProcessor?
        jclinit
        @@jst_LAYER_PROCESSOR
    end

    def self.jst_LAYER_PROCESSOR=(value : BasicLayerProcessor?) : BasicLayerProcessor?
        jclinit
        @@jst_LAYER_PROCESSOR = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_LAYER_PROCESSOR = DropLayerProcessor.new.jinit_DropLayerProcessor()
    end
    

    def self.getInstance : BasicLayerProcessor?
        return DropLayerProcessor.jst_LAYER_PROCESSOR
    end
    

    def jinit_DropLayerProcessor : self
        jinit_BasicLayerProcessor()
        self
    end
    

    def process(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        list : BasicArrayList? = self.getList()
        size : Int32 = list.not_nil!.size()
        layerInterface : AllBinaryLayer? = nil
        dropLayerInterface : DropLayerInterface? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            layerInterface = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], AllBinaryLayer)
            dropLayerInterface = JR.cast(layerInterface, DropLayerInterface)
            layerInterface = JR.cast(dropLayerInterface.not_nil!.getDroppedLayer(), AllBinaryLayer)
            allBinaryLayerManager.not_nil!.append(layerInterface)
        end
        list.not_nil!.clear()
    end
end

