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
# package org.allbinary.animation.text

class CustomTextAnimation < TextAnimation
    include TextInterface
    @fontDebugFactory : FontDebugFactory? = nil

    def jf_fontDebugFactory : FontDebugFactory?
        @fontDebugFactory
    end

    def jf_fontDebugFactory=(value : FontDebugFactory?) : FontDebugFactory?
        @fontDebugFactory = value
    end
    @fontSize : Int32 = 0

    def jf_fontSize : Int32
        @fontSize
    end

    def jf_fontSize=(value : Int32) : Int32
        @fontSize = value
    end
    @font : Font? = nil

    def jf_font : Font?
        @font
    end

    def jf_font=(value : Font?) : Font?
        @font = value
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
    @textWidth : Int32 = 0

    def jf_textWidth : Int32
        @textWidth
    end

    def jf_textWidth=(value : Int32) : Int32
        @textWidth = value
    end

    # Java field initializers run after the super constructor
    def jfields_CustomTextAnimation : Nil
    @fontDebugFactory = FontDebugFactory.getInstance()
    
    
    @lastText = StringUtil.getInstance().not_nil!.jf_INIT_STRING
    @hasChanged = true
    
    end
    

    def jinit_CustomTextAnimation(text : String, fontSize : Int, animationBehavior : AnimationBehavior?) : self
        fontSize = fontSize.to_i32!
        jinit_TextAnimation(text, animationBehavior)
        jfields_CustomTextAnimation()
        @fontSize = fontSize
        @font = Font.getFont(Font.jst_FACE_SYSTEM, Font.jst_STYLE_PLAIN, fontSize)
        self
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @myFontProcessor.not_nil!.process(graphics)
        existingFont : Font? = graphics.not_nil!.getFont()
        @fontDebugFactory.not_nil!.setFont(@font, graphics)
        paintXYNoUpdate(graphics, x, y)
        @fontDebugFactory.not_nil!.setFont(existingFont, graphics)
    end
    

    def setScale(scaleX : Number, scaleY : Number) : Nil
        scaleX = scaleX.to_f32
        scaleY = scaleY.to_f32
        if scaleX != scaleY
            raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
        end
        @hasChanged = true
        @font = Font.getFont(Font.jst_FACE_SYSTEM, Font.jst_STYLE_PLAIN, JR.d2i(((@fontSize).to_f32 * scaleX)))
    end
    

    def setTextWithOnMeasure(text : String, textChangeListener : TextChangeListener?) : Nil
        super(text, textChangeListener)
    end
    

    def setText(text : String) : Nil
        if @lastText != text
            @hasChanged = true
            @lastText = text
            super(text)
        end
    end
    

    def getText : String
        return @lastText
    end
    

    def getWidth : Int32
        if @hasChanged
            @textWidth = @font.not_nil!.stringWidth(@textArrayP.not_nil![0])
            @hasChanged = false
        end
        return @textWidth
    end
    

    def getFontHeight : Int32
        return @font.not_nil!.getHeight()
    end
end

