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
# package org.allbinary.graphics.canvas.transition.progress

class ProgressPaintable < Paintable
    @progressCanvas : ProgressCanvas? = nil

    def jf_progressCanvas : ProgressCanvas?
        @progressCanvas
    end

    def jf_progressCanvas=(value : ProgressCanvas?) : ProgressCanvas?
        @progressCanvas = value
    end
    

    def jinit_ProgressPaintable(progressCanvas : ProgressCanvas?) : self
        jinit_Paintable()
        @progressCanvas = progressCanvas
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        @progressCanvas.not_nil!.paint2(graphics)
    end
end

