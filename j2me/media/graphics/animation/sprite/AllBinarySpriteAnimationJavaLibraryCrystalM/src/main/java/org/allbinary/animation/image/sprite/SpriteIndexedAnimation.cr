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

class SpriteIndexedAnimation < IndexedAnimation
    include ColorCompositeInterface
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
    @basicColorArray : Array(BasicColor?)? = nil

    def jf_basicColorArray : Array(BasicColor?)?
        @basicColorArray
    end

    def jf_basicColorArray=(value : Array(BasicColor?)?) : Array(BasicColor?)?
        @basicColorArray = value
    end
    

    def jinit_SpriteIndexedAnimation(sprite : Sprite?, image : Image?, basicColorArray : Array(BasicColor?)?, animationBehavior : AnimationBehavior?) : self
        jinit_IndexedAnimation(animationBehavior)
        @sprite = sprite
        @image = image
        @basicColorArray = basicColorArray
        if @basicColorArray.not_nil!.size != 0 && self.getSize() != @basicColorArray.not_nil!.size
            raise (JException.new.jinit_JException(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_TOTAL_LABEL).not_nil!.appendint(self.getSize()).not_nil!.append("!=").not_nil!.appendint(@basicColorArray.not_nil!.size).not_nil!.toString())).not_nil!
        end
        self
    end
    

    def getAnimationSize : Int32
        return self.getSize()
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < @basicColorArray.not_nil!.size
            if basicColor == @basicColorArray.not_nil![index]
                self.setFrame(index)
                break
            end
        end
    end
    

    def getBasicColorP : BasicColor?
        if @basicColorArray.not_nil!.size < self.getFrame()
            return @basicColorArray.not_nil![self.getFrame()]
        else
            return BasicColorFactory.getInstance().not_nil!.jf_WHITE
        end
        return nil
    end
    

    def paintFrame(graphics : Graphics?, frame : Int, x : Int, y : Int) : Nil
        frame = frame.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        self.setFrame(frame)
        @sprite.not_nil!.setPosition(x, y)
        @sprite.not_nil!.paint(graphics)
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @sprite.not_nil!.setPosition(x, y)
        @sprite.not_nil!.paint(graphics)
    end
    

    def paint(graphics : Graphics?) : Nil
        @sprite.not_nil!.paint(graphics)
    end
    

    def nextFrame : Nil
        @sprite.not_nil!.nextFrame()
    end
    

    def previousFrame : Nil
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
    

    def isLastFrame : Bool
        if @sprite.not_nil!.getFrame() == self.getSize() &- 1
            return true
        else
            return false
        end
        return false
    end
    

    def getLastFrame : Int32
        return self.getSize()
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def close : Nil
    end
    

    def finalize : Nil
    end
end

