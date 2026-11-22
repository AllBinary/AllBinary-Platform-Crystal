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
# package org.allbinary.graphics.form

class FormPlayerGameInputProcessor < Processor
    @playerGameInputCompositeInterface : PlayerGameInputCompositeInterface? = nil

    def jf_playerGameInputCompositeInterface : PlayerGameInputCompositeInterface?
        @playerGameInputCompositeInterface
    end

    def jf_playerGameInputCompositeInterface=(value : PlayerGameInputCompositeInterface?) : PlayerGameInputCompositeInterface?
        @playerGameInputCompositeInterface = value
    end
    

    def jinit_FormPlayerGameInputProcessor(playerGameInputCompositeInterface : PlayerGameInputCompositeInterface?) : self
        jinit_Processor()
        @playerGameInputCompositeInterface = playerGameInputCompositeInterface
        self
    end
    

    def process : Nil
        @playerGameInputCompositeInterface.not_nil!.getPlayerGameInput().not_nil!.update()
    end
end

