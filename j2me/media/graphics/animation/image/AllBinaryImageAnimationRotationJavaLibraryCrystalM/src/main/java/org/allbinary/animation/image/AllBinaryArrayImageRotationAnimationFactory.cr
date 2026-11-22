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

class AllBinaryArrayImageRotationAnimationFactory < BaseImageAnimationFactory
    @imageArray : Array(Image?)? = nil

    def jf_imageArray : Array(Image?)?
        @imageArray
    end

    def jf_imageArray=(value : Array(Image?)?) : Array(Image?)?
        @imageArray = value
    end
    @angleIncrement : Int32 = 0

    def jf_angleIncrement : Int32
        @angleIncrement
    end

    def jf_angleIncrement=(value : Int32) : Int32
        @angleIncrement = value
    end
    

    def self.createFactory(image : Image?, dx : Int, dy : Int) : AllBinaryArrayImageRotationAnimationFactory?
        dx = dx.to_i32!
        dy = dy.to_i32!
        arrayImageRotationAnimationFactory : AllBinaryArrayImageRotationAnimationFactory? = AllBinaryArrayImageRotationAnimationFactory.new.jinit_AllBinaryArrayImageRotationAnimationFactory(image, image.not_nil!.getWidth(), image.not_nil!.getHeight(), ((AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!).to_i32.tdiv(GameConfigurationCentral.getInstance().not_nil!.getGameControlFidelity()), AnimationBehaviorFactory.getInstance())
        arrayImageRotationAnimationFactory.not_nil!.initDXY(dx, dy)
        return arrayImageRotationAnimationFactory
    end
    

    def self.createFactoryA(image : Image?, dx : Int, dy : Int, angleIncrement : Int) : AllBinaryArrayImageRotationAnimationFactory?
        dx = dx.to_i32!
        dy = dy.to_i32!
        angleIncrement = angleIncrement.to_i32!
        arrayImageRotationAnimationFactory : AllBinaryArrayImageRotationAnimationFactory? = AllBinaryArrayImageRotationAnimationFactory.new.jinit_AllBinaryArrayImageRotationAnimationFactory(image, image.not_nil!.getWidth(), image.not_nil!.getHeight(), angleIncrement, AnimationBehaviorFactory.getInstance())
        arrayImageRotationAnimationFactory.not_nil!.initDXY(dx, dy)
        return arrayImageRotationAnimationFactory
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinaryArrayImageRotationAnimationFactory : Nil
    @imageArray = NullImage.jst_NULL_IMAGE_ARRAY
    
    end
    

    def jinit_AllBinaryArrayImageRotationAnimationFactory(image : Image?, width : Int, height : Int, angleIncrement : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        width = width.to_i32!
        height = height.to_i32!
        angleIncrement = angleIncrement.to_i32!
        jinit_BaseImageAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        jfields_AllBinaryArrayImageRotationAnimationFactory()
        @angleIncrement = angleIncrement
        self.init()
        self
    end
    

    def init : Nil
        self.setImageArray(ImageToRotationImageArrayUtil.getInstance().not_nil!.generate(self.getImage(), self.getAngleIncrement(), (AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!))
    end
    

    def initDXY(dx : Int, dy : Int) : Nil
        dx = dx.to_i32!
        dy = dy.to_i32!
        @animationFactoryInitializationVisitor.not_nil!.jf_dx = dx
        @animationFactoryInitializationVisitor.not_nil!.jf_dy = dy
        @animationFactoryInitializationVisitor.not_nil!.jf_originalDx = dx
        @animationFactoryInitializationVisitor.not_nil!.jf_originalDy = dy
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        scaledImageArray : Array(Image?)? = Array(Image?).new(@imageArray.not_nil!.size, nil)
        size : Int32 = scaledImageArray.not_nil!.size
        image : Image? = self.getImage()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            scaledImageArray.not_nil![index] = @animationFactoryImageScaleUtil.not_nil!.createImage(image, image.not_nil!.getWidth(), image.not_nil!.getHeight(), @scaleProperties.not_nil!.jf_scaleWidth, @scaleProperties.not_nil!.jf_scaleHeight)
        end
        if @animationFactoryInitializationVisitor.not_nil!.jf_dx != 0 || @animationFactoryInitializationVisitor.not_nil!.jf_dy != 0
            @animationFactoryImageScaleUtil.not_nil!.processAdjust(self)
            return AdjustedImageArrayRotationAnimation.new.jinit_AdjustedImageArrayRotationAnimation(scaledImageArray, AngleInfo.getInstance((self.getAngleIncrement()).to_i16!), (AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!, @animationFactoryInitializationVisitor.not_nil!.jf_dx, @animationFactoryInitializationVisitor.not_nil!.jf_dy, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        else
            return ImageArrayRotationAnimation.new.jinit_ImageArrayRotationAnimation(scaledImageArray, AngleInfo.getInstance((self.getAngleIncrement()).to_i16!), (AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        end
        return nil
    end
    

    def setImageArray(imageArray : Array(Image?)?) : Nil
        @imageArray = imageArray
    end
    

    def getAngleIncrement : Int32
        return @angleIncrement
    end
end

