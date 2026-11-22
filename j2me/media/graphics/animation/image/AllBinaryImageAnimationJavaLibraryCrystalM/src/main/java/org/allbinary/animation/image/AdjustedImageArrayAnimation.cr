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
# package org.allbinary.animation.image

class AdjustedImageArrayAnimation < ImageArrayAnimation
    @dx : Int32 = 0

    def jf_dx : Int32
        @dx
    end

    def jf_dx=(value : Int32) : Int32
        @dx = value
    end
    @dy : Int32 = 0

    def jf_dy : Int32
        @dy
    end

    def jf_dy=(value : Int32) : Int32
        @dy = value
    end
    

    def jinit_AdjustedImageArrayAnimation(imageArray : Array(Image?)?, dx : Int, dy : Int, animationBehavior : AnimationBehavior?) : self
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_ImageArrayAnimation(imageArray, animationBehavior)
        self.init(dx, dy)
        self
    end
    

    def init(dx : Int, dy : Int) : Nil
        dx = dx.to_i32!
        dy = dy.to_i32!
        self.setDx(dx)
        self.setDy(dy)
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        super(graphics, x &+ @dx, y &+ @dy)
    end
    

    def setDx(dx : Int) : Nil
        dx = dx.to_i32!
        @dx = dx
    end
    

    def getDx : Int32
        return @dx
    end
    

    def setDy(dy : Int) : Nil
        dy = dy.to_i32!
        @dy = dy
    end
    

    def getDy : Int32
        return @dy
    end
end

