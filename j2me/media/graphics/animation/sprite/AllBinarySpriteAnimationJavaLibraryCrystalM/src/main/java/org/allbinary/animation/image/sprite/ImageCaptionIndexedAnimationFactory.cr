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
# package org.allbinary.animation.image.sprite

class ImageCaptionIndexedAnimationFactory < JObject
    include AnimationInterfaceFactoryInterface
    @animationFactoryImageScaleUtil : AnimationFactoryImageScaleUtil? = nil

    def jf_animationFactoryImageScaleUtil : AnimationFactoryImageScaleUtil?
        @animationFactoryImageScaleUtil
    end

    def jf_animationFactoryImageScaleUtil=(value : AnimationFactoryImageScaleUtil?) : AnimationFactoryImageScaleUtil?
        @animationFactoryImageScaleUtil = value
    end
    @animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil? = nil

    def jf_animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil?
        @animationFactorySpriteScaleUtil
    end

    def jf_animationFactorySpriteScaleUtil=(value : AnimationFactorySpriteScaleUtil?) : AnimationFactorySpriteScaleUtil?
        @animationFactorySpriteScaleUtil = value
    end
    @captionImage : Image? = nil

    def jf_captionImage : Image?
        @captionImage
    end

    def jf_captionImage=(value : Image?) : Image?
        @captionImage = value
    end
    @spriteMovieImage : Image? = nil

    def jf_spriteMovieImage : Image?
        @spriteMovieImage
    end

    def jf_spriteMovieImage=(value : Image?) : Image?
        @spriteMovieImage = value
    end
    @frameWidth : Int32 = 0

    def jf_frameWidth : Int32
        @frameWidth
    end

    def jf_frameWidth=(value : Int32) : Int32
        @frameWidth = value
    end
    @frameHeight : Int32 = 0

    def jf_frameHeight : Int32
        @frameHeight
    end

    def jf_frameHeight=(value : Int32) : Int32
        @frameHeight = value
    end
    @captionDx : Int32 = 0

    def jf_captionDx : Int32
        @captionDx
    end

    def jf_captionDx=(value : Int32) : Int32
        @captionDx = value
    end
    @captionDy : Int32 = 0

    def jf_captionDy : Int32
        @captionDy
    end

    def jf_captionDy=(value : Int32) : Int32
        @captionDy = value
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
    @time : Int32 = 0

    def jf_time : Int32
        @time
    end

    def jf_time=(value : Int32) : Int32
        @time = value
    end
    @soundInterface : Sound? = nil

    def jf_soundInterface : Sound?
        @soundInterface
    end

    def jf_soundInterface=(value : Sound?) : Sound?
        @soundInterface = value
    end
    @scaleProperties : ScaleProperties? = nil

    def jf_scaleProperties : ScaleProperties?
        @scaleProperties
    end

    def jf_scaleProperties=(value : ScaleProperties?) : ScaleProperties?
        @scaleProperties = value
    end
    @animationBehaviorFactory : AnimationBehaviorFactory? = nil

    def jf_animationBehaviorFactory : AnimationBehaviorFactory?
        @animationBehaviorFactory
    end

    def jf_animationBehaviorFactory=(value : AnimationBehaviorFactory?) : AnimationBehaviorFactory?
        @animationBehaviorFactory = value
    end

    # Java field initializers run after the super constructor
    def jfields_ImageCaptionIndexedAnimationFactory : Nil
    @animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance()
    @animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    
    
    
    
    
    
    
    
    
    
    @scaleProperties = ScaleProperties.jst_instance
    
    end
    

    def jinit_ImageCaptionIndexedAnimationFactory(captionImage : Image?, spriteMovieImage : Image?, soundInterface : Sound?, frameWidth : Int, frameHeight : Int, captionDx : Int, captionDy : Int, dx : Int, dy : Int, time : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        frameWidth = frameWidth.to_i32!
        frameHeight = frameHeight.to_i32!
        captionDx = captionDx.to_i32!
        captionDy = captionDy.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        time = time.to_i32!
        jfields_ImageCaptionIndexedAnimationFactory()
        if animationBehaviorFactory == AnimationBehaviorFactory.getInstance()
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
        end
        @captionImage = captionImage
        @spriteMovieImage = spriteMovieImage
        @frameWidth = frameWidth
        @frameHeight = frameHeight
        @captionDx = captionDx
        @captionDy = captionDy
        @dx = dx
        @dy = dy
        @time = time
        @soundInterface = soundInterface
        @animationBehaviorFactory = animationBehaviorFactory
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        scaledImage : Image? = @animationFactoryImageScaleUtil.not_nil!.createImage(@captionImage, @captionImage.not_nil!.getWidth(), @captionImage.not_nil!.getHeight(), @scaleProperties.not_nil!.jf_scaleWidth, @scaleProperties.not_nil!.jf_scaleHeight)
        animationInterface : Animation? = ImageAnimation.new.jinit_ImageAnimation(scaledImage, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        sprite : Sprite? = @animationFactorySpriteScaleUtil.not_nil!.createImage(@spriteMovieImage, @frameWidth, @frameHeight, @scaleProperties.not_nil!.jf_scaleWidth, @scaleProperties.not_nil!.jf_scaleHeight)
        movieIndexedAnimationInterface : IndexedAnimation? = SpriteIndexedAnimation.new.jinit_SpriteIndexedAnimation(sprite, @spriteMovieImage, BasicColorUtil.getInstance().not_nil!.jf_ZERO_ARRAY, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        player : Player? = @soundInterface.not_nil!.getPlayerP()
        if (player).nil?
            raise (JException.new.jinit_JException("Sound Was not Initialized")).not_nil!
        end
        return CaptionIndexedAnimation.new.jinit_CaptionIndexedAnimation(animationInterface, movieIndexedAnimationInterface, player, @captionDx, @captionDy, @dx, @dy, @time, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
        @scaleProperties = scaleProperties
    end
end

