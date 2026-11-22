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

class PickedUpLayerInterfaceFactory < PickedUpLayerInterfaceFactoryBase
    @pickedUpLayerType : PickedUpLayerType? = nil

    def jf_pickedUpLayerType : PickedUpLayerType?
        @pickedUpLayerType
    end

    def jf_pickedUpLayerType=(value : PickedUpLayerType?) : PickedUpLayerType?
        @pickedUpLayerType = value
    end
    @iconLayer : IconLayer? = nil

    def jf_iconLayer : IconLayer?
        @iconLayer
    end

    def jf_iconLayer=(value : IconLayer?) : IconLayer?
        @iconLayer = value
    end
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end
    

    def jinit_PickedUpLayerInterfaceFactory(pickeUpLayerType : PickedUpLayerType?, iconLayer : IconLayer?, animationInterface : Animation?) : self
        jinit_PickedUpLayerInterfaceFactoryBase()
        @pickedUpLayerType = pickeUpLayerType
        @animationInterface = animationInterface
        @iconLayer = iconLayer
        self
    end
    

    def getIconLayer : AllBinaryLayer?
        return @iconLayer
    end
    

    def getAnimationInterface : Animation?
        return @animationInterface
    end
    

    def getPickedUpLayerType : PickedUpLayerType?
        return @pickedUpLayerType
    end
end

