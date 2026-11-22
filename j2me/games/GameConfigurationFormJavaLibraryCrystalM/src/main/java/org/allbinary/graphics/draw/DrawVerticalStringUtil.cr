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
# package org.allbinary.graphics.draw

class DrawVerticalStringUtil < JObject
    @j_EMPTY_STRING : String = ""

    def jf_EMPTY_STRING : String
        @j_EMPTY_STRING
    end

    def jf_EMPTY_STRING=(value : String) : String
        @j_EMPTY_STRING = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end
    @charHeight : Int32 = 0

    def jf_charHeight : Int32
        @charHeight
    end

    def jf_charHeight=(value : Int32) : Int32
        @charHeight = value
    end
    @offsetY : Int32 = 0

    def jf_offsetY : Int32
        @offsetY
    end

    def jf_offsetY=(value : Int32) : Int32
        @offsetY = value
    end
    @offsetXArray : Array(Int32)? = nil

    def jf_offsetXArray : Array(Int32)?
        @offsetXArray
    end

    def jf_offsetXArray=(value : Array(Int32)?) : Array(Int32)?
        @offsetXArray = value
    end

    @@jst_instance : DrawVerticalStringUtil? = nil

    def self.jst_instance : DrawVerticalStringUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DrawVerticalStringUtil?) : DrawVerticalStringUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DrawVerticalStringUtil.new.jinit_DrawVerticalStringUtil()
    end
    

    def self.getInstance : DrawVerticalStringUtil?
        return DrawVerticalStringUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_DrawVerticalStringUtil : Nil
    @j_EMPTY_STRING = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @anchor = Anchor.jst_TOP_LEFT
    
    
    @offsetXArray = NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY
    end

    def jinit_DrawVerticalStringUtil : self
        jfields_DrawVerticalStringUtil()
        self
    end
    

    def updateMeasurement(graphics : Graphics?, string : String) : Nil
        openGLFeatureUtil : OpenGLFeatureUtil? = OpenGLFeatureUtil.getInstance()
        font : Font? = graphics.not_nil!.getFont()
        @charHeight = font.not_nil!.getHeight()
        @offsetY = 0
        if J2MEUtil.isHTML()
            @charHeight &+= 1
        elsif openGLFeatureUtil.not_nil!.isAnyThreed()
            @charHeight &+= 2
            if AndroidUtil.isAndroid()
            else
                @offsetY = 2 &+ (@charHeight &* 2.tdiv(3))
            end
        end
        size : Int32 = string.not_nil!.length()
        aChar : UInt16 = 0_u16
        offsetXArray : Array(Int32)? = Array(Int32).new(size, 0)
        index : Int32 = size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            aChar = string.not_nil!.charAt(index)
            if openGLFeatureUtil.not_nil!.isAnyThreed()
                offsetXArray.not_nil![index] = font.not_nil!.charWidth(aChar).tdiv(2)
            end
        end
        @offsetXArray = offsetXArray
    end
    

    def paintVerticle(graphics : Graphics?, string : String, x : Int, y : Int, anchor : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        anchor = anchor.to_i32!
        size : Int32 = string.not_nil!.length()
        aChar : UInt16 = 0_u16
        index : Int32 = size &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            aChar = string.not_nil!.charAt(index)
            graphics.not_nil!.drawChar(aChar, x &+ @offsetXArray.not_nil![index], y &+ (@charHeight &* index) &+ @offsetY, anchor)
        end
    end
    

    def drawCenterString(graphics : Graphics?, string : String, offset : Int, length : Int, x : Int, y : Int) : Nil
        offset = offset.to_i32!
        length = length.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        width : Int32 = (JR.shr(graphics.not_nil!.getFont().not_nil!.substringWidth(string, offset, length), 1))
        begin
            graphics.not_nil!.drawSubstring(string, offset, length, x &- width, y, @anchor)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append("Exception: stringLength: ").not_nil!.appendint(string.not_nil!.length()).not_nil!.append(" offset: ").not_nil!.appendint(offset).not_nil!.append(" currentLength: ").not_nil!.appendint(length).not_nil!.toString(), self, "drawCenterString")
            else
                raise jex1
            end
        end
    end
    

    def drawCenterStrings(graphics : Graphics?, stringArray : Array(String)?, maxWidth : Int, x : Int, y : Int) : Nil
        maxWidth = maxWidth.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        extraLines : Int32 = 0
        index : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < stringArray.not_nil!.size
            string : String = stringArray.not_nil![index]
            if string != @j_EMPTY_STRING
                width : Int32 = graphics.not_nil!.getFont().not_nil!.stringWidth(string)
                minTotalLines : Int32 = 1
                if width > maxWidth
                    minTotalLines = (width.tdiv(maxWidth)) &+ 1
                end
                linePortion : Int32 = string.not_nil!.length().tdiv(minTotalLines)
                offset : Int32 = 0
                currentLength : Int32 = linePortion
                size : Int32 = string.not_nil!.length()
                while offset < size
                    if offset &+ currentLength > size
                        currentLength = size &- offset
                    end
                    if offset &+ currentLength != size
                        while currentLength > 0 && stringArray.not_nil![index].not_nil!.charAt(offset &+ currentLength) != ' '.ord.to_u16
                            currentLength &-= 1
                        end
                        if currentLength <= 4
                            currentLength = linePortion
                        end
                    end
                    self.drawCenterString(graphics, string, offset, currentLength, x, y &+ ((index &+ ((extraLines &+= 1) &- 1)) &* @charHeight))
                    offset = offset &+ currentLength
                    currentLength = linePortion
                end
                extraLines &-= 1
            end
        end
    end
end

