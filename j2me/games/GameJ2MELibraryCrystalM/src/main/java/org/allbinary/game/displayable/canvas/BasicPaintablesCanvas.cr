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

class BasicPaintablesCanvas < GameCommandCanvas
    @paintableArray : Array(Paintable?)? = nil

    def jf_paintableArray : Array(Paintable?)?
        @paintableArray
    end

    def jf_paintableArray=(value : Array(Paintable?)?) : Array(Paintable?)?
        @paintableArray = value
    end
    @colorFillPaintable : ColorFillBasePaintable? = nil

    def jf_colorFillPaintable : ColorFillBasePaintable?
        @colorFillPaintable
    end

    def jf_colorFillPaintable=(value : ColorFillBasePaintable?) : ColorFillBasePaintable?
        @colorFillPaintable = value
    end
    

    def jinit_BasicPaintablesCanvas(cmdListener : CommandListener?, name : String, allBinaryGameLayerManager : AllBinaryGameLayerManager?, paintableArray : Array(Paintable?)?) : self
        jinit_GameCommandCanvas(cmdListener, name, allBinaryGameLayerManager.not_nil!.getBackgroundBasicColor(), allBinaryGameLayerManager.not_nil!.getForegroundBasicColor())
        @paintableArray = paintableArray
        @colorFillPaintable = ColorFillPaintableFactory.getInstance().not_nil!.getInstance(allBinaryGameLayerManager.not_nil!.getBackgroundBasicColor(), false)
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        @colorFillPaintable.not_nil!.paint(graphics)
        graphics.not_nil!.setColor(@foregroundColor)
        index : Int32 = @paintableArray.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            @paintableArray.not_nil![index].not_nil!.paint(graphics)
        end
        super(graphics)
    end
end

