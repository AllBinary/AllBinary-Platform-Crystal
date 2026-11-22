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

class BaseImageAnimationFactory < JObject
    include AnimationInterfaceFactoryInterface
    @animationFactoryImageScaleUtil : AnimationFactoryImageScaleUtil? = nil

    def jf_animationFactoryImageScaleUtil : AnimationFactoryImageScaleUtil?
        @animationFactoryImageScaleUtil
    end

    def jf_animationFactoryImageScaleUtil=(value : AnimationFactoryImageScaleUtil?) : AnimationFactoryImageScaleUtil?
        @animationFactoryImageScaleUtil = value
    end
    @image : Image? = nil

    def jf_image : Image?
        @image
    end

    def jf_image=(value : Image?) : Image?
        @image = value
    end
    @animationBehaviorFactory : AnimationBehaviorFactory? = nil

    def jf_animationBehaviorFactory : AnimationBehaviorFactory?
        @animationBehaviorFactory
    end

    def jf_animationBehaviorFactory=(value : AnimationBehaviorFactory?) : AnimationBehaviorFactory?
        @animationBehaviorFactory = value
    end
    @sequenceArray : Array(Int32)? = nil

    def jf_sequenceArray : Array(Int32)?
        @sequenceArray
    end

    def jf_sequenceArray=(value : Array(Int32)?) : Array(Int32)?
        @sequenceArray = value
    end
    @animationFactoryInitializationVisitor : AnimationFactoryInitializationVisitor? = nil

    def jf_animationFactoryInitializationVisitor : AnimationFactoryInitializationVisitor?
        @animationFactoryInitializationVisitor
    end

    def jf_animationFactoryInitializationVisitor=(value : AnimationFactoryInitializationVisitor?) : AnimationFactoryInitializationVisitor?
        @animationFactoryInitializationVisitor = value
    end
    @scaleProperties : ScaleProperties? = nil

    def jf_scaleProperties : ScaleProperties?
        @scaleProperties
    end

    def jf_scaleProperties=(value : ScaleProperties?) : ScaleProperties?
        @scaleProperties = value
    end
    

    def self.createFactoryBase(image : Image?, sequenceArray : Array(Int32)?, width : Int, height : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : BaseImageAnimationFactory?
        width = width.to_i32!
        height = height.to_i32!
        return BaseImageAnimationFactory.new.jinit_BaseImageAnimationFactory(image, sequenceArray, width, height, 0, 0, animationBehaviorFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_BaseImageAnimationFactory : Nil
    @animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance()
    
    
    
    
    @scaleProperties = ScaleProperties.jst_instance
    end
    

    def jinit_BaseImageAnimationFactory(image : Image?, sequenceArray : Array(Int32)?, width : Int, height : Int, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        width = width.to_i32!
        height = height.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        jfields_BaseImageAnimationFactory()
        @animationFactoryInitializationVisitor = AnimationFactoryInitializationVisitor.new.jinit_AnimationFactoryInitializationVisitor()
        @image = image
        @animationFactoryInitializationVisitor.not_nil!.jf_width = width
        @animationFactoryInitializationVisitor.not_nil!.jf_height = height
        @animationBehaviorFactory = animationBehaviorFactory
        @sequenceArray = sequenceArray
        @animationFactoryInitializationVisitor.not_nil!.jf_dx = dx
        @animationFactoryInitializationVisitor.not_nil!.jf_dy = dy
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        return NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(instanceId)
    end
    

    def getImage : Image?
        return @image
    end
    

    def getSequenceArray : Array(Int32)?
        return @sequenceArray
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
        @scaleProperties = scaleProperties
        if @scaleProperties.not_nil!.jf_shouldScale
            @scaleProperties.not_nil!.jf_scaleWidth = JR.d2i(((@animationFactoryInitializationVisitor.not_nil!.jf_width).to_f32 * @scaleProperties.not_nil!.jf_scaleX))
            @scaleProperties.not_nil!.jf_scaleHeight = JR.d2i(((@animationFactoryInitializationVisitor.not_nil!.jf_height).to_f32 * @scaleProperties.not_nil!.jf_scaleY))
        else
        end
    end
    

    def getAnimationFactoryInitializationVisitorP : AnimationFactoryInitializationVisitor?
        return @animationFactoryInitializationVisitor
    end
    

    def getScalePropertiesP : ScaleProperties?
        return @scaleProperties
    end
    

    def toString : String
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        commonLabels : CommonLabels? = CommonLabels.getInstance()
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(super())
        stringBuffer.not_nil!.append(commonLabels.not_nil!.jf_HEIGHT_LABEL)
        stringBuffer.not_nil!.appendint(@image.not_nil!.getHeight())
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(@animationFactoryInitializationVisitor.not_nil!.toString())
        return stringBuffer.not_nil!.toString()
    end
end

