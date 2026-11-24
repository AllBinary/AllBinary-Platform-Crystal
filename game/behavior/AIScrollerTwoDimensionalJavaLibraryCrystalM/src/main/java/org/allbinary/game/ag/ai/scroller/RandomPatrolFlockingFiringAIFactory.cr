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
# package org.allbinary.game.ag.ai.scroller

class RandomPatrolFlockingFiringAIFactory < JObject
    include ArtificialIntelligenceInterfaceFactoryInterface

    def jinit_RandomPatrolFlockingFiringAIFactory : self
        self
    end
    

    def getInstance(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : ArtificialIntelligenceInterface?
        artificialIntelligenceInterface : Array(ArtificialIntelligenceInterface?)? = Array(ArtificialIntelligenceInterface?).new(2, nil)
        artificialIntelligenceInterface.not_nil![0] = RandomPatrolAI.new.jinit_RandomPatrolAI(hashtable, ownerLayerInterface, gameInput)
        artificialIntelligenceInterface.not_nil![1] = TimedFireAI.new.jinit_TimedFireAI(1800, ownerLayerInterface, gameInput)
        return JR.cast(ArrayAI.new.jinit_ArrayAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput), ArtificialIntelligenceInterface)
    end
end

