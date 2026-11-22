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

class ArrayAI < BasicAI
    @artificialIntelligenceInterfaceArray : Array(ArtificialIntelligenceInterface?)? = nil

    def jf_artificialIntelligenceInterfaceArray : Array(ArtificialIntelligenceInterface?)?
        @artificialIntelligenceInterfaceArray
    end

    def jf_artificialIntelligenceInterfaceArray=(value : Array(ArtificialIntelligenceInterface?)?) : Array(ArtificialIntelligenceInterface?)?
        @artificialIntelligenceInterfaceArray = value
    end
    

    def jinit_ArrayAI(artificialIntelligenceInterface : Array(ArtificialIntelligenceInterface?)?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        @artificialIntelligenceInterfaceArray = artificialIntelligenceInterface
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        size : Int32 = @artificialIntelligenceInterfaceArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            @artificialIntelligenceInterfaceArray.not_nil![index].not_nil!.processAI(allBinaryLayerManager)
        end
    end
    

    def getArtificialIntelligenceInterface : Array(ArtificialIntelligenceInterface?)?
        return @artificialIntelligenceInterfaceArray
    end
end

