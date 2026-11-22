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

class ImageArrayAnimation < IndexedAnimation
    @imageArray : Array(Image?)? = nil

    def jf_imageArray : Array(Image?)?
        @imageArray
    end

    def jf_imageArray=(value : Array(Image?)?) : Array(Image?)?
        @imageArray = value
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
    def jfields_ImageArrayAnimation : Nil
    @imageArray = NullImage.jst_NULL_IMAGE_ARRAY
    
    @circularIndexUtil = CircularIndexUtil.jst_NULL_CIRCULAR_INDEX_UTIL
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_ImageArrayAnimation(imageArray : Array(Image?)?, animationBehavior : AnimationBehavior?) : self
        jinit_IndexedAnimation(animationBehavior)
        jfields_ImageArrayAnimation()
        self.setImageArray(imageArray)
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
    

    def getImage(index : Int) : Image?
        index = index.to_i32!
        return @imageArray.not_nil![index]
    end
    

    def getImageArray : Array(Image?)?
        return @imageArray
    end
    

    def setImageArray(imageArray : Array(Image?)?) : Nil
        @imageArray = imageArray
        @totalFrames = imageArray.not_nil!.size
        @circularIndexUtil = CircularIndexUtil.createInstance(@totalFrames)
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        graphics.not_nil!.drawImage(@imageArray.not_nil![@circularIndexUtil.not_nil!.getIndex()], x, y, @anchor)
    end
end

