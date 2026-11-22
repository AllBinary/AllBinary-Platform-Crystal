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

class SingleLayerLayerProcessor < LayerProcessor
    

    def jinit_SingleLayerLayerProcessor : self
        jinit_LayerProcessor(SingleLayerLayerManager.new.jinit_SingleLayerLayerManager())
        self
    end
    

    def process(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        layerManager : ABLayerManager? = self.getLayerManager()
        self.processAt(allBinaryLayerManager, JR.cast(layerManager.not_nil!.getLayerAt(0), AllBinaryLayer), 0)
    end
end

