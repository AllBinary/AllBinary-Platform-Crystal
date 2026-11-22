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
# package org.allbinary.game.displayable.canvas

class EndLevelIntermissionProcessor < Processor
    @gameCanvas : AllBinaryGameCanvas? = nil

    def jf_gameCanvas : AllBinaryGameCanvas?
        @gameCanvas
    end

    def jf_gameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @gameCanvas = value
    end
    

    def jinit_EndLevelIntermissionProcessor(gameCanvas : AllBinaryGameCanvas?) : self
        jinit_Processor()
        @gameCanvas = gameCanvas
        self
    end
    

    def process : Nil
        @gameCanvas.not_nil!.processEndLevelIntermissionGameState()
    end
end

