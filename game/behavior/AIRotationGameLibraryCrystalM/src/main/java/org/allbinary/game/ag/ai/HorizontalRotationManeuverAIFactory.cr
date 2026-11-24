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

class HorizontalRotationManeuverAIFactory < JObject
    include ArtificialIntelligenceInterfaceFactoryInterface

    def jinit_HorizontalRotationManeuverAIFactory : self
        self
    end
    

    def getInstance(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : ArtificialIntelligenceInterface?
        return JR.cast(HorizontaRotationManeuverAI.new.jinit_HorizontaRotationManeuverAI(ownerLayerInterface, gameInput), ArtificialIntelligenceInterface)
    end
end

