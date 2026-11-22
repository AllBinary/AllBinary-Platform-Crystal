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

class ColorLessVectorAnimation < VectorAnimation
    

    def jinit_ColorLessVectorAnimation(currentPoints : Array(Array(Array(Int32)?)?)?, animationBehavior : AnimationBehavior?) : self
        jinit_VectorAnimation(currentPoints, BasicColorFactory.getInstance().not_nil!.jf_WHITE, animationBehavior)
        self
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        self.paintVectors(graphics, x, y)
    end
end

