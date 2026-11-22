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

class ImageBaseRotationAnimation < RotationAnimation
    @image : Image? = nil

    def jf_image : Image?
        @image
    end

    def jf_image=(value : Image?) : Image?
        @image = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end

    # Java field initializers run after the super constructor
    def jfields_ImageBaseRotationAnimation : Nil
    
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_ImageBaseRotationAnimation(image : Image?, angleInfo : AngleInfo?, totalAngle : Int, animationBehavior : AnimationBehavior?) : self
        totalAngle = totalAngle.to_i16!
        jinit_RotationAnimation(angleInfo, CircularIndexUtil.createInstance((totalAngle).to_i32.tdiv((angleInfo.not_nil!.getAngleIncrementInfo().not_nil!.getAngleIncrement()).to_i32)), animationBehavior)
        jfields_ImageBaseRotationAnimation()
        @image = image
        self
    end
    

    def getAnimationSize : Int32
        return self.getSize()
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        graphics.not_nil!.drawImage(@image, x, y, @anchor)
    end
    

    def getImage : Image?
        return @image
    end
    

    def getWidth : Int32
        return @image.not_nil!.getWidth()
    end
    

    def getHeight : Int32
        return @image.not_nil!.getHeight()
    end
    

    def close : Nil
        DisposalUtil.getInstance().not_nil!.disposeImage(@image)
    end
    

    def finalize : Nil
        DisposalUtil.getInstance().not_nil!.disposeImage(@image)
    end
end

