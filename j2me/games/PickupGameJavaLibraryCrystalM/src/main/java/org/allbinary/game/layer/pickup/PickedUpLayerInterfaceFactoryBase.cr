# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

class PickedUpLayerInterfaceFactoryBase < JObject
    include PickedUpLayerInterfaceFactoryInterface

    @@jst_NULL_PICKED_UP_LAYER_FACTORY_BASE : PickedUpLayerInterfaceFactoryBase? = nil

    def self.jst_NULL_PICKED_UP_LAYER_FACTORY_BASE : PickedUpLayerInterfaceFactoryBase?
        jclinit
        @@jst_NULL_PICKED_UP_LAYER_FACTORY_BASE
    end

    def self.jst_NULL_PICKED_UP_LAYER_FACTORY_BASE=(value : PickedUpLayerInterfaceFactoryBase?) : PickedUpLayerInterfaceFactoryBase?
        jclinit
        @@jst_NULL_PICKED_UP_LAYER_FACTORY_BASE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_PICKED_UP_LAYER_FACTORY_BASE = PickedUpLayerInterfaceFactoryBase.new.jinit_PickedUpLayerInterfaceFactoryBase()
    end

    def jinit_PickedUpLayerInterfaceFactoryBase : self
        self
    end
    

    def getIconLayer : AllBinaryLayer?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getAnimationInterface : Animation?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getPickedUpLayerType : PickedUpLayerType?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
end

