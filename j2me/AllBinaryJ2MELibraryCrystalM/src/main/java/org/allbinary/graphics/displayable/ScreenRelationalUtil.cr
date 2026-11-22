# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable

class ScreenRelationalUtil < JObject

    @@jst_instance : ScreenRelationalUtil? = nil

    def self.jst_instance : ScreenRelationalUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ScreenRelationalUtil?) : ScreenRelationalUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ScreenRelationalUtil.new.jinit_ScreenRelationalUtil()
    end
    

    def self.getInstance : ScreenRelationalUtil?
        return ScreenRelationalUtil.jst_instance
    end

    def jinit_ScreenRelationalUtil : self
        self
    end
    

    def getScaleImage(image : Image?) : Float32
        return self.getScaleWH(image.not_nil!.getWidth(), image.not_nil!.getHeight())
    end
    

    def getScaleWH(aWidth : Int, aHeight : Int) : Float32
        aWidth = aWidth.to_i32!
        aHeight = aHeight.to_i32!
        return self.getScaleWHA(aWidth, aHeight, 20)
    end
    

    def getScaleWHA(aWidth : Int, aHeight : Int, add : Int) : Float32
        aWidth = aWidth.to_i32!
        aHeight = aHeight.to_i32!
        add = add.to_i32!
        displayInfoSingleton : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        last : Array(Int32)? = displayInfoSingleton.not_nil!.getLast()
        width : Float32 = (last.not_nil![displayInfoSingleton.not_nil!.jf_WIDTH]).to_f32
        height : Float32 = (last.not_nil![displayInfoSingleton.not_nil!.jf_HEIGHT]).to_f32
        largestSize : Float32 = width
        if largestSize < height
            largestSize = height
        end
        scale : Float32 = (largestSize) / (aWidth).to_f32
        return scale
    end
    

    def getScaledHeight(aWidth : Int, aHeight : Int) : Int32
        aWidth = aWidth.to_i32!
        aHeight = aHeight.to_i32!
        return JR.d2i((self.getScaleWH(aWidth, aHeight) * (aHeight).to_f32))
    end
    

    def getScaledHeightAdd(aWidth : Int, aHeight : Int, add : Int) : Int32
        aWidth = aWidth.to_i32!
        aHeight = aHeight.to_i32!
        add = add.to_i32!
        return JR.d2i((self.getScaleWHA(aWidth, aHeight, add) * (aHeight).to_f32))
    end
end

