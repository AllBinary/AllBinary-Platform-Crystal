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
# package org.allbinary.graphics.form.item

class SelectableTextItem < ABTextItem
    

    def jinit_SelectableTextItem(label : String, layout : Int, altText : String, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        layout = layout.to_i32!
        jinit_ABTextItem(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        self
    end
    

    def isFocusable : Bool
        return true
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @myFontProcessor.not_nil!.process(graphics)
        stringComponent : ABStringComponent? = self.getLabelStringComponent()
        if !(stringComponent).nil?
            graphics.not_nil!.setColor(stringComponent.not_nil!.getForegroundBasicColor().not_nil!.intValue())
        end
        graphics.not_nil!.drawString(self.getLabel(), x &+ 2, y, 0)
    end
end

