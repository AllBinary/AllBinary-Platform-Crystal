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

class AdjustedSpriteIndexedAnimation < SpriteIndexedAnimation
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
    

    def jinit_AdjustedSpriteIndexedAnimation(sprite : Sprite?, image : Image?, basicColorArray : Array(BasicColor?)?, dx : Int, dy : Int, animationBehavior : AnimationBehavior?) : self
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_SpriteIndexedAnimation(sprite, image, basicColorArray, animationBehavior)
        @dx = dx
        @dy = dy
        self
    end
    

    def paintFrame(graphics : Graphics?, frame : Int, x : Int, y : Int) : Nil
        frame = frame.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        self.setFrame(frame)
        @sprite.not_nil!.setPosition(x &+ @dx, y &+ @dy)
        paint(graphics)
    end
    

    def paintXY(g : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @sprite.not_nil!.setPosition(x &+ @dx, y &+ @dy)
        paint(g)
    end
    

    def paint(g : Graphics?) : Nil
        @sprite.not_nil!.setPosition(@dx, @dy)
        super(g)
    end
end

