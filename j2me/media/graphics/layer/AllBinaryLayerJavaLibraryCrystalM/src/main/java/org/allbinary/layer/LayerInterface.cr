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
# package org.allbinary.layer

module LayerInterface
    include JObjectI
    include NamedInterface
    include PaintableInterface
    include GroupInterfaceCompositeInterface
    include PositionInterface
end

module JObjectI
    def getHeight(*jargs) : NoReturn
        raise JR.abstractMethod("getHeight")
    end
    def getWidth(*jargs) : NoReturn
        raise JR.abstractMethod("getWidth")
    end
    def getHalfHeight(*jargs) : NoReturn
        raise JR.abstractMethod("getHalfHeight")
    end
    def getHalfWidth(*jargs) : NoReturn
        raise JR.abstractMethod("getHalfWidth")
    end
    def getXP(*jargs) : NoReturn
        raise JR.abstractMethod("getXP")
    end
    def getYP(*jargs) : NoReturn
        raise JR.abstractMethod("getYP")
    end
    def getZP(*jargs) : NoReturn
        raise JR.abstractMethod("getZP")
    end
    def getX2(*jargs) : NoReturn
        raise JR.abstractMethod("getX2")
    end
    def getY2(*jargs) : NoReturn
        raise JR.abstractMethod("getY2")
    end
    def getZ2(*jargs) : NoReturn
        raise JR.abstractMethod("getZ2")
    end
    def isVisible(*jargs) : NoReturn
        raise JR.abstractMethod("isVisible")
    end
    def moveDXYZ(*jargs) : NoReturn
        raise JR.abstractMethod("moveDXYZ")
    end
    def setVisible(*jargs) : NoReturn
        raise JR.abstractMethod("setVisible")
    end
    def implmentsTickableInterface(*jargs) : NoReturn
        raise JR.abstractMethod("implmentsTickableInterface")
    end
    def implmentsCollidableInterface(*jargs) : NoReturn
        raise JR.abstractMethod("implmentsCollidableInterface")
    end
    def implmentsGameInputInterface(*jargs) : NoReturn
        raise JR.abstractMethod("implmentsGameInputInterface")
    end
    def implmentsArtificialIntelligenceCompositeInterface(*jargs) : NoReturn
        raise JR.abstractMethod("implmentsArtificialIntelligenceCompositeInterface")
    end
    def getType(*jargs) : NoReturn
        raise JR.abstractMethod("getType")
    end
end

