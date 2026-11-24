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
# package org.allbinary.game.collision.layer

class CollidableInterfaceLayerProcessor < LayerProcessor
    

    def jinit_CollidableInterfaceLayerProcessor : self
        jinit_LayerProcessor(CollidableInterfaceLayerManager.new.jinit_CollidableInterfaceLayerManager())
        self
    end
    

    def processAt(allBinaryLayerManager : AllBinaryLayerManager?, layerInterface : AllBinaryLayer?, index : Int) : Nil
        index = index.to_i32!
        collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface? = JR.cast(layerInterface, CollidableInterfaceCompositeInterface)
        if JR.cast(collidableInterfaceCompositeInterface.not_nil!.getCollidableInferface(), CollidableBaseBehavior).not_nil!.isCollidable(JR.cast(collidableInterfaceCompositeInterface, CollidableCompositeLayer))
            AllBinaryCollisionManager.getInstance().not_nil!.process(self.getLayerManager(), collidableInterfaceCompositeInterface, index)
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

