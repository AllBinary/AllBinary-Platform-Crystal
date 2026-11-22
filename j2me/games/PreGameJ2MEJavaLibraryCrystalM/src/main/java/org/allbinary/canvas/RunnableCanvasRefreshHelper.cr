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
# package org.allbinary.canvas

class RunnableCanvasRefreshHelper < Processor
    @runnableCanvas : MyCanvas? = nil

    def jf_runnableCanvas : MyCanvas?
        @runnableCanvas
    end

    def jf_runnableCanvas=(value : MyCanvas?) : MyCanvas?
        @runnableCanvas = value
    end
    

    def jinit_RunnableCanvasRefreshHelper(runnableCanvas : MyCanvas?) : self
        jinit_Processor()
        @runnableCanvas = runnableCanvas
        self
    end
    

    def process : Nil
        @runnableCanvas.not_nil!.repaint()
    end
end

