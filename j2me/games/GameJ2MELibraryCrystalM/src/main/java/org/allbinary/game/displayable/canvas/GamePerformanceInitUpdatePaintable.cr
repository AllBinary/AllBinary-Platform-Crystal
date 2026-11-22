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
# package org.allbinary.game.displayable.canvas

class GamePerformanceInitUpdatePaintable < InitUpdatePaintable
    include UpdateMyFontInterface
    @halfHeight : Int32 = 0

    def jf_halfHeight : Int32
        @halfHeight
    end

    def jf_halfHeight=(value : Int32) : Int32
        @halfHeight = value
    end
    @yArray : Array(Int32)? = nil

    def jf_yArray : Array(Int32)?
        @yArray
    end

    def jf_yArray=(value : Array(Int32)?) : Array(Int32)?
        @yArray = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @baseRefreshHelperCharArray : Array(Array(UInt16)?)? = nil

    def jf_baseRefreshHelperCharArray : Array(Array(UInt16)?)?
        @baseRefreshHelperCharArray
    end

    def jf_baseRefreshHelperCharArray=(value : Array(Array(UInt16)?)?) : Array(Array(UInt16)?)?
        @baseRefreshHelperCharArray = value
    end
    @defaultStringWidth : Int32 = 0

    def jf_defaultStringWidth : Int32
        @defaultStringWidth
    end

    def jf_defaultStringWidth=(value : Int32) : Int32
        @defaultStringWidth = value
    end
    @j_RED : Int32 = 0

    def jf_RED : Int32
        @j_RED
    end

    def jf_RED=(value : Int32) : Int32
        @j_RED = value
    end

    # Java field initializers run after the super constructor
    def jfields_GamePerformanceInitUpdatePaintable : Nil
    @halfHeight = DisplayInfoSingleton.getInstance().not_nil!.getLastHalfHeight()
    @yArray = [@halfHeight &+ 30, @halfHeight &+ 30, @halfHeight &+ 30 &+ 15, @halfHeight &+ 30 &+ 15, @halfHeight &+ 30 &+ 30, @halfHeight &+ 30 &+ 30, @halfHeight &+ 30 &+ 45, @halfHeight &+ 30 &+ 45] of Int32
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @baseRefreshHelperCharArray = Array(Array(UInt16)?).new(0) { Array(UInt16).new(0, 0_u16).as(Array(UInt16)?) }
    
    @j_RED = BasicColorFactory.getInstance().not_nil!.jf_RED.not_nil!.intValue()
    end

    def jinit_GamePerformanceInitUpdatePaintable : self
        jinit_InitUpdatePaintable()
        jfields_GamePerformanceInitUpdatePaintable()
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @defaultStringWidth = MyFontProcessor.defaultStringWidth(font, 2)
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def init : Nil
    end
    

    def update : Nil
        @baseRefreshHelperCharArray = GameStatisticsFactory.getInstance().not_nil!.to2DCharArray()
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        graphics.not_nil!.setColor(@j_RED)
        charArray : Array(UInt16)? = nil
        charArray2 : Array(UInt16)? = nil
        size2 : Int32 = 0
        size3 : Int32 = 0
        size : Int32 = @baseRefreshHelperCharArray.not_nil!.size &- 2
        index : Int32 = size
        jfor1 = false
        while true
            if jfor1
                index &-= 2
            end
            jfor1 = true
            break unless index >= 0
            charArray = @baseRefreshHelperCharArray.not_nil![index]
            charArray2 = @baseRefreshHelperCharArray.not_nil![index &+ 1]
            size2 = charArray.not_nil!.size
            size3 = charArray2.not_nil!.size
            graphics.not_nil!.drawChars(charArray, 0, size2, 0, @yArray.not_nil![index], 0)
            graphics.not_nil!.drawChars(charArray2, 0, size3, size2 &* @defaultStringWidth, @yArray.not_nil![index &+ 1], 0)
        end
    end
end

