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
# package org.allbinary.layer.event

class LayerManagerEvent < AllBinaryEventObject
    @layerInterface : AllBinaryLayer? = nil

    def jf_layerInterface : AllBinaryLayer?
        @layerInterface
    end

    def jf_layerInterface=(value : AllBinaryLayer?) : AllBinaryLayer?
        @layerInterface = value
    end
    @crud : String = ""

    def jf_crud : String
        @crud
    end

    def jf_crud=(value : String) : String
        @crud = value
    end

    # Java field initializers run after the super constructor
    def jfields_LayerManagerEvent : Nil
    @layerInterface = AllBinaryLayer.jst_NULL_ALLBINARY_LAYER
    
    end
    

    def jinit_LayerManagerEvent(layerManager : ABLayerManager?, crud : String) : self
        jinit_AllBinaryEventObject(layerManager)
        jfields_LayerManagerEvent()
        @crud = crud
        self
    end
    

    def getLayerInterface : AllBinaryLayer?
        return @layerInterface
    end
    

    def setLayerInterface(layerInterface : AllBinaryLayer?) : Nil
        @layerInterface = layerInterface
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("LayerManagerEvent: \n")
        stringBuffer.not_nil!.append("LayerInterface: ")
        stringBuffer.not_nil!.append(self.getLayerInterface().not_nil!.toString())
        stringBuffer.not_nil!.append("\nCRUD: ")
        stringBuffer.not_nil!.append(@crud)
        return stringBuffer.not_nil!.toString()
    end
end

