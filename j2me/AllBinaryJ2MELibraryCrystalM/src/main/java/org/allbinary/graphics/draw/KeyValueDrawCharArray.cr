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

class KeyValueDrawCharArray < JObject
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
    @value : Array(UInt16)? = nil

    def jf_value : Array(UInt16)?
        @value
    end

    def jf_value=(value : Array(UInt16)?) : Array(UInt16)?
        @value = value
    end
    @len : Int32 = 0

    def jf_len : Int32
        @len
    end

    def jf_len=(value : Int32) : Int32
        @len = value
    end

    # Java field initializers run after the super constructor
    def jfields_KeyValueDrawCharArray : Nil
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    
    
    
    @value = CharArrayFactory.getInstance().not_nil!.getZeroCharArray()
    
    end
    

    def jinit_KeyValueDrawCharArray(label : String, x : Int) : self
        x = x.to_i32!
        jfields_KeyValueDrawCharArray()
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
        graphics.not_nil!.drawChars(@value, 0, @len, @valueX, y, 0)
    end
    

    def update(value : Array(UInt16)?, len : Int) : Nil
        len = len.to_i32!
        @value = value
        @len = len
    end
end

