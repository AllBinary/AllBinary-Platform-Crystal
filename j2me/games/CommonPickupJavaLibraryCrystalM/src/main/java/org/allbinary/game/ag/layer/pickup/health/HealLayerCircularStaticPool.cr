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
# package org.allbinary.game.ag.layer.pickup.health

class HealLayerCircularStaticPool < AllBinaryLayerCircularPool
    

    def jinit_HealLayerCircularStaticPool(allbinaryLayerFactoryInterface : AllBinaryLayerFactoryInterface?, total : Int) : self
        total = total.to_i32!
        jinit_AllBinaryLayerCircularPool()
        initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total)
        self
    end
    

    def visit(sourceLayerInterface : AllBinaryLayer?) : Nil
        healLayer : HealLayer? = JR.cast(self.getNextInstance(), HealLayer)
        healthInterfaceCompositeInterface : HealthInterfaceCompositeInterface? = JR.cast(sourceLayerInterface, HealthInterfaceCompositeInterface)
        healthInterface : HealthInterface? = JR.cast(healthInterfaceCompositeInterface.not_nil!.getHealthInterface(), Health)
        healLayer.not_nil!.visit(healthInterface)
    end
end

