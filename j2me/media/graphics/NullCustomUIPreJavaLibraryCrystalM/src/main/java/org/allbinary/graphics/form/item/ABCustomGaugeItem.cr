# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

class ABCustomGaugeItem < ABCustomItem

    @@jst_NULL_GAUGE_ITEM : ABCustomGaugeItem? = nil

    def self.jst_NULL_GAUGE_ITEM : ABCustomGaugeItem?
        jclinit
        @@jst_NULL_GAUGE_ITEM
    end

    def self.jst_NULL_GAUGE_ITEM=(value : ABCustomGaugeItem?) : ABCustomGaugeItem?
        jclinit
        @@jst_NULL_GAUGE_ITEM = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_GAUGE_ITEM = ABCustomGaugeItem.new.jinit_ABCustomGaugeItem(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, 1, 0, BasicColorFactory.getInstance().not_nil!.jf_BLACK, BasicColorFactory.getInstance().not_nil!.jf_WHITE)
    end
    

    def jinit_ABCustomGaugeItem(label : String, maxValue : Int, initialValue : Int, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        maxValue = maxValue.to_i32!
        initialValue = initialValue.to_i32!
        jinit_ABCustomItem(label, backgroundBasicColor, foregroundBasicColor)
        self
    end
end

