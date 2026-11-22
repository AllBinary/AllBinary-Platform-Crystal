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
# package org.allbinary.graphics.color

class SmallBasicColorCacheFactory < JObject
    @j_SIZE : Int32 = 0

    def jf_SIZE : Int32
        @j_SIZE
    end

    def jf_SIZE=(value : Int32) : Int32
        @j_SIZE = value
    end
    @j_INDEX_TO_COLOR : Array(Int32)? = nil

    def jf_INDEX_TO_COLOR : Array(Int32)?
        @j_INDEX_TO_COLOR
    end

    def jf_INDEX_TO_COLOR=(value : Array(Int32)?) : Array(Int32)?
        @j_INDEX_TO_COLOR = value
    end
    @j_BASIC_COLOR_ARRAY : Array(BasicColor?)? = nil

    def jf_BASIC_COLOR_ARRAY : Array(BasicColor?)?
        @j_BASIC_COLOR_ARRAY
    end

    def jf_BASIC_COLOR_ARRAY=(value : Array(BasicColor?)?) : Array(BasicColor?)?
        @j_BASIC_COLOR_ARRAY = value
    end
    @colorIndex : Int32 = 0

    def jf_colorIndex : Int32
        @colorIndex
    end

    def jf_colorIndex=(value : Int32) : Int32
        @colorIndex = value
    end

    @@jst_instance : SmallBasicColorCacheFactory? = nil

    def self.jst_instance : SmallBasicColorCacheFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : SmallBasicColorCacheFactory?) : SmallBasicColorCacheFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = SmallBasicColorCacheFactory.new.jinit_SmallBasicColorCacheFactory()
    end
    

    def self.getInstance : SmallBasicColorCacheFactory?
        return SmallBasicColorCacheFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_SmallBasicColorCacheFactory : Nil
    @j_SIZE = 255
    @j_INDEX_TO_COLOR = Array(Int32).new(@j_SIZE, 0)
    @j_BASIC_COLOR_ARRAY = Array(BasicColor?).new(@j_SIZE, nil)
    @colorIndex = 0
    end
    

    def jinit_SmallBasicColorCacheFactory : self
        jfields_SmallBasicColorCacheFactory()
        self
    end
    

    def add(basicDefaultColor : BasicColor?) : Nil
        @j_BASIC_COLOR_ARRAY.not_nil![@colorIndex] = basicDefaultColor
        @j_INDEX_TO_COLOR.not_nil![@colorIndex] = basicDefaultColor.not_nil!.intValue()
        @colorIndex &+= 1
    end
    

    def getAndOrCreate(colorAsInt : Int) : BasicColor?
        colorAsInt = colorAsInt.to_i32!
        basicColor : BasicColor? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < @j_SIZE
            if @j_INDEX_TO_COLOR.not_nil![index] == colorAsInt
                return @j_BASIC_COLOR_ARRAY.not_nil![index]
            end
        end
        j_ALPHA_MASK : Int32 = 0xFF000000_u32.to_i32!
        basicColor = BasicColorFactory.getInstance().not_nil!.createInstanceAN(colorAsInt & j_ALPHA_MASK, colorAsInt & 0x00FFFFFF, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING)
        self.add(basicColor)
        return basicColor
    end
end

