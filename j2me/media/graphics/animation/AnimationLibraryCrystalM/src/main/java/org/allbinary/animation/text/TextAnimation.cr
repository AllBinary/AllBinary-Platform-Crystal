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

class TextAnimation < IndexedAnimation
    include UpdateMyFontInterface
    @updateMyFontProcessor : MyFontProcessor? = nil

    def jf_updateMyFontProcessor : MyFontProcessor?
        @updateMyFontProcessor
    end

    def jf_updateMyFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @updateMyFontProcessor = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @textArrayP : Array(String)? = nil

    def jf_textArrayP : Array(String)?
        @textArrayP
    end

    def jf_textArrayP=(value : Array(String)?) : Array(String)?
        @textArrayP = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end
    @fontHeight : Int32 = 0

    def jf_fontHeight : Int32
        @fontHeight
    end

    def jf_fontHeight=(value : Int32) : Int32
        @fontHeight = value
    end
    @offsetY : Int32 = 0

    def jf_offsetY : Int32
        @offsetY
    end

    def jf_offsetY=(value : Int32) : Int32
        @offsetY = value
    end
    @textChangeListener : TextChangeListener? = nil

    def jf_textChangeListener : TextChangeListener?
        @textChangeListener
    end

    def jf_textChangeListener=(value : TextChangeListener?) : TextChangeListener?
        @textChangeListener = value
    end

    # Java field initializers run after the super constructor
    def jfields_TextAnimation : Nil
    @updateMyFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @myFontProcessor = @updateMyFontProcessor
    @textArrayP = StringUtil.getInstance().not_nil!.jf_ONE_EMPTY_STRING_ARRAY
    @anchor = Anchor.jst_TOP_LEFT
    @fontHeight = 0
    @offsetY = 0
    @textChangeListener = TextChangeListener.getInstance()
    end
    

    def jinit_TextAnimation(text : String, animationBehavior : AnimationBehavior?) : self
        jinit_IndexedAnimation(animationBehavior)
        jfields_TextAnimation()
        self.setText(text)
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @fontHeight = font.not_nil!.getHeight()
        adjustedFontHeight : Int32 = JR.d2i(-((@fontHeight).to_f64 * 2.00))
        @offsetY = (SWTJOGLProcessor.getInstance().not_nil!.isJOGL() ? adjustedFontHeight : 0)
        @textChangeListener.not_nil!.onMeasure()
        @textChangeListener = TextChangeListener.getInstance()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def nextFrame : Nil
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @myFontProcessor.not_nil!.process(graphics)
        self.paintXYNoUpdate(graphics, x, y)
    end
    

    def paintXYNoUpdate(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @basicSetColorUtil.not_nil!.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        size : Int32 = @textArrayP.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            graphics.not_nil!.drawString(@textArrayP.not_nil![index], x, y &+ @offsetY &+ (index &* @fontHeight), @anchor)
        end
    end
    

    def setTextWithOnMeasure(text : String, textChangeListener : TextChangeListener?) : Nil
        self.setText(text)
        @textChangeListener = textChangeListener
    end
    

    def setText(text : String) : Nil
        list : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        if text.not_nil!.length() > 0
            index = 0
            startIndex : Int32 = 0
            endIndex : Int32 = 0
            while index >= 0
                startIndex = index
                index = text.not_nil!.indexOf('\n'.ord.to_u16, startIndex)
                endIndex = index
                if index < 0
                    endIndex = text.not_nil!.length()
                end
                list.not_nil!.add(text.not_nil!.substring(startIndex, endIndex))
                if index < 0
                    break
                end
                index &+= 1
            end
        end
        if list.not_nil!.size() > 0
            textArray : Array(String)? = Array(String).new(list.not_nil!.size(), "")
            size : Int32 = list.not_nil!.size()
            index = 0
            jfor2 = false
            while true
                if jfor2
                    index &+= 1
                end
                jfor2 = true
                break unless index < size
                textArray.not_nil![index] = JR.castString(list.not_nil!.get(index))
            end
            @textArrayP = textArray
        else
            @textArrayP = StringUtil.getInstance().not_nil!.jf_ONE_EMPTY_STRING_ARRAY
        end
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def getTextArray : Array(String)?
        return @textArrayP
    end
    

    def getFontHeight : Int32
        return @fontHeight
    end
end

