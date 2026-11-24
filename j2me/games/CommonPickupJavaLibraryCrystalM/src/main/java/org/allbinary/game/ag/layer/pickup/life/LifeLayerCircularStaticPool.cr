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
# package org.allbinary.game.ag.layer.pickup.life

class LifeLayerCircularStaticPool < AllBinaryLayerCircularPool
    

    def jinit_LifeLayerCircularStaticPool(allbinaryLayerFactoryInterface : AllBinaryLayerFactoryInterface?, total : Int) : self
        total = total.to_i32!
        jinit_AllBinaryLayerCircularPool()
        initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total)
        self
    end
    

    def visit(sourceLayerInterface : AllBinaryLayer?) : Nil
        lifeLayer : LifeLayer? = JR.cast(self.getNextInstance(), LifeLayer)
        lifeInterfaceCompositeInterface : LifeInterfaceCompositeInterface? = JR.cast(sourceLayerInterface, LifeInterfaceCompositeInterface)
        lifeInterface : Life? = JR.cast(lifeInterfaceCompositeInterface.not_nil!.getLifeInterface(), Life)
        lifeLayer.not_nil!.visit(lifeInterface)
    end
end

