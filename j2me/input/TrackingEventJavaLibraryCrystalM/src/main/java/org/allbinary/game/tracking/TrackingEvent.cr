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
# package org.allbinary.game.tracking

class TrackingEvent < AllBinaryEventObject
    @layerInterface : AllBinaryLayer? = nil

    def jf_layerInterface : AllBinaryLayer?
        @layerInterface
    end

    def jf_layerInterface=(value : AllBinaryLayer?) : AllBinaryLayer?
        @layerInterface = value
    end

    # Java field initializers run after the super constructor
    def jfields_TrackingEvent : Nil
    @layerInterface = AllBinaryLayer.jst_NULL_ALLBINARY_LAYER
    end
    

    def jinit_TrackingEvent(allBinaryLayerInterface : JAny) : self
        jinit_AllBinaryEventObject(allBinaryLayerInterface)
        jfields_TrackingEvent()
        if allBinaryLayerInterface != TrackingEventHandler.getInstance()
            self.setLayerInterface(JR.cast(allBinaryLayerInterface, AllBinaryLayer))
        end
        self
    end
    

    def init(anyType : JAny) : Nil
        self.setSource(anyType)
    end
    

    def getLayerInterface : AllBinaryLayer?
        return @layerInterface
    end
    

    def setLayerInterface(layerInterface : AllBinaryLayer?) : Nil
        @layerInterface = layerInterface
    end
    

    def setLayerInterfaceForCircularStaticPool(layerInterface : AllBinaryLayer?) : Nil
        @layerInterface = layerInterface
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("TrackingEvent: \n")
        stringBuffer.not_nil!.append("LayerInterface: ")
        stringBuffer.not_nil!.append(@layerInterface.not_nil!.toString())
        return stringBuffer.not_nil!.toString()
    end
end

