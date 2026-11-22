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
# package org.allbinary.game.ag.layer.pickup.points

class PointsLayerCircularStaticPool < AllBinaryLayerCircularPool
    

    def jinit_PointsLayerCircularStaticPool(allbinaryLayerFactoryInterface : AllBinaryLayerFactoryInterface?, total : Int) : self
        total = total.to_i32!
        jinit_AllBinaryLayerCircularPool()
        initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total)
        self
    end
    

    def visit(sourceLayerInterface : AllBinaryLayer?) : Nil
        pointsLayer : PointsLayer? = JR.cast(self.getNextInstance(), PointsLayer)
        scoreableInterface : ScoreableInterface? = JR.cast(sourceLayerInterface, ScoreableInterface)
        pointsLayer.not_nil!.visit(scoreableInterface)
    end
end

