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
# package org.allbinary.game.ag.layer.hud.basic

class NumberStringHud < BasicHud
    include PaintableInterface
    @primitiveLongUtil : PrimitiveLongUtil? = nil

    def jf_primitiveLongUtil : PrimitiveLongUtil?
        @primitiveLongUtil
    end

    def jf_primitiveLongUtil=(value : PrimitiveLongUtil?) : PrimitiveLongUtil?
        @primitiveLongUtil = value
    end
    @prependString : String = ""

    def jf_prependString : String
        @prependString
    end

    def jf_prependString=(value : String) : String
        @prependString = value
    end
    @j_PREPEND_STRING : Array(UInt16)? = nil

    def jf_PREPEND_STRING : Array(UInt16)?
        @j_PREPEND_STRING
    end

    def jf_PREPEND_STRING=(value : Array(UInt16)?) : Array(UInt16)?
        @j_PREPEND_STRING = value
    end
    @value : Int32 = 0

    def jf_value : Int32
        @value
    end

    def jf_value=(value : Int32) : Int32
        @value = value
    end
    @max : Int32 = 0

    def jf_max : Int32
        @max
    end

    def jf_max=(value : Int32) : Int32
        @max = value
    end
    @offset : Int32 = 0

    def jf_offset : Int32
        @offset
    end

    def jf_offset=(value : Int32) : Int32
        @offset = value
    end
    @valueString : Array(UInt16)? = nil

    def jf_valueString : Array(UInt16)?
        @valueString
    end

    def jf_valueString=(value : Array(UInt16)?) : Array(UInt16)?
        @valueString = value
    end
    @valueTotalDigits : Int32 = 0

    def jf_valueTotalDigits : Int32
        @valueTotalDigits
    end

    def jf_valueTotalDigits=(value : Int32) : Int32
        @valueTotalDigits = value
    end
    

    def jinit_NumberStringHud(prependString : String, max : Int, location : Int, direction : Int, bufferZone : Int, basicColor : BasicColor?) : self
        max = max.to_i32!
        location = location.to_i32!
        direction = direction.to_i32!
        bufferZone = bufferZone.to_i32!
        jinit_BasicHud(location, direction, bufferZone, basicColor)
        @prependString = prependString
        @j_PREPEND_STRING = prependString.not_nil!.toCharArray()
        @valueString = PrimitiveLongSingleton.getInstance().not_nil!.jf_NUMBER_CHAR_ARRAYS.not_nil![0]
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(max &+ 1)
        @max = max
        @value = 0
        if direction == 0
            raise (JRuntimeException.new.jinit_JRuntimeException(BasicHudFactory.getInstance().not_nil!.jf_DIRECTION_EXCEPTION)).not_nil!
        end
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @offset = font.not_nil!.stringWidth(@prependString) &+ MyFontProcessor.defaultCharWidth(font)
        super(graphics)
    end
    

    def get : Int32
        return @value
    end
    

    def add(value : Int) : Nil
        value = value.to_i32!
        self.set(@value &+ value)
    end
    

    def set(value : Int) : Nil
        value = value.to_i32!
        @value = value
        if @value > @max
            @value = 0
        end
        @valueString = @primitiveLongUtil.not_nil!.getCharArray(@value)
        @valueTotalDigits = @primitiveLongUtil.not_nil!.getCurrentTotalDigits()
    end
    

    def reduce(value : Int) : Nil
        value = value.to_i32!
        self.set(@value &- value)
    end
    

    def paint(graphics : Graphics?) : Nil
        paintDX(graphics, @j_PREPEND_STRING, 0, @j_PREPEND_STRING.not_nil!.size, @valueString, 0, @valueTotalDigits, @offset)
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @myFontProcessor.not_nil!.process(graphics)
        charArray : Array(UInt16)? = @j_PREPEND_STRING
        len : Int32 = @j_PREPEND_STRING.not_nil!.size
        charArray2 : Array(UInt16)? = @valueString
        len2 : Int32 = @valueTotalDigits
        @basicSetColorUtil.not_nil!.setBasicColorP(graphics, self.getBasicColorP())
        graphics.not_nil!.drawChars(charArray, 0, len, x, y, 0)
        graphics.not_nil!.drawChars(charArray2, 0, len2, x &- @offset, y, 0)
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
end

