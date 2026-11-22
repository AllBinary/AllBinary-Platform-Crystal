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

class ImageAnimation < IndexedAnimation
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
    def jfields_ImageAnimation : Nil
    
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_ImageAnimation(image : Image?, animationBehavior : AnimationBehavior?) : self
        jinit_IndexedAnimation(animationBehavior)
        jfields_ImageAnimation()
        @image = image
        self
    end
    

    def getAnimationSize : Int32
        return self.getSize()
    end
    

    def nextFrame : Nil
    end
    

    def previousFrame : Nil
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
    end
    

    def getFrame : Int32
        return 0
    end
    

    def getSize : Int32
        return 1
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
    

    def close : Nil
        DisposalUtil.getInstance().not_nil!.disposeImage(@image)
    end
    

    def finalize : Nil
        DisposalUtil.getInstance().not_nil!.disposeImage(@image)
    end
end

