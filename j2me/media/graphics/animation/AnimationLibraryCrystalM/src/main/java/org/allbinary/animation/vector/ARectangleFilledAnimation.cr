# Generated Code Do Not Modify
# package org.allbinary.animation.vector

class ARectangleFilledAnimation < RectangleFilledAnimation
    @x : Int32 = 0

    def jf_x : Int32
        @x
    end

    def jf_x=(value : Int32) : Int32
        @x = value
    end
    @y : Int32 = 0

    def jf_y : Int32
        @y
    end

    def jf_y=(value : Int32) : Int32
        @y = value
    end
    

    def jinit_ARectangleFilledAnimation : self
        jinit_RectangleFilledAnimation(0, 0, BasicColorFactory.getInstance().not_nil!.jf_BLACK)
        self
    end
    

    def nextFrame : Nil
    end
    

    def paintXY(graphics : Graphics?, unusedX : Int, unusedY : Int) : Nil
        unusedX = unusedX.to_i32!
        unusedY = unusedY.to_i32!
        super(graphics, @x, @y)
    end
end

