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
# package org.allbinary.game.collision

class OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer < LayerProcessor
    

    def jinit_OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer : self
        jinit_LayerProcessor(OptimizedAllBinaryCollisionLayerManager.new.jinit_OptimizedAllBinaryCollisionLayerManager())
        self
    end
    

    def processAt(allBinaryLayerManager : AllBinaryLayerManager?, layerInterface : AllBinaryLayer?, startIndex : Int) : Nil
        startIndex = startIndex.to_i32!
        collidableInterfaceCompositeInterface : CollidableCompositeLayer? = JR.cast(layerInterface, CollidableCompositeLayer)
        collidableBase : CollidableBaseBehavior? = collidableInterfaceCompositeInterface.not_nil!.getCollidableInferface()
        if collidableBase.not_nil!.isCollidable(collidableInterfaceCompositeInterface)
            layerManager : ABLayerManager? = self.getLayerManager()
            size : Int32 = layerManager.not_nil!.getSize()
            collidableInterfaceCompositeInterface2 : CollidableCompositeLayer? = nil
            collidableBase2 : CollidableBaseBehavior? = nil
            index : Int32 = startIndex &+ 1
            jfor1 = false
            while true
                if jfor1
                    index &+= 1
                end
                jfor1 = true
                break unless index < size
                collidableInterfaceCompositeInterface2 = JR.cast(layerManager.not_nil!.getLayerAt(index), CollidableCompositeLayer)
                collidableBase2 = collidableInterfaceCompositeInterface2.not_nil!.getCollidableInferface()
                if collidableBase2.not_nil!.isCollidable(collidableInterfaceCompositeInterface) && collidableBase.not_nil!.isCollision(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                    collidableBase.not_nil!.collide(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                    collidableBase2.not_nil!.collide(collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface)
                end
            end
        end
    end
    

    def isProcessorLayer(layerInterface : AllBinaryLayer?) : Bool
        if layerInterface.not_nil!.implmentsCollidableInterface()
            return true
        else
            return false
        end
        return false
    end
end

