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

class SequenceAI < ArrayAI
    @index : Int32 = 0

    def jf_index : Int32
        @index
    end

    def jf_index=(value : Int32) : Int32
        @index = value
    end

    def self.jst_SEQUENCE_AI : String
        "Sequence AI"
    end
    

    def jinit_SequenceAI(artificialIntelligenceInterfaceArray : Array(ArtificialIntelligenceInterface?)?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_ArrayAI(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        self.getArtificialIntelligenceInterface().not_nil![@index].not_nil!.processAI(allBinaryLayerManager)
    end
    

    def next_ : Nil
        @index &+= 1
        artificialIntelligenceInterface : ArtificialIntelligenceInterface? = self.getSelectedArtificialIntelligenceInterface()
        if artificialIntelligenceInterface.not_nil!.getId() == ArtificialIntelligence.jst_AI_ID
            artificialIntelligenceTransitionInterface : ArtificialIntelligenceTransitionInterface? = JR.cast(artificialIntelligenceInterface, ArtificialIntelligenceTransitionInterface)
            artificialIntelligenceTransitionInterface.not_nil!.transition()
        end
    end
    

    def getIndex : Int32
        return @index
    end
    

    def setIndex(index : Int) : Nil
        index = index.to_i32!
        @index = index
    end
    

    def getSelectedArtificialIntelligenceInterface : ArtificialIntelligenceInterface?
        return self.getArtificialIntelligenceInterface().not_nil![@index]
    end
    

    def getName : String
        return SequenceAI.jst_SEQUENCE_AI
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(super())
        stringBuffer.not_nil!.append(" Selected AI: ")
        stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(self.getSelectedArtificialIntelligenceInterface()))
        return stringBuffer.not_nil!.toString()
    end
end

