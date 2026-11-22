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

class ImageArrayBaseRotationAnimation < RotationAnimation
    @imageModifierUtil : ImageModifierUtil? = nil

    def jf_imageModifierUtil : ImageModifierUtil?
        @imageModifierUtil
    end

    def jf_imageModifierUtil=(value : ImageModifierUtil?) : ImageModifierUtil?
        @imageModifierUtil = value
    end
    @originalImageArray : Array(Image?)? = nil

    def jf_originalImageArray : Array(Image?)?
        @originalImageArray
    end

    def jf_originalImageArray=(value : Array(Image?)?) : Array(Image?)?
        @originalImageArray = value
    end
    @imageArray : Array(Image?)? = nil

    def jf_imageArray : Array(Image?)?
        @imageArray
    end

    def jf_imageArray=(value : Array(Image?)?) : Array(Image?)?
        @imageArray = value
    end
    @currentImage : Image? = nil

    def jf_currentImage : Image?
        @currentImage
    end

    def jf_currentImage=(value : Image?) : Image?
        @currentImage = value
    end
    @totalFrames : Int32 = 0

    def jf_totalFrames : Int32
        @totalFrames
    end

    def jf_totalFrames=(value : Int32) : Int32
        @totalFrames = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end

    # Java field initializers run after the super constructor
    def jfields_ImageArrayBaseRotationAnimation : Nil
    @imageModifierUtil = ImageModifierUtil.getInstanceOrCreate()
    
    @imageArray = NullImage.jst_NULL_IMAGE_ARRAY
    
    
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_ImageArrayBaseRotationAnimation(originalImageArray : Array(Image?)?, angleInfo : AngleInfo?, animationBehavior : AnimationBehavior?) : self
        jinit_RotationAnimation(angleInfo, CircularIndexUtil.createInstance(360.tdiv(((angleInfo.not_nil!.getAngleIncrementInfo().not_nil!.getAngleIncrement()).to_i32!).to_i32)), animationBehavior)
        jfields_ImageArrayBaseRotationAnimation()
        @originalImageArray = originalImageArray
        self.setImageArray(@imageModifierUtil.not_nil!.getImageArray(originalImageArray))
        @currentImage = @imageArray.not_nil![@circularIndexUtil.not_nil!.getIndex()]
        self
    end
    

    def getAnimationSize : Int32
        return self.getSize()
    end
    

    def setAlpha(alpha : Int) : Nil
        alpha = alpha.to_i32!
        if @alphaP != alpha
            super(alpha)
            @imageModifierUtil.not_nil!.reset()
            index : Int32 = @circularIndexUtil.not_nil!.getIndex()
            @imageModifierUtil.not_nil!.setAlpha(@originalImageArray.not_nil![index], @imageArray.not_nil![index], index, @alphaP)
        end
    end
    

    def nextRotation : Nil
        super()
        index : Int32 = @circularIndexUtil.not_nil!.getIndex()
        @imageModifierUtil.not_nil!.setAlpha(@originalImageArray.not_nil![index], @imageArray.not_nil![index], index, @alphaP)
        @currentImage = @imageArray.not_nil![index]
    end
    

    def previousRotation : Nil
        super()
        index : Int32 = @circularIndexUtil.not_nil!.getIndex()
        @imageModifierUtil.not_nil!.setAlpha(@originalImageArray.not_nil![index], @imageArray.not_nil![index], index, @alphaP)
        @currentImage = @imageArray.not_nil![index]
    end
    

    def setFrame(index2 : Int) : Nil
        index2 = index2.to_i32!
        super(index2)
        index : Int32 = @circularIndexUtil.not_nil!.getIndex()
        @imageModifierUtil.not_nil!.setAlpha(@originalImageArray.not_nil![index], @imageArray.not_nil![index], index, @alphaP)
        @currentImage = @imageArray.not_nil![index]
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def setImageArray(imageArray : Array(Image?)?) : Nil
        @imageArray = imageArray
        @totalFrames = imageArray.not_nil!.size
        @circularIndexUtil = CircularIndexUtil.createInstance(@totalFrames)
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        graphics.not_nil!.drawImage(@currentImage, x, y, @anchor)
    end
    

    def close : Nil
        disposalUtil : DisposalUtil? = DisposalUtil.getInstance()
        size2 : Int32 = @imageArray.not_nil!.size
        index = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size2
            disposalUtil.not_nil!.disposeImage(@imageArray.not_nil![index])
        end
        size : Int32 = @originalImageArray.not_nil!.size
        index = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            disposalUtil.not_nil!.disposeImage(@originalImageArray.not_nil![index])
        end
        disposalUtil.not_nil!.disposeImage(@currentImage)
    end
    

    def finalize : Nil
        disposalUtil : DisposalUtil? = DisposalUtil.getInstance()
        size2 : Int32 = @imageArray.not_nil!.size
        index = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < size2
            disposalUtil.not_nil!.disposeImage(@imageArray.not_nil![index])
        end
        size : Int32 = @originalImageArray.not_nil!.size
        index = 0
        jfor4 = false
        while true
            if jfor4
                index &+= 1
            end
            jfor4 = true
            break unless index < size
            disposalUtil.not_nil!.disposeImage(@originalImageArray.not_nil![index])
        end
        disposalUtil.not_nil!.disposeImage(@currentImage)
    end
end

