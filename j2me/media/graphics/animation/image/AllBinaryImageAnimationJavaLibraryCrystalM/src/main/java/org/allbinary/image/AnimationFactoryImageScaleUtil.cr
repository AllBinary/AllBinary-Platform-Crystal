# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.image

class AnimationFactoryImageScaleUtil < JObject
    @imageScaleUtil : ImageJ2MEScaleUtil? = nil

    def jf_imageScaleUtil : ImageJ2MEScaleUtil?
        @imageScaleUtil
    end

    def jf_imageScaleUtil=(value : ImageJ2MEScaleUtil?) : ImageJ2MEScaleUtil?
        @imageScaleUtil = value
    end

    @@jst_instance : AnimationFactoryImageScaleUtil? = nil

    def self.jst_instance : AnimationFactoryImageScaleUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AnimationFactoryImageScaleUtil?) : AnimationFactoryImageScaleUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AnimationFactoryImageScaleUtil.new.jinit_AnimationFactoryImageScaleUtil()
    end
    

    def self.getInstance : AnimationFactoryImageScaleUtil?
        return AnimationFactoryImageScaleUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AnimationFactoryImageScaleUtil : Nil
    @imageScaleUtil = ImageJ2MEScaleUtil.getInstance()
    end

    def jinit_AnimationFactoryImageScaleUtil : self
        jfields_AnimationFactoryImageScaleUtil()
        self
    end
    

    def createImage(image : Image?, width : Int, height : Int, scaleWidth : Int, scaleHeight : Int) : Image?
        width = width.to_i32!
        height = height.to_i32!
        scaleWidth = scaleWidth.to_i32!
        scaleHeight = scaleHeight.to_i32!
        scaledImage : Image? = nil
        if scaleWidth != 0 && scaleHeight != 0
            scaleX : Float32 = ((scaleWidth).to_f32) / ((width).to_f32)
            scaleY : Float32 = ((scaleHeight).to_f32) / ((height).to_f32)
            if (scaleX == 1.0_f32 && scaleY == 1.0_f32) || (scaleX == 0.0_f32 || scaleY == 0.0_f32)
                scaledImage = image
            else
                scaledWidth : Int32 = JR.d2i((scaleX * (width).to_f32))
                scaledHeight : Int32 = JR.d2i((scaleY * (height).to_f32))
                scaledImage = @imageScaleUtil.not_nil!.scale(image, scaledWidth, scaledHeight)
            end
        else
            scaledImage = image
        end
        return scaledImage
    end
    

    def processAdjust(baseImageAnimationFactory : BaseImageAnimationFactory?) : Nil
        scaleProperties : ScaleProperties? = baseImageAnimationFactory.not_nil!.getScalePropertiesP()
        if scaleProperties.not_nil!.jf_scaleWidth != 0 && scaleProperties.not_nil!.jf_scaleHeight != 0
            animationFactoryInitializationVisitor : AnimationFactoryInitializationVisitor? = baseImageAnimationFactory.not_nil!.getAnimationFactoryInitializationVisitorP()
            scaleX : Float32 = ((scaleProperties.not_nil!.jf_scaleWidth).to_f32) / ((animationFactoryInitializationVisitor.not_nil!.jf_width).to_f32)
            scaleY : Float32 = ((scaleProperties.not_nil!.jf_scaleHeight).to_f32) / ((animationFactoryInitializationVisitor.not_nil!.jf_height).to_f32)
            if (scaleX == 1.0_f32 && scaleY == 1.0_f32) || (scaleX == 0.0_f32 || scaleY == 0.0_f32)
            else
                animationFactoryInitializationVisitor.not_nil!.jf_dx = JR.d2i(((animationFactoryInitializationVisitor.not_nil!.jf_originalDx).to_f32 * scaleX))
                animationFactoryInitializationVisitor.not_nil!.jf_dy = JR.d2i(((animationFactoryInitializationVisitor.not_nil!.jf_originalDy).to_f32 * scaleY))
            end
        else
        end
    end
end

