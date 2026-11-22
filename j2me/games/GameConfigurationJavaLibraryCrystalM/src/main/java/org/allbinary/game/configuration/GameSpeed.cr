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
# package org.allbinary.game.configuration

class GameSpeed < JObject

    @@jst_instance : GameSpeed? = nil

    def self.jst_instance : GameSpeed?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameSpeed?) : GameSpeed?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameSpeed.new.jinit_GameSpeed()
    end
    

    def self.getInstance : GameSpeed?
        return GameSpeed.jst_instance
    end

    def jinit_GameSpeed : self
        self
    end
    

    def getSpeed : Int32
        speedGameConfiguration : GameConfiguration? = GameConfigurationCentral.getInstance().not_nil!.jf_SPEED
        return (speedGameConfiguration.not_nil!.getMaxValue().not_nil!.intValue() - speedGameConfiguration.not_nil!.getValue().not_nil!.intValue() + 1)
    end
    

    def getDelay : Int32
        speedGameConfiguration : GameConfiguration? = GameConfigurationCentral.getInstance().not_nil!.jf_SPEED
        return 19 * (speedGameConfiguration.not_nil!.getMaxValue().not_nil!.intValue() - speedGameConfiguration.not_nil!.getValue().not_nil!.intValue())
    end
end

