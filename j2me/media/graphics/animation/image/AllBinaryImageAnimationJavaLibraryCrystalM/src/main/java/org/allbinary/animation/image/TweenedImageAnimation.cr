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

class TweenedImageAnimation < IndexedAnimation
    @image : Image? = nil

    def jf_image : Image?
        @image
    end

    def jf_image=(value : Image?) : Image?
        @image = value
    end
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
    @totalFrames : Int32 = 0

    def jf_totalFrames : Int32
        @totalFrames
    end

    def jf_totalFrames=(value : Int32) : Int32
        @totalFrames = value
    end
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end

    # Java field initializers run after the super constructor
    def jfields_TweenedImageAnimation : Nil
    
    
    
    
    
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_TweenedImageAnimation(image : Image?, dx : Int, dy : Int, totalFrames : Int, animationBehavior : AnimationBehavior?) : self
        dx = dx.to_i32!
        dy = dy.to_i32!
        totalFrames = totalFrames.to_i32!
        jinit_IndexedAnimation(animationBehavior)
        jfields_TweenedImageAnimation()
        @image = image
        @dx = dx
        @dy = dy
        @totalFrames = totalFrames
        @circularIndexUtil = CircularIndexUtil.createInstance(@totalFrames)
        self
    end
    

    def getAnimationSize : Int32
        return self.getSize()
    end
    

    def nextFrame : Nil
        @circularIndexUtil.not_nil!.next_()
    end
    

    def previousFrame : Nil
        @circularIndexUtil.not_nil!.previous()
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
        @circularIndexUtil.not_nil!.setIndex(index)
    end
    

    def getFrame : Int32
        return @circularIndexUtil.not_nil!.getIndex()
    end
    

    def getSize : Int32
        return @totalFrames
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        frame : Int32 = self.getFrame()
        currentX : Int32 = @dx &* frame
        currentY : Int32 = @dy &* frame
        graphics.not_nil!.drawImage(@image, x &+ currentX, y &+ currentY, @anchor)
    end
    

    def close : Nil
        DisposalUtil.getInstance().not_nil!.disposeImage(@image)
    end
    

    def finalize : Nil
        DisposalUtil.getInstance().not_nil!.disposeImage(@image)
    end
end

