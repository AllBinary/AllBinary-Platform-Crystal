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
# package org.allbinary.game.ag.layer.hud.basic

class SetAndRemoveProcessor < Processor
    @updateMeasurementProcessor : PlayerGameNotificationHud? = nil

    def jf_updateMeasurementProcessor : PlayerGameNotificationHud?
        @updateMeasurementProcessor
    end

    def jf_updateMeasurementProcessor=(value : PlayerGameNotificationHud?) : PlayerGameNotificationHud?
        @updateMeasurementProcessor = value
    end
    

    def jinit_SetAndRemoveProcessor(updateMeasurementProcessor : PlayerGameNotificationHud?) : self
        jinit_Processor()
        @updateMeasurementProcessor = updateMeasurementProcessor
        self
    end
    

    def process : Nil
        @updateMeasurementProcessor.not_nil!.setAndRemoveProcess()
    end
end

