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
# package org.allbinary.animation.text

class CustomTextAnimationFactory < JObject
    include AnimationInterfaceFactoryInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @animationBehaviorFactory : AnimationBehaviorFactory? = nil

    def jf_animationBehaviorFactory : AnimationBehaviorFactory?
        @animationBehaviorFactory
    end

    def jf_animationBehaviorFactory=(value : AnimationBehaviorFactory?) : AnimationBehaviorFactory?
        @animationBehaviorFactory = value
    end
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end
    @text : String = ""

    def jf_text : String
        @text
    end

    def jf_text=(value : String) : String
        @text = value
    end
    @initScaleHeight : Int32 = 0

    def jf_initScaleHeight : Int32
        @initScaleHeight
    end

    def jf_initScaleHeight=(value : Int32) : Int32
        @initScaleHeight = value
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
    @font : Font? = nil

    def jf_font : Font?
        @font
    end

    def jf_font=(value : Font?) : Font?
        @font = value
    end
    @scaleProperties : ScaleProperties? = nil

    def jf_scaleProperties : ScaleProperties?
        @scaleProperties
    end

    def jf_scaleProperties=(value : ScaleProperties?) : ScaleProperties?
        @scaleProperties = value
    end
    

    def self.createDXY(text : String, fontSize : Int, dx : Int, dy : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : CustomTextAnimationFactory?
        fontSize = fontSize.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        customTextAnimationFactory : CustomTextAnimationFactory? = CustomTextAnimationFactory.new.jinit_CustomTextAnimationFactory(text, fontSize, animationBehaviorFactory)
        customTextAnimationFactory.not_nil!.jf_dx = dx
        customTextAnimationFactory.not_nil!.jf_dy = dy
        return customTextAnimationFactory
    end

    # Java field initializers run after the super constructor
    def jfields_CustomTextAnimationFactory : Nil
    @logUtil = LogUtil.getInstance()
    
    @basicColor = BasicColorFactory.getInstance().not_nil!.jf_BLACK
    
    
    @dx = 0
    @dy = 0
    
    
    end
    

    def jinit_CustomTextAnimationFactory(text : String, fontSize : Int, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        fontSize = fontSize.to_i32!
        jfields_CustomTextAnimationFactory()
        @scaleProperties = ScaleProperties.new.jinit_ScaleProperties()
        @text = text
        @scaleProperties.not_nil!.jf_scaleHeight = fontSize &- (fontSize.tdiv(4))
        @initScaleHeight = @scaleProperties.not_nil!.jf_scaleHeight
        @animationBehaviorFactory = animationBehaviorFactory
        @font = Font.getFont(Font.jst_FACE_SYSTEM, Font.jst_STYLE_PLAIN, @initScaleHeight)
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        customTextAnimation : CustomTextAnimation? = nil
        if @dx != 0 || @dy != 0
            customTextAnimation = AdjustCustomTextAnimation.new.jinit_AdjustCustomTextAnimation(@text, @scaleProperties.not_nil!.jf_scaleHeight, @dx, @dy, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        else
            customTextAnimation = CustomTextAnimation.new.jinit_CustomTextAnimation(@text, @scaleProperties.not_nil!.jf_scaleHeight, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
        end
        customTextAnimation.not_nil!.setBasicColorP(@basicColor)
        return customTextAnimation
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
    

    def getWidth : Int32
        return @font.not_nil!.stringWidth(@text)
    end
    

    def getHeight : Int32
        return @font.not_nil!.getHeight()
    end
end

