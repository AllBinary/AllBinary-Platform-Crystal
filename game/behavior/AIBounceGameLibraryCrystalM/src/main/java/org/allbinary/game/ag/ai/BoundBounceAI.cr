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
# package org.allbinary.game.ag.ai

class BoundBounceAI < BasicAI
    @currentRelativeAngle : Int32 = 0

    def jf_currentRelativeAngle : Int32
        @currentRelativeAngle
    end

    def jf_currentRelativeAngle=(value : Int32) : Int32
        @currentRelativeAngle = value
    end
    @layerBounds : LayerBounds? = nil

    def jf_layerBounds : LayerBounds?
        @layerBounds
    end

    def jf_layerBounds=(value : LayerBounds?) : LayerBounds?
        @layerBounds = value
    end
    @boundsVisitorInterface : BoundsVisitorInterface? = nil

    def jf_boundsVisitorInterface : BoundsVisitorInterface?
        @boundsVisitorInterface
    end

    def jf_boundsVisitorInterface=(value : BoundsVisitorInterface?) : BoundsVisitorInterface?
        @boundsVisitorInterface = value
    end

    # Java field initializers run after the super constructor
    def jfields_BoundBounceAI : Nil
    @currentRelativeAngle = 0
    
    
    end
    

    def jinit_BoundBounceAI(ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?, layerBounds : LayerBounds?, boundsVisitorInterface : BoundsVisitorInterface?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        jfields_BoundBounceAI()
        @layerBounds = layerBounds
        @boundsVisitorInterface = JR.cast(boundsVisitorInterface, BoundsVisitorInterface)
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        rectange : Rectangle? = @layerBounds.not_nil!.getRectangleP()
        graphics.not_nil!.drawRect(rectange.not_nil!.getPoint().not_nil!.getX(), rectange.not_nil!.getPoint().not_nil!.getY(), rectange.not_nil!.getWidth(), rectange.not_nil!.getHeight())
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        @layerBounds.not_nil!.visit(@boundsVisitorInterface)
    end
end

