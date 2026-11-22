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
# package org.allbinary.game.combat.destroy.event

class DestroyedEvent < AllBinaryEventObject
    @allBinaryGameCanvas : AllBinaryGameCanvas? = nil

    def jf_allBinaryGameCanvas : AllBinaryGameCanvas?
        @allBinaryGameCanvas
    end

    def jf_allBinaryGameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @allBinaryGameCanvas = value
    end
    @allBinaryLayerInterface : AllBinaryLayer? = nil

    def jf_allBinaryLayerInterface : AllBinaryLayer?
        @allBinaryLayerInterface
    end

    def jf_allBinaryLayerInterface=(value : AllBinaryLayer?) : AllBinaryLayer?
        @allBinaryLayerInterface = value
    end

    # Java field initializers run after the super constructor
    def jfields_DestroyedEvent : Nil
    @allBinaryGameCanvas = NullGameCanvas.getInstance()
    @allBinaryLayerInterface = AllBinaryLayer.jst_NULL_ALLBINARY_LAYER
    end
    

    def jinit_DestroyedEvent(combatGameCanvas : AllBinaryGameCanvas?) : self
        jinit_AllBinaryEventObject(DestroyedEventHandler.getInstance())
        jfields_DestroyedEvent()
        self.setAllBinaryGameCanvas(combatGameCanvas)
        self
    end
    

    def getAllBinaryGameCanvas : AllBinaryGameCanvas?
        return @allBinaryGameCanvas
    end
    

    def getLayerInterface : AllBinaryLayer?
        return @allBinaryLayerInterface
    end
    

    def setAllBinaryGameCanvas(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        @allBinaryGameCanvas = allBinaryGameCanvas
    end
    

    def setLayerInterfaceForCircularStaticPool(allBinaryLayerInterface : AllBinaryLayer?) : Nil
        @allBinaryLayerInterface = allBinaryLayerInterface
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("DestroyedEvent: \n")
        stringBuffer.not_nil!.append("AllBinaryLayerInterface: ")
        stringBuffer.not_nil!.append(@allBinaryLayerInterface.not_nil!.toString())
        stringBuffer.not_nil!.append("\nAllBinaryGameCanvas: ")
        stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(self.getAllBinaryGameCanvas()))
        return stringBuffer.not_nil!.toString()
    end
end

