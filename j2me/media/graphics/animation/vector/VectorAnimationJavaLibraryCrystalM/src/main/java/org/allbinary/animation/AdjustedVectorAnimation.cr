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
# package org.allbinary.animation

class AdjustedVectorAnimation < VectorAnimation
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
    

    def jinit_AdjustedVectorAnimation(currentPoints : Array(Array(Array(Int32)?)?)?, basicColor : BasicColor?, dx : Int, dy : Int, animationBehavior : AnimationBehavior?) : self
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_VectorAnimation(currentPoints, basicColor, animationBehavior)
        @dx = dx
        @dy = dy
        self
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        super(graphics, x &+ @dx, y &+ @dy)
    end
end

