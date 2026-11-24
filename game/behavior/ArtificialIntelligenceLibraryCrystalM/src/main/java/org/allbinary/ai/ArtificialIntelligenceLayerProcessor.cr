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
# package org.allbinary.ai

class ArtificialIntelligenceLayerProcessor < LayerProcessor
    

    def jinit_ArtificialIntelligenceLayerProcessor : self
        jinit_LayerProcessor(ArtificialIntelligenceLayerManager.new.jinit_ArtificialIntelligenceLayerManager())
        self
    end
    

    def processAt(allBinaryLayerManager : AllBinaryLayerManager?, layerInterface : AllBinaryLayer?, index : Int) : Nil
        index = index.to_i32!
        artificialIntelligenceCompositeInterface : ArtificialIntelligenceCompositeInterface? = JR.cast(layerInterface, ArtificialIntelligenceCompositeInterface)
        JR.cast(artificialIntelligenceCompositeInterface.not_nil!.getArtificialIntelligenceInterface(), ArtificialIntelligenceInterface).not_nil!.processAI(allBinaryLayerManager)
    end
    

    def isProcessorLayer(layerInterface : AllBinaryLayer?) : Bool
        if layerInterface.not_nil!.implmentsArtificialIntelligenceCompositeInterface()
            return true
        else
            return false
        end
        return false
    end
end

