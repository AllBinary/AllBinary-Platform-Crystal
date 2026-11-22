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

class DemoCanvasProgressUtil < JObject
    

    def self.showProgress(demoCanvas : DemoCanvas?) : Nil
        DemoCanvasProgressUtil.showProgressOptionallyInTheBackground(demoCanvas, false)
    end
    

    def self.showProgressOptionallyInTheBackground(demoCanvas : DemoCanvas?, background : Bool) : Nil
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        progressCanvas.not_nil!.startBackground(background)
        paintableArray : Array(PaintableInterface?)? = Array(PaintableInterface?).new(2, nil)
        paintableArray.not_nil![0] = progressCanvas
        paintableArray.not_nil![1] = demoCanvas.not_nil!.getDefaultPaintableInterface()
        demoCanvas.not_nil!.setDefaultPaintableInterface(PaintableComposite.new.jinit_PaintableComposite(paintableArray))
        demoCanvas.not_nil!.setPaintableInterface(demoCanvas.not_nil!.getDefaultPaintableInterface())
    end

    def jinit_DemoCanvasProgressUtil : self
        self
    end
end

