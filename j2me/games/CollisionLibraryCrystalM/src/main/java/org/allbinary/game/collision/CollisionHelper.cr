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

class CollisionHelper < JObject
    @sourceLayerInterface : AllBinaryLayer? = nil

    def jf_sourceLayerInterface : AllBinaryLayer?
        @sourceLayerInterface
    end

    def jf_sourceLayerInterface=(value : AllBinaryLayer?) : AllBinaryLayer?
        @sourceLayerInterface = value
    end
    

    def jinit_CollisionHelper(sourceLayerInterface : AllBinaryLayer?) : self
        @sourceLayerInterface = sourceLayerInterface
        self
    end
    

    def isCollidable(layerInterface : CollidableCompositeLayer?) : Bool
        return true
    end
    

    def getOwnerLayerInterface : AllBinaryLayer?
        return @sourceLayerInterface
    end
    

    def setOwnerLayerInterface(sourceLayerInterface : AllBinaryLayer?) : Nil
        @sourceLayerInterface = sourceLayerInterface
    end
end

