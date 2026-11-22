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
# package org.allbinary.layer

class LayerProcessor < JObject
    include LayerProcessorInterface
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @layerManager : ABLayerManager? = nil

    def jf_layerManager : ABLayerManager?
        @layerManager
    end

    def jf_layerManager=(value : ABLayerManager?) : ABLayerManager?
        @layerManager = value
    end

    # Java field initializers run after the super constructor
    def jfields_LayerProcessor : Nil
    @commonStrings = CommonStrings.getInstance()
    
    end
    

    def jinit_LayerProcessor(layerManager : ABLayerManager?) : self
        jfields_LayerProcessor()
        @layerManager = layerManager
        self
    end
    

    def processAt(allBinaryLayerManager : AllBinaryLayerManager?, layerInterface : AllBinaryLayer?, index : Int) : Nil
        index = index.to_i32!
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def isProcessorLayer(layerInterface : AllBinaryLayer?) : Bool
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def getLayerManager : ABLayerManager?
        return @layerManager
    end
    

    def process(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        layerManager : ABLayerManager? = self.getLayerManager()
        size : Int32 = layerManager.not_nil!.getSize()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            self.processAt(allBinaryLayerManager, JR.cast(layerManager.not_nil!.getLayerAt(index), AllBinaryLayer), index)
        end
    end
end

