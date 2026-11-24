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

class PacePatrolAIFactory < JObject
    include ArtificialIntelligenceInterfaceFactoryInterface

    def jinit_PacePatrolAIFactory : self
        self
    end
    

    def getInstance(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : ArtificialIntelligenceInterface?
        hashtable.not_nil!.put(BasePatrolAI.jst_MAX_DISTANCE, SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(220))
        return JR.cast(PacePatrolAI.new.jinit_PacePatrolAI(hashtable, ownerLayerInterface, gameInput), ArtificialIntelligenceInterface)
    end
end

