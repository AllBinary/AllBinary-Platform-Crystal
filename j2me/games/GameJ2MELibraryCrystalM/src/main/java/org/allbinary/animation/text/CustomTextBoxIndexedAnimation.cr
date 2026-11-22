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

class CustomTextBoxIndexedAnimation < IndexedAnimation
    include RawKeyEventListener
    include UpdateMyFontInterface
    include TextInterface
    @customTextBox : CustomTextBox? = nil

    def jf_customTextBox : CustomTextBox?
        @customTextBox
    end

    def jf_customTextBox=(value : CustomTextBox?) : CustomTextBox?
        @customTextBox = value
    end
    @lastText : String = ""

    def jf_lastText : String
        @lastText
    end

    def jf_lastText=(value : String) : String
        @lastText = value
    end
    @hasChanged : Bool = false

    def jf_hasChanged : Bool
        @hasChanged
    end

    def jf_hasChanged=(value : Bool) : Bool
        @hasChanged = value
    end
    @textChangeListener : TextChangeListener? = nil

    def jf_textChangeListener : TextChangeListener?
        @textChangeListener
    end

    def jf_textChangeListener=(value : TextChangeListener?) : TextChangeListener?
        @textChangeListener = value
    end

    # Java field initializers run after the super constructor
    def jfields_CustomTextBoxIndexedAnimation : Nil
    
    @lastText = StringUtil.getInstance().not_nil!.jf_INIT_STRING
    @hasChanged = true
    @textChangeListener = TextChangeListener.getInstance()
    end
    

    def jinit_CustomTextBoxIndexedAnimation(customTextBox : CustomTextBox?) : self
        jinit_IndexedAnimation(AnimationBehavior.getInstance())
        jfields_CustomTextBoxIndexedAnimation()
        @customTextBox = customTextBox
        self
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        @customTextBox.not_nil!.getTextFieldItem().not_nil!.setForegroundBasicColorP(basicColor)
    end
    

    def setBackgroundBasicColorP(basicColor : BasicColor?) : Nil
        @customTextBox.not_nil!.getTextFieldItem().not_nil!.setBackgroundBasicColorP(basicColor)
    end
    

    def setTextWithOnMeasure(text : String, textChangeListener : TextChangeListener?) : Nil
        self.setText(text)
        @textChangeListener = textChangeListener
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @textChangeListener.not_nil!.onMeasure()
        @textChangeListener = TextChangeListener.getInstance()
    end
    

    def setText(text : String) : Nil
        if @lastText != text
            @hasChanged = true
            @lastText = text
            @customTextBox.not_nil!.getTextFieldItem().not_nil!.setString(text)
        end
    end
    

    def getText : String
        return @customTextBox.not_nil!.getTextFieldItem().not_nil!.getString()
    end
    

    def onEventRaw(keyCode : Int, deviceId : Int, repeated : Bool) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        @customTextBox.not_nil!.onEventRaw(keyCode, deviceId, repeated)
    end
    

    def getFontHeight : Int32
        return @customTextBox.not_nil!.getTextFieldItem().not_nil!.getFontHeight()
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @customTextBox.not_nil!.paintXY(graphics, x, y)
    end
    

    def paintThreedXYZ(graphics : Graphics?, x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
    end
    

    def getWidth : Int32
        return super()
    end
end

