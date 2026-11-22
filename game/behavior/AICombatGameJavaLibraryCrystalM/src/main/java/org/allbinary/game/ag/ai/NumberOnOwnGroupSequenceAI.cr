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

class NumberOnOwnGroupSequenceAI < SequenceAI
    @numberOnSameTeam : Array(JInteger?)? = nil

    def jf_numberOnSameTeam : Array(JInteger?)?
        @numberOnSameTeam
    end

    def jf_numberOnSameTeam=(value : Array(JInteger?)?) : Array(JInteger?)?
        @numberOnSameTeam = value
    end
    

    def jinit_NumberOnOwnGroupSequenceAI(numberOnSameTeam : Array(JInteger?)?, artificialIntelligenceInterface : Array(ArtificialIntelligenceInterface?)?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_SequenceAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        @numberOnSameTeam = numberOnSameTeam
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        layerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        index : Int32 = self.getIndex()
        if @numberOnSameTeam.not_nil!.size > index
            size : Int32 = GroupLayerManagerListener.getInstance().not_nil!.getGroupSizeFromInterface(layerInterface)
            if @numberOnSameTeam.not_nil![index].not_nil!.intValue() > size
                self.next_()
            end
        end
        super(allBinaryLayerManager)
    end
end

