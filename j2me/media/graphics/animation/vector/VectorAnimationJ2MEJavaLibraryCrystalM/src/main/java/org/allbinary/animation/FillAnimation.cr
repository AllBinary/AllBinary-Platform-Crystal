# Generated Code Do Not Modify
# package org.allbinary.animation

class FillAnimation < IndexedAnimation
    @pixelBuffer : Array(Int32)? = nil

    def jf_pixelBuffer : Array(Int32)?
        @pixelBuffer
    end

    def jf_pixelBuffer=(value : Array(Int32)?) : Array(Int32)?
        @pixelBuffer = value
    end
    @width : Int32 = 0

    def jf_width : Int32
        @width
    end

    def jf_width=(value : Int32) : Int32
        @width = value
    end
    @height : Int32 = 0

    def jf_height : Int32
        @height
    end

    def jf_height=(value : Int32) : Int32
        @height = value
    end
    

    def jinit_FillAnimation(pixelBuffer : Array(Int32)?, width : Int, height : Int, animationBehavior : AnimationBehavior?) : self
        width = width.to_i32!
        height = height.to_i32!
        jinit_IndexedAnimation(animationBehavior)
        @width = 100
        @height = 100
        @pixelBuffer = pixelBuffer
        self
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        changed : Bool = false
        if (self.getBasicColorP()).nil? || self.getBasicColorP().not_nil!.intValue() != basicColor.not_nil!.intValue()
            changed = true
        end
        super(basicColor)
        if changed
            self.updateModifiers()
        end
    end
    

    def changeBasicColor(basicColor : BasicColor?) : Nil
        changed : Bool = false
        if (self.getChangeBasicColor()).nil? || self.getChangeBasicColor().not_nil!.intValue() != basicColor.not_nil!.intValue()
            changed = true
        end
        super(basicColor)
        if changed
            self.updateModifiers()
        end
    end
    

    def setAlpha(alpha : Int) : Nil
        alpha = alpha.to_i32!
        changed : Bool = false
        if @alphaP != alpha
            changed = true
        end
        super(alpha)
        if changed
            self.updateModifiers()
        end
    end
    

    def setScale(scaleX : Number, scaleY : Number) : Nil
        scaleX = scaleX.to_f32
        scaleY = scaleY.to_f32
    end
    

    def setMaxScale(maxScaleX : Number, maxScaleY : Number) : Nil
        maxScaleX = maxScaleX.to_f32
        maxScaleY = maxScaleY.to_f32
    end
    

    def updateModifiers : Nil
    end
    

    def paint(g : Graphics?) : Nil
        g.not_nil!.drawRGB(@pixelBuffer, 0, @width, 0, 0, @width, @height, true)
    end
end

