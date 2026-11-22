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
# package org.allbinary.animation.image.sprite

class AllBinaryAdjustedSpriteRotationAnimation < AllBinarySpriteRotationAnimation
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
    

    def jinit_AllBinaryAdjustedSpriteRotationAnimation(sprite : Sprite?, image : Image?, dx : Int, dy : Int, animationBehavior : AnimationBehavior?) : self
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_AllBinarySpriteRotationAnimation(sprite, image, animationBehavior)
        @dx = dx
        @dy = dy
        self
    end
    

    def paintXY(g : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @sprite.not_nil!.setPosition(x &+ @dx, y &+ @dy)
        self.paint(g)
    end
end

