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

class BasicTerrainInfo < JObject
    @angle : Angle? = nil

    def jf_angle : Angle?
        @angle
    end

    def jf_angle=(value : Angle?) : Angle?
        @angle = value
    end

    @@jst_NULL_BASIC_TERRAIN_INFO : BasicTerrainInfo? = nil

    def self.jst_NULL_BASIC_TERRAIN_INFO : BasicTerrainInfo?
        jclinit
        @@jst_NULL_BASIC_TERRAIN_INFO
    end

    def self.jst_NULL_BASIC_TERRAIN_INFO=(value : BasicTerrainInfo?) : BasicTerrainInfo?
        jclinit
        @@jst_NULL_BASIC_TERRAIN_INFO = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_BASIC_TERRAIN_INFO = BasicTerrainInfo.new.jinit_BasicTerrainInfo(AngleFactory.getInstance().not_nil!.jf_NOT_ANGLE)
    end
    

    def jinit_BasicTerrainInfo(angle : Angle?) : self
        @angle = angle
        self
    end
    

    def getAngle : Angle?
        return @angle
    end
    

    def setAngle(angle : Angle?) : Nil
        @angle = angle
    end
end

