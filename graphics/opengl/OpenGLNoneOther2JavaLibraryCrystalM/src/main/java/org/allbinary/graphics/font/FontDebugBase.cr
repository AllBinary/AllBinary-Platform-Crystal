# Generated Code Do Not Modify
# package org.allbinary.graphics.font

class FontDebugBase < JObject
    @j_SET_FONT : String = ""

    def jf_SET_FONT : String
        @j_SET_FONT
    end

    def jf_SET_FONT=(value : String) : String
        @j_SET_FONT = value
    end

    @@jst_instanceBase : FontDebugBase? = nil

    def self.jst_instanceBase : FontDebugBase?
        jclinit
        @@jst_instanceBase
    end

    def self.jst_instanceBase=(value : FontDebugBase?) : FontDebugBase?
        jclinit
        @@jst_instanceBase = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instanceBase = FontDebugBase.new.jinit_FontDebugBase()
    end
    

    def self.getInstance : FontDebugBase?
        return FontDebugBase.jst_instanceBase
    end

    # Java field initializers run after the super constructor
    def jfields_FontDebugBase : Nil
    @j_SET_FONT = "setFont"
    end

    def jinit_FontDebugBase : self
        jfields_FontDebugBase()
        self
    end
    

    def debugMetrics(currentFont : Font?, convertedTextSize : Number, displayMetrics : JAny, stringBuffer : StringMaker?) : Nil
        convertedTextSize = convertedTextSize.to_f32
    end
    

    def debugDpi(densityDpi : Int, stringBuffer : StringMaker?) : Nil
        densityDpi = densityDpi.to_i32!
    end
    

    def debugDimension(currentFont : Font?, convertedTextSize : Number, longestDimensionTotalPixels : Int, stringBuffer : StringMaker?) : Nil
        convertedTextSize = convertedTextSize.to_f32
        longestDimensionTotalPixels = longestDimensionTotalPixels.to_i32!
    end
end

