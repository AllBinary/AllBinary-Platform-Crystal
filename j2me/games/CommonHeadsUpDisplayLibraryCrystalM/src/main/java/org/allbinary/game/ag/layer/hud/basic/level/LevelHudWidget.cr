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
# package org.allbinary.game.ag.layer.hud.basic.level

class LevelHudWidget < BasicHud
    include PaintableInterface
    @level : Int32 = 0

    def jf_level : Int32
        @level
    end

    def jf_level=(value : Int32) : Int32
        @level = value
    end
    @maxlevel : Int32 = 0

    def jf_maxlevel : Int32
        @maxlevel
    end

    def jf_maxlevel=(value : Int32) : Int32
        @maxlevel = value
    end
    @levelString : Array(UInt16)? = nil

    def jf_levelString : Array(UInt16)?
        @levelString
    end

    def jf_levelString=(value : Array(UInt16)?) : Array(UInt16)?
        @levelString = value
    end
    @levelNumberCharArray : Array(UInt16)? = nil

    def jf_levelNumberCharArray : Array(UInt16)?
        @levelNumberCharArray
    end

    def jf_levelNumberCharArray=(value : Array(UInt16)?) : Array(UInt16)?
        @levelNumberCharArray = value
    end
    @levelNumberTotalDigits : Int32 = 0

    def jf_levelNumberTotalDigits : Int32
        @levelNumberTotalDigits
    end

    def jf_levelNumberTotalDigits=(value : Int32) : Int32
        @levelNumberTotalDigits = value
    end
    @offset : Int32 = 0

    def jf_offset : Int32
        @offset
    end

    def jf_offset=(value : Int32) : Int32
        @offset = value
    end
    @primitiveLongUtil : PrimitiveLongUtil? = nil

    def jf_primitiveLongUtil : PrimitiveLongUtil?
        @primitiveLongUtil
    end

    def jf_primitiveLongUtil=(value : PrimitiveLongUtil?) : PrimitiveLongUtil?
        @primitiveLongUtil = value
    end
    

    def self.createHud(maxlevel : Int, location : Int, direction : Int) : LevelHudWidget?
        maxlevel = maxlevel.to_i32!
        location = location.to_i32!
        direction = direction.to_i32!
        return LevelHudWidget.new.jinit_LevelHudWidget(maxlevel, location, direction)
    end

    # Java field initializers run after the super constructor
    def jfields_LevelHudWidget : Nil
    
    
    
    @levelNumberCharArray = NullUtil.getInstance().not_nil!.jf_NULL_CHAR_ARRAY
    
    
    
    end
    

    def jinit_LevelHudWidget(maxlevel : Int, location : Int, direction : Int) : self
        maxlevel = maxlevel.to_i32!
        location = location.to_i32!
        direction = direction.to_i32!
        jinit_BasicHud(location, direction, 2, BasicColorFactory.getInstance().not_nil!.jf_GREY)
        jfields_LevelHudWidget()
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000)
        j_LEVEL : String = "Lv "
        @levelString = j_LEVEL.not_nil!.toCharArray()
        @maxlevel = maxlevel
        @level = maxlevel
        self.update()
        @updateMaxHeight = 14
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @updateMaxWidth = font.not_nil!.getSize() &* 4
        @offset = font.not_nil!.charsWidth(@levelString, 0, @levelString.not_nil!.size) &+ font.not_nil!.getSize()
        super(graphics)
    end
    

    def update : Nil
        @levelNumberCharArray = @primitiveLongUtil.not_nil!.getCharArray(@level)
        @levelNumberTotalDigits = @primitiveLongUtil.not_nil!.getCurrentTotalDigits()
    end
    

    def setLevel(level : Int) : Nil
        level = level.to_i32!
        @level = level
        self.update()
    end
    

    def nextLevel : Nil
        @level &+= 1
        self.update()
    end
    

    def previousLevel : Nil
        @level &-= 1
        if @level < 0
            @level = 0
        end
        self.update()
    end
    

    def isComplete : Bool
        if @level <= @maxlevel
            return false
        else
            return true
        end
        return false
    end
    

    def paint(graphics : Graphics?) : Nil
        paintDX(graphics, @levelString, 0, @levelString.not_nil!.size, @levelNumberCharArray, 0, @levelNumberTotalDigits, @offset)
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
end

