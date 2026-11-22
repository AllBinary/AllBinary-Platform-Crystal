# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

class ABTextItem < CustomCustomItem
    include ABCustomItemInterface
    

    def jinit_ABTextItem(label : String, layout : Int, altText : String, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        layout = layout.to_i32!
        jinit_CustomCustomItem(label, backgroundBasicColor, foregroundBasicColor)
        self
    end
    

    def keyPressed(keyCode : Int) : Nil
        keyCode = keyCode.to_i32!
    end
    

    def paintUnselected(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
    end
    

    def getLabelStringComponent : ABStringComponent?
        return ABStringComponent.jst_NULL_STRING_COMPONENT
    end
    

    def getMinimumWidth : Int32
        return super()
    end
    

    def getMinimumHeight : Int32
        return super()
    end
    

    def getLabel : String
        return super()
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        super(graphics, x, y)
    end
end

