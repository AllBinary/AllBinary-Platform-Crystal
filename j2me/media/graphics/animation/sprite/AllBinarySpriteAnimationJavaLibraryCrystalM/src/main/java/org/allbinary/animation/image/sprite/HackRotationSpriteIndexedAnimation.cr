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

class HackRotationSpriteIndexedAnimation < RotationAnimation
    @sprite : Sprite? = nil

    def jf_sprite : Sprite?
        @sprite
    end

    def jf_sprite=(value : Sprite?) : Sprite?
        @sprite = value
    end
    @image : Image? = nil

    def jf_image : Image?
        @image
    end

    def jf_image=(value : Image?) : Image?
        @image = value
    end
    

    def jinit_HackRotationSpriteIndexedAnimation(sprite : Sprite?, image : Image?, angleInfo : AngleInfo?, animationBehavior : AnimationBehavior?) : self
        jinit_RotationAnimation(angleInfo, CircularIndexUtil.createInstance(360.tdiv(((angleInfo.not_nil!.getAngleIncrementInfo().not_nil!.getAngleIncrement()).to_i32!).to_i32)), animationBehavior)
        @sprite = sprite
        @image = image
        self
    end
    

    def getAnimationSize : Int32
        return self.getSize()
    end
    

    def paintFrame(g : Graphics?, frame : Int, x : Int, y : Int) : Nil
        frame = frame.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        self.setFrame(frame)
        self.paintXY(g, x, y)
    end
    

    def paintXY(g : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @sprite.not_nil!.setPosition(x, y)
        self.paint(g)
    end
    

    def paint(g : Graphics?) : Nil
        @sprite.not_nil!.paint(g)
    end
    

    def nextRotation : Nil
        @sprite.not_nil!.nextFrame()
    end
    

    def previousRotation : Nil
        @sprite.not_nil!.prevFrame()
    end
    

    def getSize : Int32
        return @sprite.not_nil!.getRawFrameCount()
    end
    

    def setFrame(frame : Int) : Nil
        frame = frame.to_i32!
        @sprite.not_nil!.setFrame(frame)
    end
    

    def getFrame : Int32
        return @sprite.not_nil!.getFrame()
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
end

