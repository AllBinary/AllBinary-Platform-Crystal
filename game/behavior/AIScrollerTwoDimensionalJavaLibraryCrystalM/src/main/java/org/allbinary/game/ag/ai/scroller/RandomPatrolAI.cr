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

class RandomPatrolAI < BasePatrolAI
    @changedDirection : Bool = false

    def jf_changedDirection : Bool
        @changedDirection
    end

    def jf_changedDirection=(value : Bool) : Bool
        @changedDirection = value
    end

    # Java field initializers run after the super constructor
    def jfields_RandomPatrolAI : Nil
    @changedDirection = true
    end
    

    def jinit_RandomPatrolAI(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasePatrolAI(hashtable, ownerLayerInterface, gameInput)
        jfields_RandomPatrolAI()
        self.updateRandomDistance()
        self
    end
    

    def updateRandomDistance : Nil
        @currentDistance = MyRandomFactory.getInstance().not_nil!.getAbsoluteNextInt(@maxDistance.not_nil!.intValue())
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        update()
        processKeyAI(@keyDirection)
        if @changedDirection
            processKeyAI(Canvas.jst_KEY_NUM1)
            self.updateRandomDistance()
            @changedDirection = false
        end
    end
    

    def nextDirection : Nil
        super()
        @changedDirection = true
    end
end

