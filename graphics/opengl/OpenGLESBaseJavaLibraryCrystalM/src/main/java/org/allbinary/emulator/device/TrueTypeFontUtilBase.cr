# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.emulator.device

class TrueTypeFontUtilBase < JObject
    @shortPattern : String = ""

    def jf_shortPattern : String
        @shortPattern
    end

    def jf_shortPattern=(value : String) : String
        @shortPattern = value
    end
    @patternAsBytes : Array(Int8)? = nil

    def jf_patternAsBytes : Array(Int8)?
        @patternAsBytes
    end

    def jf_patternAsBytes=(value : Array(Int8)?) : Array(Int8)?
        @patternAsBytes = value
    end
    @pattern : String = ""

    def jf_pattern : String
        @pattern
    end

    def jf_pattern=(value : String) : String
        @pattern = value
    end
    @charArray : Array(Int16)? = nil

    def jf_charArray : Array(Int16)?
        @charArray
    end

    def jf_charArray=(value : Array(Int16)?) : Array(Int16)?
        @charArray = value
    end
    @_characterWidth : Array(Int32)? = nil

    def jf__characterWidth : Array(Int32)?
        @_characterWidth
    end

    def jf__characterWidth=(value : Array(Int32)?) : Array(Int32)?
        @_characterWidth = value
    end
    @characterArray : Array(UInt16)? = nil

    def jf_characterArray : Array(UInt16)?
        @characterArray
    end

    def jf_characterArray=(value : Array(UInt16)?) : Array(UInt16)?
        @characterArray = value
    end
    @size : Int32 = 0

    def jf_size : Int32
        @size
    end

    def jf_size=(value : Int32) : Int32
        @size = value
    end
    @lastCapIndex : Int32 = 0

    def jf_lastCapIndex : Int32
        @lastCapIndex
    end

    def jf_lastCapIndex=(value : Int32) : Int32
        @lastCapIndex = value
    end
    @currentFont : Font? = nil

    def jf_currentFont : Font?
        @currentFont
    end

    def jf_currentFont=(value : Font?) : Font?
        @currentFont = value
    end
    @scale : Int32 = 0

    def jf_scale : Int32
        @scale
    end

    def jf_scale=(value : Int32) : Int32
        @scale = value
    end
    @j_CELLS_PER_ROW : Int32 = 0

    def jf_CELLS_PER_ROW : Int32
        @j_CELLS_PER_ROW
    end

    def jf_CELLS_PER_ROW=(value : Int32) : Int32
        @j_CELLS_PER_ROW = value
    end
    @fontSize : Int32 = 0

    def jf_fontSize : Int32
        @fontSize
    end

    def jf_fontSize=(value : Int32) : Int32
        @fontSize = value
    end
    @baseCharWidth : Int32 = 0

    def jf_baseCharWidth : Int32
        @baseCharWidth
    end

    def jf_baseCharWidth=(value : Int32) : Int32
        @baseCharWidth = value
    end
    @cellSize : Int32 = 0

    def jf_cellSize : Int32
        @cellSize
    end

    def jf_cellSize=(value : Int32) : Int32
        @cellSize = value
    end
    @textureSize : Int32 = 0

    def jf_textureSize : Int32
        @textureSize
    end

    def jf_textureSize=(value : Int32) : Int32
        @textureSize = value
    end
    @actualCellsPerRow : Int32 = 0

    def jf_actualCellsPerRow : Int32
        @actualCellsPerRow
    end

    def jf_actualCellsPerRow=(value : Int32) : Int32
        @actualCellsPerRow = value
    end

    # Java field initializers run after the super constructor
    def jfields_TrueTypeFontUtilBase : Nil
    
    @patternAsBytes = [32_i8, 48_i8, 49_i8, 50_i8, 51_i8, 52_i8, 53_i8, 54_i8, 55_i8, 56_i8, 57_i8, 65_i8, 66_i8, 32_i8, 32_i8, 32_i8, 67_i8, 68_i8, 69_i8, 70_i8, 71_i8, 72_i8, 73_i8, 74_i8, 75_i8, 76_i8, 77_i8, 78_i8, 79_i8, 32_i8, 32_i8, 32_i8, 80_i8, 81_i8, 82_i8, 83_i8, 84_i8, 85_i8, 86_i8, 87_i8, 88_i8, 89_i8, 90_i8, 97_i8, 98_i8, 32_i8, 32_i8, 32_i8, 99_i8, 100_i8, 101_i8, 102_i8, 103_i8, 104_i8, 105_i8, 106_i8, 107_i8, 108_i8, 109_i8, 110_i8, 111_i8, 32_i8, 32_i8, 32_i8, 112_i8, 113_i8, 114_i8, 115_i8, 116_i8, 117_i8, 118_i8, 119_i8, 120_i8, 121_i8, 122_i8, 46_i8, 63_i8, 32_i8, 32_i8, 32_i8, 33_i8, 36_i8, 37_i8, 96_i8, (-62).to_i8!, (-84).to_i8!, (-62).to_i8!, (-84).to_i8!, 34_i8, (-62).to_i8!, (-93).to_i8!, (-62).to_i8!, (-93).to_i8!, 94_i8, 38_i8, 42_i8, 40_i8, 32_i8, 32_i8, 32_i8, 41_i8, 95_i8, 43_i8, 45_i8, 61_i8, 91_i8, 93_i8, 123_i8, 125_i8, 59_i8, 39_i8, 35_i8, 58_i8, 32_i8, 32_i8, 32_i8, 64_i8, 126_i8, 44_i8, 47_i8, 60_i8, 62_i8, 92_i8, 124_i8, (-62).to_i8!, (-82).to_i8!, (-62).to_i8!, (-82).to_i8!, (-62).to_i8!, (-87).to_i8!, (-62).to_i8!, (-87).to_i8!] of Int8
    @pattern = JR.newString(@patternAsBytes)
    @charArray = [(0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x6f).to_i16!, (0x50).to_i16!, (0x56).to_i16!, (0x6b).to_i16!, (0x51).to_i16!, (0x52).to_i16!, (0x5a).to_i16!, (0x6a).to_i16!, (0x5c).to_i16!, (0x60).to_i16!, (0x5b).to_i16!, (0x62).to_i16!, (0x72).to_i16!, (0x63).to_i16!, (0x4b).to_i16!, (0x73).to_i16!, (0x1).to_i16!, (0x2).to_i16!, (0x3).to_i16!, (0x4).to_i16!, (0x5).to_i16!, (0x6).to_i16!, (0x7).to_i16!, (0x8).to_i16!, (0x9).to_i16!, (0xa).to_i16!, (0x6c).to_i16!, (0x69).to_i16!, (0x74).to_i16!, (0x64).to_i16!, (0x75).to_i16!, (0x4c).to_i16!, (0x70).to_i16!, (0xb).to_i16!, (0xc).to_i16!, (0x10).to_i16!, (0x11).to_i16!, (0x12).to_i16!, (0x13).to_i16!, (0x14).to_i16!, (0x15).to_i16!, (0x16).to_i16!, (0x17).to_i16!, (0x18).to_i16!, (0x19).to_i16!, (0x1a).to_i16!, (0x1b).to_i16!, (0x1c).to_i16!, (0x20).to_i16!, (0x21).to_i16!, (0x22).to_i16!, (0x23).to_i16!, (0x24).to_i16!, (0x25).to_i16!, (0x26).to_i16!, (0x27).to_i16!, (0x28).to_i16!, (0x29).to_i16!, (0x2a).to_i16!, (0x65).to_i16!, (0x76).to_i16!, (0x66).to_i16!, (0x59).to_i16!, (0x61).to_i16!, (0x53).to_i16!, (0x2b).to_i16!, (0x2c).to_i16!, (0x30).to_i16!, (0x31).to_i16!, (0x32).to_i16!, (0x33).to_i16!, (0x34).to_i16!, (0x35).to_i16!, (0x36).to_i16!, (0x37).to_i16!, (0x38).to_i16!, (0x39).to_i16!, (0x3a).to_i16!, (0x3b).to_i16!, (0x3c).to_i16!, (0x40).to_i16!, (0x41).to_i16!, (0x42).to_i16!, (0x43).to_i16!, (0x44).to_i16!, (0x45).to_i16!, (0x46).to_i16!, (0x47).to_i16!, (0x48).to_i16!, (0x49).to_i16!, (0x4a).to_i16!, (0x67).to_i16!, (0x77).to_i16!, (0x68).to_i16!, (0x71).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x58).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x7b).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x55).to_i16!, (0x0).to_i16!, (0x79).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!, (0x0).to_i16!] of Int16
    @_characterWidth = Array(Int32).new(@pattern.not_nil!.length(), 0)
    @characterArray = Array(UInt16).new(1, 0_u16)
    @size = @pattern.not_nil!.length()
    @lastCapIndex = @pattern.not_nil!.indexOf('Z'.ord.to_u16)
    @currentFont = Font.getDefaultFont()
    
    
    
    
    
    
    
    end
    

    def jinit_TrueTypeFontUtilBase(scale : Int) : self
        scale = scale.to_i32!
        jfields_TrueTypeFontUtilBase()
        shortPattern : String = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
        if AvianUtil.isAvian()
            shortPatterAsByteArray = ([32_i8, 48_i8, 49_i8, 50_i8, 51_i8, 52_i8, 53_i8, 54_i8, 55_i8, 56_i8, 57_i8, 65_i8, 66_i8, 67_i8, 68_i8, 69_i8, 70_i8, 71_i8, 72_i8, 73_i8, 74_i8, 75_i8, 76_i8, 77_i8, 78_i8, 79_i8, 80_i8, 81_i8, 82_i8, 83_i8, 84_i8, 85_i8, 86_i8, 87_i8, 88_i8, 89_i8, 90_i8, 97_i8, 98_i8, 99_i8, 100_i8, 101_i8, 102_i8, 103_i8, 104_i8, 105_i8, 106_i8, 107_i8, 108_i8, 109_i8, 110_i8, 111_i8, 112_i8, 113_i8, 114_i8, 115_i8, 116_i8, 117_i8, 118_i8, 119_i8, 120_i8, 121_i8, 122_i8, 46_i8, 63_i8, 33_i8, 36_i8, 37_i8, 96_i8, (-62).to_i8!, (-84).to_i8!, (-62).to_i8!, (-84).to_i8!, 34_i8, (-62).to_i8!, (-93).to_i8!, (-62).to_i8!, (-93).to_i8!, 94_i8, 38_i8, 42_i8, 40_i8, 41_i8, 95_i8, 43_i8, 45_i8, 61_i8, 91_i8, 93_i8, 123_i8, 125_i8, 59_i8, 39_i8, 35_i8, 58_i8, 64_i8, 126_i8, 44_i8, 47_i8, 60_i8, 62_i8, 92_i8, 124_i8, (-62).to_i8!, (-82).to_i8!, (-62).to_i8!, (-82).to_i8!, (-62).to_i8!, (-87).to_i8!, (-62).to_i8!, (-87).to_i8!] of Int8).as(Array(Int8)?)
            shortPattern = JR.newString(shortPatterAsByteArray)
        else
            shortPatterAsByteArray = ([32_i8, 48_i8, 49_i8, 50_i8, 51_i8, 52_i8, 53_i8, 54_i8, 55_i8, 56_i8, 57_i8, 65_i8, 66_i8, 67_i8, 68_i8, 69_i8, 70_i8, 71_i8, 72_i8, 73_i8, 74_i8, 75_i8, 76_i8, 77_i8, 78_i8, 79_i8, 80_i8, 81_i8, 82_i8, 83_i8, 84_i8, 85_i8, 86_i8, 87_i8, 88_i8, 89_i8, 90_i8, 97_i8, 98_i8, 99_i8, 100_i8, 101_i8, 102_i8, 103_i8, 104_i8, 105_i8, 106_i8, 107_i8, 108_i8, 109_i8, 110_i8, 111_i8, 112_i8, 113_i8, 114_i8, 115_i8, 116_i8, 117_i8, 118_i8, 119_i8, 120_i8, 121_i8, 122_i8, 46_i8, 63_i8, 33_i8, 36_i8, 37_i8, 96_i8, (-62).to_i8!, (-84).to_i8!, 34_i8, (-62).to_i8!, (-93).to_i8!, 94_i8, 38_i8, 42_i8, 40_i8, 41_i8, 95_i8, 43_i8, 45_i8, 61_i8, 91_i8, 93_i8, 123_i8, 125_i8, 59_i8, 39_i8, 35_i8, 58_i8, 64_i8, 126_i8, 44_i8, 47_i8, 60_i8, 62_i8, 92_i8, 124_i8, (-62).to_i8!, (-82).to_i8!, (-62).to_i8!, (-87).to_i8!] of Int8).as(Array(Int8)?)
            shortPattern = JR.newString(shortPatterAsByteArray)
        end
        @shortPattern = shortPattern
        @scale = scale
        @j_CELLS_PER_ROW = 16
        @fontSize = (20 &+ 6) &* @scale
        @baseCharWidth = @fontSize &+ (6 &* @scale)
        @cellSize = @fontSize &+ (6 &* @scale)
        @textureSize = self.getAsTextureSize(@j_CELLS_PER_ROW &* @cellSize)
        @actualCellsPerRow = @textureSize.tdiv(@cellSize)
        self
    end
    

    def getAsTextureSize(textureSize : Int) : Int32
        textureSize = textureSize.to_i32!
        if textureSize <= 64
            textureSize = 64
        elsif textureSize <= 128
            textureSize = 128
        elsif textureSize <= 256
            textureSize = 256
        elsif textureSize <= 512
            textureSize = 512
        elsif textureSize <= 1024
            textureSize = 1024
        end
        return textureSize
    end
    

    def getCellSize(cellSize : Int) : Int32
        cellSize = cellSize.to_i32!
        if cellSize <= 16
            cellSize = 16
        elsif cellSize <= 32
            cellSize = 32
        elsif cellSize <= 64
            cellSize = 64
        elsif cellSize <= 128
            cellSize = 128
        elsif cellSize <= 256
            cellSize = 256
        end
        return cellSize
    end
    

    def getYOffset : Int32
        return ((@scale &- 1) &* @cellSize)
    end
end

