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

class NumberLayersSequenceAI < SequenceAI
    @numberOfLayersLeft : Int32 = 0

    def jf_numberOfLayersLeft : Int32
        @numberOfLayersLeft
    end

    def jf_numberOfLayersLeft=(value : Int32) : Int32
        @numberOfLayersLeft = value
    end
    

    def jinit_NumberLayersSequenceAI(numberOfEnemiesLeft : Int, artificialIntelligenceInterface : Array(ArtificialIntelligenceInterface?)?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        numberOfEnemiesLeft = numberOfEnemiesLeft.to_i32!
        jinit_SequenceAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        @numberOfLayersLeft = numberOfEnemiesLeft
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        if self.getIndex() == 0
            if allBinaryLayerManager.not_nil!.getSize() < @numberOfLayersLeft
                self.setIndex(1)
            end
        end
        super(allBinaryLayerManager)
    end
end

