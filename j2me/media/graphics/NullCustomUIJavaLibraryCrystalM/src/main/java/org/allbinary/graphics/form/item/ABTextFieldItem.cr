# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

class ABTextFieldItem < ABTextItem
    @font : Font? = nil

    def jf_font : Font?
        @font
    end

    def jf_font=(value : Font?) : Font?
        @font = value
    end
    

    def jinit_ABTextFieldItem(canvas : Canvas?, visitor : Visitor?, label : String, value : String, maxSize : Int, layout : Int, altText : String, font : Font?, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        maxSize = maxSize.to_i32!
        layout = layout.to_i32!
        jinit_ABTextItem(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        @font = font
        self
    end
    

    def getLabel : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def setLabel(label : String) : Nil
    end
    

    def getString : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def setString(string : String) : Nil
    end
    

    def setFocus(state : Bool) : Nil
    end
    

    def getFontHeight : Int32
        return @font.not_nil!.getHeight()
    end
    

    def setBackgroundBasicColorP(basicColor : BasicColor?) : Nil
    end
    

    def setForegroundBasicColorP(basicColor : BasicColor?) : Nil
    end
end

