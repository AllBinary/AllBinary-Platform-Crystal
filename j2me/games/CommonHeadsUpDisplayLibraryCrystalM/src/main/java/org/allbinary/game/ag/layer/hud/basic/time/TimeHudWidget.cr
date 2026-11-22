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
# package org.allbinary.game.ag.layer.hud.basic.time

class TimeHudWidget < BasicHud
    @j_TIME_STRING : String = ""

    def jf_TIME_STRING : String
        @j_TIME_STRING
    end

    def jf_TIME_STRING=(value : String) : String
        @j_TIME_STRING = value
    end
    @j_TIME_CHAR_ARRAY : Array(UInt16)? = nil

    def jf_TIME_CHAR_ARRAY : Array(UInt16)?
        @j_TIME_CHAR_ARRAY
    end

    def jf_TIME_CHAR_ARRAY=(value : Array(UInt16)?) : Array(UInt16)?
        @j_TIME_CHAR_ARRAY = value
    end
    @offset : Int32 = 0

    def jf_offset : Int32
        @offset
    end

    def jf_offset=(value : Int32) : Int32
        @offset = value
    end
    @string : Array(UInt16)? = nil

    def jf_string : Array(UInt16)?
        @string
    end

    def jf_string=(value : Array(UInt16)?) : Array(UInt16)?
        @string = value
    end
    @totalDigits : Int32 = 0

    def jf_totalDigits : Int32
        @totalDigits
    end

    def jf_totalDigits=(value : Int32) : Int32
        @totalDigits = value
    end
    @timer : HudTimer? = nil

    def jf_timer : HudTimer?
        @timer
    end

    def jf_timer=(value : HudTimer?) : HudTimer?
        @timer = value
    end
    

    def self.getInstance(location : Int, direction : Int, basicColor : BasicColor?, timer : HudTimer?) : TimeHudWidget?
        location = location.to_i32!
        direction = direction.to_i32!
        return TimeHudWidget.new.jinit_TimeHudWidget(location, direction, 2, basicColor, timer)
    end

    # Java field initializers run after the super constructor
    def jfields_TimeHudWidget : Nil
    @j_TIME_STRING = "Time "
    @j_TIME_CHAR_ARRAY = ['T'.ord.to_u16, 'i'.ord.to_u16, 'm'.ord.to_u16, 'e'.ord.to_u16, ' '.ord.to_u16] of UInt16
    
    @string = PrimitiveLongSingleton.getInstance().not_nil!.jf_ZERO
    @totalDigits = 1
    
    end
    

    def jinit_TimeHudWidget(location : Int, direction : Int, bufferZone : Int, basicColor : BasicColor?, timer : HudTimer?) : self
        location = location.to_i32!
        direction = direction.to_i32!
        bufferZone = bufferZone.to_i32!
        jinit_BasicHud(location, direction, bufferZone, basicColor)
        jfields_TimeHudWidget()
        @timer = timer
        self.set()
        @updateMaxHeight = 14
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @updateMaxWidth = font.not_nil!.getSize() &* 5
        @offset = font.not_nil!.stringWidth(@j_TIME_STRING) &+ MyFontProcessor.defaultStringWidth(font, 3)
        super(graphics)
    end
    

    def update : Nil
        @timer.not_nil!.update()
        self.set()
    end
    

    def set : Nil
        @string = @timer.not_nil!.getTimeChars()
        @totalDigits = @timer.not_nil!.getCurrentTotalDigits()
    end
    

    def getTimer : HudTimer?
        return @timer
    end
    

    def paint(graphics : Graphics?) : Nil
        paintDX(graphics, @j_TIME_CHAR_ARRAY, 0, @j_TIME_CHAR_ARRAY.not_nil!.size, @string, 0, @totalDigits, @offset)
    end
end

