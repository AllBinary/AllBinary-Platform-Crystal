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

class CanvasDrawLineString < JObject
    include UpdateMyFontInterface
    @drawStringUtil : DrawStringUtil? = nil

    def jf_drawStringUtil : DrawStringUtil?
        @drawStringUtil
    end

    def jf_drawStringUtil=(value : DrawStringUtil?) : DrawStringUtil?
        @drawStringUtil = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @x : Int32 = 0

    def jf_x : Int32
        @x
    end

    def jf_x=(value : Int32) : Int32
        @x = value
    end
    @y : Int32 = 0

    def jf_y : Int32
        @y
    end

    def jf_y=(value : Int32) : Int32
        @y = value
    end
    @fontHeight : Int32 = 0

    def jf_fontHeight : Int32
        @fontHeight
    end

    def jf_fontHeight=(value : Int32) : Int32
        @fontHeight = value
    end

    @@jst_NULL_CANVAS_DRAW_LINE_STRING : CanvasDrawLineString? = nil

    def self.jst_NULL_CANVAS_DRAW_LINE_STRING : CanvasDrawLineString?
        jclinit
        @@jst_NULL_CANVAS_DRAW_LINE_STRING
    end

    def self.jst_NULL_CANVAS_DRAW_LINE_STRING=(value : CanvasDrawLineString?) : CanvasDrawLineString?
        jclinit
        @@jst_NULL_CANVAS_DRAW_LINE_STRING = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_CANVAS_DRAW_LINE_STRING = CanvasDrawLineString.new.jinit_CanvasDrawLineString(0, 0)
    end

    # Java field initializers run after the super constructor
    def jfields_CanvasDrawLineString : Nil
    @drawStringUtil = DrawStringUtil.getInstance()
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    
    
    @fontHeight = 0
    end
    

    def jinit_CanvasDrawLineString(x : Int, y : Int) : self
        x = x.to_i32!
        y = y.to_i32!
        jfields_CanvasDrawLineString()
        @x = x
        @y = y
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @fontHeight = font.not_nil!.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics : Graphics?, string : String, line : Int) : Nil
        line = line.to_i32!
        @myFontProcessor.not_nil!.process(graphics)
        @drawStringUtil.not_nil!.drawCenterString(graphics, string, 0, string.not_nil!.length(), @x, @y &+ (line &* @fontHeight))
    end
end

