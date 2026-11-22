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
# package org.allbinary.image.sprite

class AnimationFactorySpriteScaleUtil < JObject
    @imageCache : ImageCache? = nil

    def jf_imageCache : ImageCache?
        @imageCache
    end

    def jf_imageCache=(value : ImageCache?) : ImageCache?
        @imageCache = value
    end
    @imageScaleUtil : ImageScaleUtil? = nil

    def jf_imageScaleUtil : ImageScaleUtil?
        @imageScaleUtil
    end

    def jf_imageScaleUtil=(value : ImageScaleUtil?) : ImageScaleUtil?
        @imageScaleUtil = value
    end
    @openGLUtil : OpenGLUtil? = nil

    def jf_openGLUtil : OpenGLUtil?
        @openGLUtil
    end

    def jf_openGLUtil=(value : OpenGLUtil?) : OpenGLUtil?
        @openGLUtil = value
    end
    @j2seMath : J2SEMath? = nil

    def jf_j2seMath : J2SEMath?
        @j2seMath
    end

    def jf_j2seMath=(value : J2SEMath?) : J2SEMath?
        @j2seMath = value
    end
    @openGLESImageExclusionUtil : OpenGLESImageExclusionUtil? = nil

    def jf_openGLESImageExclusionUtil : OpenGLESImageExclusionUtil?
        @openGLESImageExclusionUtil
    end

    def jf_openGLESImageExclusionUtil=(value : OpenGLESImageExclusionUtil?) : OpenGLESImageExclusionUtil?
        @openGLESImageExclusionUtil = value
    end

    @@jst_instance : AnimationFactorySpriteScaleUtil? = nil

    def self.jst_instance : AnimationFactorySpriteScaleUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AnimationFactorySpriteScaleUtil?) : AnimationFactorySpriteScaleUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AnimationFactorySpriteScaleUtil.new.jinit_AnimationFactorySpriteScaleUtil()
    end
    

    def self.getInstance : AnimationFactorySpriteScaleUtil?
        return AnimationFactorySpriteScaleUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AnimationFactorySpriteScaleUtil : Nil
    @imageCache = ImageCacheFactory.getInstance()
    @imageScaleUtil = ImageScaleUtil.getInstance()
    @openGLUtil = OpenGLUtil.getInstance()
    @j2seMath = J2SEMath.getInstance()
    @openGLESImageExclusionUtil = OpenGLESImageExclusionUtil.getInstance()
    end

    def jinit_AnimationFactorySpriteScaleUtil : self
        jfields_AnimationFactorySpriteScaleUtil()
        self
    end
    

    def createImage(image : Image?, width : Int, height : Int, scaleWidth : Int, scaleHeight : Int) : Sprite?
        width = width.to_i32!
        height = height.to_i32!
        scaleWidth = scaleWidth.to_i32!
        scaleHeight = scaleHeight.to_i32!
        spriteFactory : SpriteFactory? = SpriteFactory.getInstance()
        sprite : Sprite? = nil
        scaledImage : Image? = nil
        if scaleWidth != 0 && scaleHeight != 0
            scaleX : Float32 = ((scaleWidth).to_f32) / ((width).to_f32)
            scaleY : Float32 = ((scaleHeight).to_f32) / ((height).to_f32)
            if (scaleX == 1.0_f32 && scaleY == 1.0_f32) || (scaleX == 0.0_f32 || scaleY == 0.0_f32)
                scaledImage = @openGLUtil.not_nil!.addImage(image)
                sprite = spriteFactory.not_nil!.createSprite(scaledImage, width, height)
            else
                if @openGLESImageExclusionUtil.not_nil!.isCustomScaling(image)
                    width2 : Int32 = @j2seMath.not_nil!.round(((scaleWidth)).to_f32 - 0.5_f32)
                    height2 : Int32 = @j2seMath.not_nil!.round(((scaleHeight)).to_f32 - 0.5_f32)
                    multiplesOf16Width : Int32 = width2.tdiv(16)
                    by16Width : Int32 = multiplesOf16Width &* 16
                    scaleX = ((by16Width).to_f32) / (width).to_f32
                    multiplesOf16Height : Int32 = height2.tdiv(16)
                    by16Height : Int32 = multiplesOf16Height &* 16
                    scaleY = ((by16Height).to_f32) / (height).to_f32
                    if scaleWidth < width
                        scaleX = scaleX * 2.35_f32
                    end
                    if scaleHeight < height
                        scaleY = scaleY * 2.35_f32
                    end
                end
                scaledImage = @imageScaleUtil.not_nil!.createImage2(@imageCache, image, scaleX, 1.0_f32, scaleY, 1.0_f32, true)
                sprite = spriteFactory.not_nil!.createSprite(scaledImage, JR.d2i(((width).to_f32 * scaleX)), JR.d2i(((height).to_f32 * scaleY)))
            end
        else
            scaledImage = @openGLUtil.not_nil!.addImage(image)
            sprite = spriteFactory.not_nil!.createSprite(scaledImage, width, height)
        end
        return sprite
    end
end

