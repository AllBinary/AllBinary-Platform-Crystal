# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

class CustomCustomItem < ABCustomItem
    include UpdateMyFontInterface
    @updateMyFontProcessor : MyFontProcessor? = nil

    def jf_updateMyFontProcessor : MyFontProcessor?
        @updateMyFontProcessor
    end

    def jf_updateMyFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @updateMyFontProcessor = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end

    # Java field initializers run after the super constructor
    def jfields_CustomCustomItem : Nil
    @updateMyFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @myFontProcessor = @updateMyFontProcessor
    end
    

    def jinit_CustomCustomItem(label : String, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_ABCustomItem(label, backgroundBasicColor, foregroundBasicColor)
        jfields_CustomCustomItem()
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
    end
end

