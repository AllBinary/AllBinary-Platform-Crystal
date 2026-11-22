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
# package org.allbinary.game.configuration.persistance

class GameConfigurationPersistanceSingleton < KeyValuePersistance

    @@jst_GAME_PERSISTANCE : GameConfigurationPersistanceSingleton? = nil

    def self.jst_GAME_PERSISTANCE : GameConfigurationPersistanceSingleton?
        jclinit
        @@jst_GAME_PERSISTANCE
    end

    def self.jst_GAME_PERSISTANCE=(value : GameConfigurationPersistanceSingleton?) : GameConfigurationPersistanceSingleton?
        jclinit
        @@jst_GAME_PERSISTANCE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_GAME_PERSISTANCE = GameConfigurationPersistanceSingleton.new.jinit_GameConfigurationPersistanceSingleton()
    end
    

    def self.getInstance : GameConfigurationPersistanceSingleton?
        return GameConfigurationPersistanceSingleton.jst_GAME_PERSISTANCE
    end
    

    def jinit_GameConfigurationPersistanceSingleton : self
        jinit_KeyValuePersistance(GamePersistanceStrings.getInstance().not_nil!.jf_SAVED_GAME_CONFIGURATION_RECORD_ID)
        self
    end
end

