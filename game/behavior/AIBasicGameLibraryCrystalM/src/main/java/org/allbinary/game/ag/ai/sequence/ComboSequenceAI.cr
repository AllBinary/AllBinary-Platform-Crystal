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

class ComboSequenceAI < SequenceAI
    

    def jinit_ComboSequenceAI(artificialIntelligenceInterface : Array(ArtificialIntelligenceInterface?)?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_SequenceAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        artificialIntelligenceInterfaceArray : Array(ArtificialIntelligenceInterface?)? = self.getArtificialIntelligenceInterface()
        size : Int32 = artificialIntelligenceInterfaceArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            self.setIndex(index)
            super(allBinaryLayerManager)
        end
    end
end

