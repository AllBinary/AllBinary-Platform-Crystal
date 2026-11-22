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

class GameConfigurationGauge < Gauge
    

    def jinit_GameConfigurationGauge(gameConfiguration : GameConfiguration?) : self
        jinit_Gauge(gameConfiguration.not_nil!.getName(), gameConfiguration.not_nil!.isModifiable().not_nil!.booleanValue(), gameConfiguration.not_nil!.getMaxValue().not_nil!.intValue() - gameConfiguration.not_nil!.getMinValue().not_nil!.intValue(), gameConfiguration.not_nil!.getValue().not_nil!.intValue() - gameConfiguration.not_nil!.getMinValue().not_nil!.intValue())
        self
    end
end

