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
# package org.allbinary.game.layer

class BasicLayerPlacement < JObject
    @layerType : LayerPlacementType? = nil

    def jf_layerType : LayerPlacementType?
        @layerType
    end

    def jf_layerType=(value : LayerPlacementType?) : LayerPlacementType?
        @layerType = value
    end
    @width : Int32 = 0

    def jf_width : Int32
        @width
    end

    def jf_width=(value : Int32) : Int32
        @width = value
    end
    @height : Int32 = 0

    def jf_height : Int32
        @height
    end

    def jf_height=(value : Int32) : Int32
        @height = value
    end
    

    def jinit_BasicLayerPlacement(layerType : LayerPlacementType?, width : Int, height : Int) : self
        width = width.to_i32!
        height = height.to_i32!
        @layerType = layerType
        @width = width
        @height = height
        self
    end
    

    def getWidth : Int32
        return @width
    end
    

    def getHeight : Int32
        return @height
    end
    

    def getLayerType : LayerPlacementType?
        return @layerType
    end
    

    def setLayerType(layerType : LayerPlacementType?) : Nil
        @layerType = layerType
    end
end

