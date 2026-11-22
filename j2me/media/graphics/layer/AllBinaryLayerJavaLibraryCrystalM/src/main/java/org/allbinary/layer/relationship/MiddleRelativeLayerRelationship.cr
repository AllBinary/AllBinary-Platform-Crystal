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
# package org.allbinary.layer.relationship

class MiddleRelativeLayerRelationship < RelativeLayerRelationship
    

    def jinit_MiddleRelativeLayerRelationship(layer : AllBinaryLayer?) : self
        jinit_RelativeLayerRelationship(layer, PointFactory.getInstance().not_nil!.createXY(layer.not_nil!.getHalfWidth(), layer.not_nil!.getHalfHeight()), BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance())
        self
    end
end

