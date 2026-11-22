# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

class ABStringComponent < JObject

    @@jst_NULL_STRING_COMPONENT : ABStringComponent? = nil

    def self.jst_NULL_STRING_COMPONENT : ABStringComponent?
        jclinit
        @@jst_NULL_STRING_COMPONENT
    end

    def self.jst_NULL_STRING_COMPONENT=(value : ABStringComponent?) : ABStringComponent?
        jclinit
        @@jst_NULL_STRING_COMPONENT = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_STRING_COMPONENT = ABStringComponent.new.jinit_ABStringComponent(BasicColorFactory.getInstance().not_nil!.jf_BLACK, BasicColorFactory.getInstance().not_nil!.jf_WHITE)
    end
    

    def getBackgroundBasicColor : BasicColor?
        return BasicColorFactory.getInstance().not_nil!.jf_WHITE
    end
    

    def jinit_ABStringComponent(backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        self
    end
    

    def getForegroundBasicColor : BasicColor?
        return BasicColorFactory.getInstance().not_nil!.jf_WHITE
    end
    

    def setForegroundBasicColor(foregroundBasicColor : BasicColor?) : Nil
    end
end

