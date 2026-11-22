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

class PointsLayerFactory < JObject
    include AllBinaryLayerFactoryInterface
    @points : Int32 = 0

    def jf_points : Int32
        @points
    end

    def jf_points=(value : Int32) : Int32
        @points = value
    end
    

    def jinit_PointsLayerFactory(points : Int) : self
        points = points.to_i32!
        @points = points
        self
    end
    

    def getInstance : AllBinaryLayer?
        return PointsLayer.new.jinit_PointsLayer(@points)
    end
end

