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

class TopToBottomImageAnimation < ImageSegmentAnimation
    @currentHeight : Int32 = 0

    def jf_currentHeight : Int32
        @currentHeight
    end

    def jf_currentHeight=(value : Int32) : Int32
        @currentHeight = value
    end
    # anchor is the field of ImageAnimation

    # Java field initializers run after the super constructor
    def jfields_TopToBottomImageAnimation : Nil
    
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_TopToBottomImageAnimation(image : Image?, sequenceArray : Array(Int32)?, animationBehavior : AnimationBehavior?) : self
        jinit_ImageSegmentAnimation(image, sequenceArray, animationBehavior)
        jfields_TopToBottomImageAnimation()
        @currentHeight = 0
        if self.getSequence().not_nil![0] == -1
            self.setFrame(self.getSize() &- 1)
        end
        self
    end
    

    def nextFrame : Nil
        if self.getSequence().not_nil![0] == -1
            previousFrame()
        else
            super()
        end
        self.update()
    end
    

    def previousFrame : Nil
        if self.getSequence().not_nil![0] == -1
            nextFrame()
        else
            super()
        end
        self.update()
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
        super(index)
        self.update()
    end
    

    def update : Nil
        @currentHeight = self.getDrawHeight() &* self.getFrame().tdiv(self.getSize())
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        graphics.not_nil!.drawRegion(self.getImage(), self.getStartX(), self.getStartY(), self.getDrawWidth(), @currentHeight, Sprite.jst_TRANS_NONE, x, y, @anchor)
    end
end

