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

class CustomTextBoxIndexedAnimationFactory < JObject
    include AnimationInterfaceFactoryInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @scaleProperties : ScaleProperties? = nil

    def jf_scaleProperties : ScaleProperties?
        @scaleProperties
    end

    def jf_scaleProperties=(value : ScaleProperties?) : ScaleProperties?
        @scaleProperties = value
    end
    @maxLength : Int32 = 0

    def jf_maxLength : Int32
        @maxLength
    end

    def jf_maxLength=(value : Int32) : Int32
        @maxLength = value
    end

    # Java field initializers run after the super constructor
    def jfields_CustomTextBoxIndexedAnimationFactory : Nil
    @logUtil = LogUtil.getInstance()
    
    
    end
    

    def jinit_CustomTextBoxIndexedAnimationFactory(fontSize : Int, maxLength : Int) : self
        fontSize = fontSize.to_i32!
        maxLength = maxLength.to_i32!
        jfields_CustomTextBoxIndexedAnimationFactory()
        @scaleProperties = ScaleProperties.new.jinit_ScaleProperties()
        @scaleProperties.not_nil!.jf_scaleHeight = fontSize
        @maxLength = maxLength
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        abToGBUtil : ABToGBUtil? = ABToGBUtil.getInstance()
        abCanvas : AllBinaryGameCanvas? = JR.cast(abToGBUtil.not_nil!.jf_abCanvas, AllBinaryGameCanvas)
        font : Font? = Font.getFont(Font.jst_FACE_SYSTEM, Font.jst_STYLE_PLAIN, @scaleProperties.not_nil!.jf_scaleHeight)
        customTextBox : CustomTextBox? = CustomTextBox2.new.jinit_CustomTextBox2(abCanvas.not_nil!.getCustomCommandListener(), StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, @maxLength, TextField.jst_ANY, font, abCanvas.not_nil!.getLayerManager().not_nil!.getBackgroundBasicColor(), abCanvas.not_nil!.getLayerManager().not_nil!.getForegroundBasicColor())
        return CustomTextBoxIndexedAnimation.new.jinit_CustomTextBoxIndexedAnimation(customTextBox)
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
        fontSize : Int32 = @scaleProperties.not_nil!.jf_scaleHeight
        @scaleProperties = scaleProperties
        if @scaleProperties.not_nil!.jf_scaleHeight < 6
            @scaleProperties.not_nil!.jf_scaleHeight = fontSize
        end
    end
end

