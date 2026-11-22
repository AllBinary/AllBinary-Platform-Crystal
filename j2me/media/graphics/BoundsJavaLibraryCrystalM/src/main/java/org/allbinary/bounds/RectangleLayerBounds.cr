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
# package org.allbinary.bounds

class RectangleLayerBounds < LayerBounds
    

    def jinit_RectangleLayerBounds(rectangle : Rectangle?) : self
        jinit_LayerBounds(rectangle)
        self
    end
    

    def visit(boundsVisitorInterface : BoundsVisitorInterface?) : Nil
        if boundsVisitorInterface.not_nil!.getX() > @rectangle.not_nil!.getMaxX()
            boundsVisitorInterface.not_nil!.maxX()
        end
        if boundsVisitorInterface.not_nil!.getY() > @rectangle.not_nil!.getMaxY()
            boundsVisitorInterface.not_nil!.maxY()
        end
        if boundsVisitorInterface.not_nil!.getX() < @rectangle.not_nil!.getPoint().not_nil!.getX()
            boundsVisitorInterface.not_nil!.minX()
        end
        if boundsVisitorInterface.not_nil!.getY() < @rectangle.not_nil!.getPoint().not_nil!.getY()
            boundsVisitorInterface.not_nil!.minY()
        end
    end
end

