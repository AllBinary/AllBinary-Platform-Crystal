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

class SpecialLeftGameInputInterfaceProcessor < SpecialGameInputInterfaceProcessor
    

    def jinit_SpecialLeftGameInputInterfaceProcessor(collidableDestroyableDamageableLayer : SpecialGameInputInterface?) : self
        jinit_SpecialGameInputInterfaceProcessor(collidableDestroyableDamageableLayer)
        self
    end
    

    def processEvent(allbinaryLayerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
        @specialGameInputInterface.not_nil!.left()
    end
end

