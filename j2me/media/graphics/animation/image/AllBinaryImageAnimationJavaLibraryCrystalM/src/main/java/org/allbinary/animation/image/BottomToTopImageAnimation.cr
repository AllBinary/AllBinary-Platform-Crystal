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

class BottomToTopImageAnimation < ImageSegmentAnimation
    @startHeight : Int32 = 0

    def jf_startHeight : Int32
        @startHeight
    end

    def jf_startHeight=(value : Int32) : Int32
        @startHeight = value
    end
    @currentHeight : Int32 = 0

    def jf_currentHeight : Int32
        @currentHeight
    end

    def jf_currentHeight=(value : Int32) : Int32
        @currentHeight = value
    end
    # anchor is the field of ImageAnimation

    # Java field initializers run after the super constructor
    def jfields_BottomToTopImageAnimation : Nil
    
    
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_BottomToTopImageAnimation(image : Image?, animationBehavior : AnimationBehavior?) : self
        jinit_ImageSegmentAnimation(image, PrimitiveIntUtil.getArrayInstance(), animationBehavior)
        jfields_BottomToTopImageAnimation()
        self.setFrame(self.getSize() &- 1)
        self
    end
    

    def nextFrame : Nil
        previousFrame()
        self.update()
    end
    

    def previousFrame : Nil
        nextFrame()
        self.update()
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
        super(index)
        self.update()
    end
    

    def update : Nil
        @startHeight = self.getDrawHeight() &* self.getFrame().tdiv(self.getSize())
        @currentHeight = self.getDrawHeight() &- @startHeight
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        graphics.not_nil!.drawRegion(self.getImage(), self.getStartX(), @startHeight, self.getDrawWidth(), @currentHeight, Sprite.jst_TRANS_NONE, x, y &+ @startHeight, @anchor)
    end
end

