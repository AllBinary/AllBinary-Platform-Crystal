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
# package org.allbinary.game.layer.pickup

module PickedUpLayerInterfaceFactoryInterface
    include JObjectI
end

module JObjectI
    def getPickedUpLayerType(*jargs) : NoReturn
        raise JR.abstractMethod("getPickedUpLayerType")
    end
    def getIconLayer(*jargs) : NoReturn
        raise JR.abstractMethod("getIconLayer")
    end
    def getAnimationInterface(*jargs) : NoReturn
        raise JR.abstractMethod("getAnimationInterface")
    end
end

