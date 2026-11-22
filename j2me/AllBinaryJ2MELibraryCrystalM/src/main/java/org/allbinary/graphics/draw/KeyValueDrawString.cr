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
# package org.allbinary.graphics.draw

class KeyValueDrawString < JObject
    include UpdateMyFontInterface
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @j_LABEL : String = ""

    def jf_LABEL : String
        @j_LABEL
    end

    def jf_LABEL=(value : String) : String
        @j_LABEL = value
    end
    @labelX : Int32 = 0

    def jf_labelX : Int32
        @labelX
    end

    def jf_labelX=(value : Int32) : Int32
        @labelX = value
    end
    @valueX : Int32 = 0

    def jf_valueX : Int32
        @valueX
    end

    def jf_valueX=(value : Int32) : Int32
        @valueX = value
    end
    @value : String = ""

    def jf_value : String
        @value
    end

    def jf_value=(value : String) : String
        @value = value
    end

    # Java field initializers run after the super constructor
    def jfields_KeyValueDrawString : Nil
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    
    
    
    @value = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def jinit_KeyValueDrawString(label : String, x : Int) : self
        x = x.to_i32!
        jfields_KeyValueDrawString()
        @j_LABEL = label
        @labelX = x
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        labelWidth : Int32 = graphics.not_nil!.getFont().not_nil!.stringWidth(@j_LABEL) &- @j_LABEL.not_nil!.length()
        @valueX = labelWidth &+ @labelX
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics : Graphics?, y : Int) : Nil
        y = y.to_i32!
        @myFontProcessor.not_nil!.process(graphics)
        graphics.not_nil!.drawString(@j_LABEL, @labelX, y, 0)
        graphics.not_nil!.drawString(@value, @valueX, y, 0)
    end
    

    def update(value : String) : Nil
        @value = value
    end
end

