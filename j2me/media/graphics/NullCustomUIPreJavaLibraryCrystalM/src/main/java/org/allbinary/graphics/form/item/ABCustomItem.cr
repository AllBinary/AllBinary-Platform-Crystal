# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

class ABCustomItem < JObject

    @@jst_NULL_CUSTOM_ITEM : JAny = nil

    def self.jst_NULL_CUSTOM_ITEM : JAny
        jclinit
        @@jst_NULL_CUSTOM_ITEM
    end

    def self.jst_NULL_CUSTOM_ITEM=(value : JAny) : JAny
        jclinit
        @@jst_NULL_CUSTOM_ITEM = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_CUSTOM_ITEM = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getNullInstance : ABCustomItem?
        if ABCustomItem.jst_NULL_CUSTOM_ITEM == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            ABCustomItem.jst_NULL_CUSTOM_ITEM = ABCustomItem.new.jinit_ABCustomItem(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, BasicColorFactory.getInstance().not_nil!.jf_BLACK, BasicColorFactory.getInstance().not_nil!.jf_WHITE)
        end
        return JR.cast(ABCustomItem.jst_NULL_CUSTOM_ITEM, ABCustomItem)
    end
    

    def jinit_ABCustomItem(label : String, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        self
    end
    

    def setOwner(owner : Screen?) : Nil
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
    end
    

    def paintUnselected(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
    end
    

    def isFocusable : Bool
        return false
    end
    

    def getLabel : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def setLabel(label : String) : Nil
    end
    

    def getHeight : Int32
        return 0
    end
    

    def setHeight(height : Int) : Nil
        height = height.to_i32!
    end
    

    def getValue : Float32
        return 0.0_f32
    end
    

    def setValue(value : Number) : Nil
        value = value.to_f32
    end
    

    def getMinimumWidth : Int32
        return 0
    end
    

    def getMinimumHeight : Int32
        return 0
    end
    

    def preMeasurement(graphics : Graphics?) : Nil
    end
end

