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

class FlockingAI < BasicAI
    @allowedDistance : Int32 = 0

    def jf_allowedDistance : Int32
        @allowedDistance
    end

    def jf_allowedDistance=(value : Int32) : Int32
        @allowedDistance = value
    end
    

    def jinit_FlockingAI(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        allowedDistance : JInteger? = JR.cast(hashtable.not_nil!.get(BasePatrolAI.jst_MAX_DISTANCE), JInteger)
        @allowedDistance = allowedDistance.not_nil!.intValue()
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        maxDistance : Int32 = 0
        farAllbinaryLayer : AllBinaryLayer? = AllBinaryLayer.jst_NULL_ALLBINARY_LAYER
        groupLayerManagerListener : GroupLayerManagerListener? = GroupLayerManagerListener.getInstance()
        list : BasicArrayList? = groupLayerManagerListener.not_nil!.getList(BasicGroupFactory.getInstance().not_nil!.jf_ENEMY)
        size : Int32 = list.not_nil!.size()
        allBinaryLayer : AllBinaryLayer? = nil
        ownerLayerInterface : AllBinaryLayer? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            allBinaryLayer = JR.cast(list.not_nil!.get(index), AllBinaryLayer)
            if allBinaryLayer.not_nil!.getType() != WeaponLayer.getStaticType()
                distance : Int32 = self.getXYDistance(allBinaryLayer)
                if distance > maxDistance
                    maxDistance = distance
                    farAllbinaryLayer = allBinaryLayer
                    if distance > @allowedDistance
                        break
                    end
                end
            end
        end
        if maxDistance > @allowedDistance
            if farAllbinaryLayer != AllBinaryLayer.jst_NULL_ALLBINARY_LAYER
                ownerLayerInterface = self.getOwnerLayerInterface()
                if farAllbinaryLayer.not_nil!.getXP() < ownerLayerInterface.not_nil!.getXP()
                    self.processKeyAI(Canvas.jst_LEFT)
                elsif farAllbinaryLayer.not_nil!.getXP() > ownerLayerInterface.not_nil!.getXP()
                    self.processKeyAI(Canvas.jst_RIGHT)
                elsif farAllbinaryLayer.not_nil!.getYP() > ownerLayerInterface.not_nil!.getYP()
                    self.processKeyAI(Canvas.jst_UP)
                elsif farAllbinaryLayer.not_nil!.getYP() < ownerLayerInterface.not_nil!.getYP()
                    self.processKeyAI(Canvas.jst_DOWN)
                end
            end
        end
    end
    

    def getXYDistance(allBinaryLayer : AllBinaryLayer?) : Int32
        ownerLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        xTotalDistance : Int32 = (allBinaryLayer.not_nil!.getXP() &+ allBinaryLayer.not_nil!.getHalfWidth()) &- (ownerLayerInterface.not_nil!.getXP() &+ ownerLayerInterface.not_nil!.getHalfWidth())
        yTotalDistance : Int32 = (allBinaryLayer.not_nil!.getYP() &+ allBinaryLayer.not_nil!.getHalfHeight()) &- (ownerLayerInterface.not_nil!.getYP() &+ ownerLayerInterface.not_nil!.getHalfHeight())
        mathUtil : MathUtil? = MathUtil.getInstance()
        totalDistance : Int32 = mathUtil.not_nil!.abs(xTotalDistance) &+ mathUtil.not_nil!.abs(yTotalDistance)
        return totalDistance
    end
end

