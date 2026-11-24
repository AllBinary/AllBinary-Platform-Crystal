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

class PacePatrolAI < BasePatrolAI
    include TrackingEventListenerInterface
    @trackingList : BasicArrayList? = nil

    def jf_trackingList : BasicArrayList?
        @trackingList
    end

    def jf_trackingList=(value : BasicArrayList?) : BasicArrayList?
        @trackingList = value
    end
    @firingDistance : Int32 = 0

    def jf_firingDistance : Int32
        @firingDistance
    end

    def jf_firingDistance=(value : Int32) : Int32
        @firingDistance = value
    end
    @isFollowLimitedByTerrain : Bool = false

    def jf_isFollowLimitedByTerrain : Bool
        @isFollowLimitedByTerrain
    end

    def jf_isFollowLimitedByTerrain=(value : Bool) : Bool
        @isFollowLimitedByTerrain = value
    end

    # Java field initializers run after the super constructor
    def jfields_PacePatrolAI : Nil
    
    
    @isFollowLimitedByTerrain = false
    end
    

    def jinit_PacePatrolAI(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasePatrolAI(hashtable, ownerLayerInterface, gameInput)
        jfields_PacePatrolAI()
        TrackingEventHandler.getInstance().not_nil!.addListenerInterface(self)
        @trackingList = BasicArrayListD.new.jinit_BasicArrayListD()
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        self.update()
        direction : Direction? = self.setFiringDirectionForTargetIfInRange()
        directionFactory : DirectionFactory? = DirectionFactory.getInstance()
        if direction == directionFactory.not_nil!.jf_LEFT
            if @lastKeyDirection != @keyDirection || !@isFollowLimitedByTerrain
                processKeyAI(Canvas.jst_LEFT)
            end
            @keyDirection = Canvas.jst_LEFT
            @lastKeyDirection = @keyDirection
            @xTotalDistance = 0
            processKeyAI(Canvas.jst_KEY_NUM1)
        elsif direction == directionFactory.not_nil!.jf_RIGHT
            if @lastKeyDirection != @keyDirection || !@isFollowLimitedByTerrain
                processKeyAI(Canvas.jst_RIGHT)
            end
            @keyDirection = Canvas.jst_RIGHT
            @lastKeyDirection = @keyDirection
            @xTotalDistance = 0
            processKeyAI(Canvas.jst_KEY_NUM1)
        else
            processKeyAI(@keyDirection)
        end
    end
    

    def setFiringDirectionForTargetIfInRange : Direction?
        directionFactory : DirectionFactory? = DirectionFactory.getInstance()
        ownerLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        direction : Direction? = directionFactory.not_nil!.jf_NOT_BORDERED_WITH
        lastTrackingEvent : TrackingEvent? = nil
        lastTrackingLayerInterface : LayerInterface? = nil
        directionCompositeInterface : DirectionCompositeInterface? = nil
        size : Int32 = @trackingList.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            lastTrackingEvent = JR.cast(@trackingList.not_nil!.get(0), TrackingEvent)
            lastTrackingLayerInterface = JR.cast(lastTrackingEvent.not_nil!.getLayerInterface(), LayerInterface)
            x : Int32 = (lastTrackingLayerInterface.not_nil!.getXP()).as(Int32)
            y : Int32 = (lastTrackingLayerInterface.not_nil!.getYP()).as(Int32)
            yDistance : Int32 = ownerLayerInterface.not_nil!.getYP() &- y &- ownerLayerInterface.not_nil!.getHeight()
            xDistance : Int32 = ownerLayerInterface.not_nil!.getXP() &- x &- ownerLayerInterface.not_nil!.getWidth()
            absXDistance : Int32 = JMath.abs(xDistance)
            absYDistance : Int32 = JMath.abs(yDistance)
            if absYDistance <= 100
                if absXDistance < self.getFiringDistance().tdiv(2)
                    directionCompositeInterface = JR.cast(JR.cast(self.getOwnerLayerInterface(), DirectionCompositeInterface), DirectionCompositeInterface)
                    if xDistance < 0 && JR.cast(directionCompositeInterface.not_nil!.getDirection(), Direction) == directionFactory.not_nil!.jf_RIGHT
                        direction = directionFactory.not_nil!.jf_RIGHT
                    elsif xDistance > 0 && JR.cast(directionCompositeInterface.not_nil!.getDirection(), Direction) == directionFactory.not_nil!.jf_LEFT
                        direction = directionFactory.not_nil!.jf_LEFT
                    end
                end
            end
        end
        return direction
    end
    

    def disable : Nil
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onMovement(trackingEvent : TrackingEvent?) : Nil
        @trackingList.not_nil!.clear()
        @trackingList.not_nil!.add(trackingEvent)
    end
    

    def getFiringDistance : Int32
        return @firingDistance
    end
    

    def setFiringDistance(firingDistance : Int) : Nil
        firingDistance = firingDistance.to_i32!
        @firingDistance = firingDistance
    end
end

