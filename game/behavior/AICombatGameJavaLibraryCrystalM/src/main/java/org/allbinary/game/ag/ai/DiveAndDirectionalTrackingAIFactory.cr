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
# package org.allbinary.game.ag.ai

class DiveAndDirectionalTrackingAIFactory < JObject
    include ArtificialIntelligenceInterfaceFactoryInterface

    def jinit_DiveAndDirectionalTrackingAIFactory : self
        self
    end
    

    def getInstance(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : ArtificialIntelligenceInterface?
        visitorCanBeNull : JAny = hashtable.not_nil!.get(BasicAI.jst_AI_VISITOR)
        if (visitorCanBeNull).nil?
            visitorCanBeNull = ThrustAIVisitorFactory.getInstance()
        end
        hashtable2 : ABHashtable? = BasicProbabilityAIDataFactory.new.jinit_BasicProbabilityAIDataFactory().not_nil!.getInstance()
        hashtable2.not_nil!.put(BasicAI.jst_AI_VISITOR, LastKeyAIVisitorFactory.getInstance())
        artificialIntelligenceInterface : ArtificialIntelligenceInterface? = BasicRandomAIFactory.new.jinit_BasicRandomAIFactory().not_nil!.getInstance(hashtable2, ownerLayerInterface, gameInput)
        return DiveAndDirectionalTrackingAI.new.jinit_DiveAndDirectionalTrackingAI(ownerLayerInterface, artificialIntelligenceInterface, gameInput, JR.cast(visitorCanBeNull, Visitor))
    end
end

