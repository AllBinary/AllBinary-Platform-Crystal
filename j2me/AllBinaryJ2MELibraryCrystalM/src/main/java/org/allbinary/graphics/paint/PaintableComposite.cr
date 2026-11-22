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
# package org.allbinary.graphics.paint

class PaintableComposite < Paintable
    @paintableArray : Array(PaintableInterface?)? = nil

    def jf_paintableArray : Array(PaintableInterface?)?
        @paintableArray
    end

    def jf_paintableArray=(value : Array(PaintableInterface?)?) : Array(PaintableInterface?)?
        @paintableArray = value
    end
    

    def jinit_PaintableComposite(paintableArray : Array(PaintableInterface?)?) : self
        jinit_Paintable()
        @paintableArray = paintableArray
        self
    end
    

    def paint(graphics : Graphics?) : Nil
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
    end
    

    def paintThreed(graphics : Graphics?) : Nil
        index : Int32 = @paintableArray.not_nil!.size &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            @paintableArray.not_nil![index].not_nil!.paintThreed(graphics)
        end
    end
end

