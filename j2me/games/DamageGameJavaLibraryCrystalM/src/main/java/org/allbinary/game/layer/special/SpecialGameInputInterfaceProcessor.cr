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

class SpecialGameInputInterfaceProcessor < GameInputProcessor
    @specialGameInputInterface : SpecialGameInputInterface? = nil

    def jf_specialGameInputInterface : SpecialGameInputInterface?
        @specialGameInputInterface
    end

    def jf_specialGameInputInterface=(value : SpecialGameInputInterface?) : SpecialGameInputInterface?
        @specialGameInputInterface = value
    end
    

    def jinit_SpecialGameInputInterfaceProcessor(collidableDestroyableDamageableLayer : SpecialGameInputInterface?) : self
        jinit_GameInputProcessor()
        @specialGameInputInterface = collidableDestroyableDamageableLayer
        self
    end
end

