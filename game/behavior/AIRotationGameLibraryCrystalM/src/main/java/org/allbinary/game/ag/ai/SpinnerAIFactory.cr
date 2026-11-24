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

class SpinnerAIFactory < JObject
    include ArtificialIntelligenceInterfaceFactoryInterface

    def jinit_SpinnerAIFactory : self
        self
    end
    

    def getInstance(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : ArtificialIntelligenceInterface?
        direction : Array(Int32)? = [Canvas.jst_LEFT] of Int32
        return JR.cast(SpinnerAI.new.jinit_SpinnerAI(direction, ownerLayerInterface, gameInput), ArtificialIntelligenceInterface)
    end
end

