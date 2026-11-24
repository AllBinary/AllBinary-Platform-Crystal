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
# package org.allbinary.game.ag.ai.sequence

class NumberLayersSequenceAIFactory < JObject

    def jinit_NumberLayersSequenceAIFactory : self
        self
    end
    

    def getInstance(numberOfEnemiesLeft : Int, artificialIntelligenceInterface : Array(ArtificialIntelligenceInterface?)?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : ArtificialIntelligenceInterface?
        numberOfEnemiesLeft = numberOfEnemiesLeft.to_i32!
        return JR.cast(NumberLayersSequenceAI.new.jinit_NumberLayersSequenceAI(numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput), ArtificialIntelligenceInterface)
    end
end

