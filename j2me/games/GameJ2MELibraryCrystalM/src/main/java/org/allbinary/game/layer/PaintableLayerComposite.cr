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
# package org.allbinary.game.layer

class PaintableLayerComposite < Paintable
    @paintableArray : Array(ABLayer?)? = nil

    def jf_paintableArray : Array(ABLayer?)?
        @paintableArray
    end

    def jf_paintableArray=(value : Array(ABLayer?)?) : Array(ABLayer?)?
        @paintableArray = value
    end
    

    def jinit_PaintableLayerComposite(paintableArray : Array(ABLayer?)?) : self
        jinit_Paintable()
        @paintableArray = paintableArray
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        index : Int32 = @paintableArray.not_nil!.size
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            @paintableArray.not_nil![index].not_nil!.paint(graphics)
        end
    end
    

    def paintThreed(graphics : Graphics?) : Nil
        paintableInterface : PaintableInterface? = nil
        index : Int32 = @paintableArray.not_nil!.size
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            paintableInterface = JR.cast(JR.cast(@paintableArray.not_nil![index], PaintableInterface), PaintableInterface)
            paintableInterface.not_nil!.paintThreed(graphics)
        end
    end
end

