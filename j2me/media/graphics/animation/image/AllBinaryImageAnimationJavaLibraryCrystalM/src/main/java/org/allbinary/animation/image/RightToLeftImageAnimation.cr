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

class RightToLeftImageAnimation < ImageSegmentAnimation
    @startWidth : Int32 = 0

    def jf_startWidth : Int32
        @startWidth
    end

    def jf_startWidth=(value : Int32) : Int32
        @startWidth = value
    end
    @currentWidth : Int32 = 0

    def jf_currentWidth : Int32
        @currentWidth
    end

    def jf_currentWidth=(value : Int32) : Int32
        @currentWidth = value
    end
    # anchor is the field of ImageAnimation

    # Java field initializers run after the super constructor
    def jfields_RightToLeftImageAnimation : Nil
    
    
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_RightToLeftImageAnimation(image : Image?, animationBehavior : AnimationBehavior?) : self
        jinit_ImageSegmentAnimation(image, PrimitiveIntUtil.getArrayInstance(), animationBehavior)
        jfields_RightToLeftImageAnimation()
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
        @startWidth = self.getDrawWidth() &* self.getFrame().tdiv(self.getSize())
        @currentWidth = self.getDrawWidth() &- @startWidth
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        graphics.not_nil!.drawRegion(self.getImage(), @startWidth, self.getStartY(), @currentWidth, self.getDrawHeight(), Sprite.jst_TRANS_NONE, x &+ @startWidth, y, @anchor)
    end
end

