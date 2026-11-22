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

class SpinnerAI < BasicAI
    @isEven : Bool = false

    def jf_isEven : Bool
        @isEven
    end

    def jf_isEven=(value : Bool) : Bool
        @isEven = value
    end
    @direction : Array(Int32)? = nil

    def jf_direction : Array(Int32)?
        @direction
    end

    def jf_direction=(value : Array(Int32)?) : Array(Int32)?
        @direction = value
    end
    

    def jinit_SpinnerAI(direction : Array(Int32)?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        @direction = direction
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        if @isEven
            processKeyAI(@direction.not_nil![0])
            @isEven = false
        else
            processKeyAI(Canvas.jst_KEY_NUM1)
            @isEven = true
        end
    end
end

