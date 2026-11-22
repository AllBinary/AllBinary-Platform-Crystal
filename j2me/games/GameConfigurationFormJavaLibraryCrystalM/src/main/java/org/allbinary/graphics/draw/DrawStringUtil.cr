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

class DrawStringUtil < JObject
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

    @@jst_instance : DrawStringUtil? = nil

    def self.jst_instance : DrawStringUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DrawStringUtil?) : DrawStringUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DrawStringUtil.new.jinit_DrawStringUtil()
    end
    

    def self.getInstance : DrawStringUtil?
        return DrawStringUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_DrawStringUtil : Nil
    @j_EMPTY_STRING = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @anchor = Anchor.jst_TOP_LEFT
    end

    def jinit_DrawStringUtil : self
        jfields_DrawStringUtil()
        self
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
    

    def drawCenterStrings(graphics : Graphics?, stringArray : Array(String)?, maxWidth : Int, charHeight : Int, x : Int, y : Int) : Nil
        maxWidth = maxWidth.to_i32!
        charHeight = charHeight.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        extraLines : Int32 = 0
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
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
                    self.drawCenterString(graphics, string, offset, currentLength, x, y &+ ((index &+ ((extraLines &+= 1) &- 1)) &* charHeight))
                    offset = offset &+ currentLength
                    currentLength = linePortion
                end
                extraLines &-= 1
            end
        end
    end
end

