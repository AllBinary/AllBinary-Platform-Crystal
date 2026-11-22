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

class TerrainPatrolAI < PacePatrolAI
    @terrainEventListener : TerrainEventListener? = nil

    def jf_terrainEventListener : TerrainEventListener?
        @terrainEventListener
    end

    def jf_terrainEventListener=(value : TerrainEventListener?) : TerrainEventListener?
        @terrainEventListener = value
    end
    @j_DOWN : Angle? = nil

    def jf_DOWN : Angle?
        @j_DOWN
    end

    def jf_DOWN=(value : Angle?) : Angle?
        @j_DOWN = value
    end
    @j_CLIFF : BasicTerrainInfo? = nil

    def jf_CLIFF : BasicTerrainInfo?
        @j_CLIFF
    end

    def jf_CLIFF=(value : BasicTerrainInfo?) : BasicTerrainInfo?
        @j_CLIFF = value
    end

    # Java field initializers run after the super constructor
    def jfields_TerrainPatrolAI : Nil
    @terrainEventListener = TerrainEventListener.new.jinit_TerrainEventListener()
    @j_DOWN = AngleFactory.getInstance().not_nil!.jf_DOWN
    @j_CLIFF = BasicTerrainInfo.new.jinit_BasicTerrainInfo(@j_DOWN)
    end
    

    def jinit_TerrainPatrolAI(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_PacePatrolAI(hashtable, ownerLayerInterface, gameInput)
        jfields_TerrainPatrolAI()
        TerrainEventHandler.getInstance(ownerLayerInterface).not_nil!.addListener(@terrainEventListener)
        @terrainEventListener.not_nil!.onTerrainEvent(TerrainEventCircularStaticPool.getInstance().not_nil!.getNext(@j_CLIFF))
        self
    end
    

    def update : Nil
        super()
        self.changeDirectionIfCliffReached()
    end
    

    def changeDirectionIfCliffReached : Nil
        list : BasicArrayList? = @terrainEventListener.not_nil!.getList()
        size : Int32 = list.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            terrainEvent : TerrainEvent? = JR.cast(list.not_nil!.removeAt(index), TerrainEvent)
            basicTerrainInfo : BasicTerrainInfo? = terrainEvent.not_nil!.getBasicTerrainInfo()
            angle : Angle? = basicTerrainInfo.not_nil!.getAngle()
            if angle == @j_DOWN
                self.nextDirection()
                if !@isFollowLimitedByTerrain
                    @logUtil.not_nil!.putF("Following Limited", self, "onTerrainEvent")
                    @isFollowLimitedByTerrain = true
                end
            end
        end
    end
end

