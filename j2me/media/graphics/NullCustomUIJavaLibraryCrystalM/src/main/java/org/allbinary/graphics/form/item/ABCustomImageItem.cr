# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

class ABCustomImageItem < ABCustomItem
    @yOffset : Int32 = 0

    def jf_yOffset : Int32
        @yOffset
    end

    def jf_yOffset=(value : Int32) : Int32
        @yOffset = value
    end

    # Java field initializers run after the super constructor
    def jfields_ABCustomImageItem : Nil
    @yOffset = 0
    end
    

    def jinit_ABCustomImageItem(label : String, image : Image?, layout : Int, altText : String, basicColor : BasicColor?, yOffset : Int) : self
        layout = layout.to_i32!
        yOffset = yOffset.to_i32!
        jinit_ABCustomItem(label, basicColor, basicColor)
        jfields_ABCustomImageItem()
        self
    end
    

    def getImage : Image?
        return NullImage.jst_NULL_IMAGE
    end
end

