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
# package org.allbinary.game.terrain

class TerrainEvent < AllBinaryEventObject
    @basicTerrainInfo : BasicTerrainInfo? = nil

    def jf_basicTerrainInfo : BasicTerrainInfo?
        @basicTerrainInfo
    end

    def jf_basicTerrainInfo=(value : BasicTerrainInfo?) : BasicTerrainInfo?
        @basicTerrainInfo = value
    end

    # Java field initializers run after the super constructor
    def jfields_TerrainEvent : Nil
    @basicTerrainInfo = BasicTerrainInfo.jst_NULL_BASIC_TERRAIN_INFO
    end
    

    def jinit_TerrainEvent(basicTerrainInfo : JAny) : self
        jinit_AllBinaryEventObject(basicTerrainInfo)
        jfields_TerrainEvent()
        self.setBasicTerrainInfo(@basicTerrainInfo)
        self
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("TerrainEvent: \n")
        stringBuffer.not_nil!.append("LayerInterface: ")
        stringBuffer.not_nil!.append(@basicTerrainInfo.not_nil!.toString())
        return stringBuffer.not_nil!.toString()
    end
    

    def getBasicTerrainInfo : BasicTerrainInfo?
        return @basicTerrainInfo
    end
    

    def setBasicTerrainInfo(basicTerrainInfo : BasicTerrainInfo?) : Nil
        @basicTerrainInfo = basicTerrainInfo
    end
    

    def setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo : BasicTerrainInfo?) : Nil
        @basicTerrainInfo = basicTerrainInfo
    end
end

