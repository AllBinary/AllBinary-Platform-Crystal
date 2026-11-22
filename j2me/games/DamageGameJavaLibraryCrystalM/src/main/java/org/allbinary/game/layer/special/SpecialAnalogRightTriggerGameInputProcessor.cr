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
# package org.allbinary.game.layer.special

class SpecialAnalogRightTriggerGameInputProcessor < SpecialGameInputProcessor
    

    def jinit_SpecialAnalogRightTriggerGameInputProcessor(collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer?) : self
        jinit_SpecialGameInputProcessor(collidableDestroyableDamageableLayer)
        self
    end
    

    def processAnalog(allbinaryLayerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?, yAnalogValue : Int) : Nil
        yAnalogValue = yAnalogValue.to_i32!
        @collidableDestroyableDamageableLayer.not_nil!.rightTrigger(allbinaryLayerManager, gameKeyEvent, yAnalogValue)
    end
end

