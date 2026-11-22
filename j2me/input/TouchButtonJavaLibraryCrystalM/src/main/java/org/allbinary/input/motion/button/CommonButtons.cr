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
# package org.allbinary.input.motion.button

class CommonButtons < JObject
    @j_STANDARD_BUTTON_SIZE : Int32 = 0

    def jf_STANDARD_BUTTON_SIZE : Int32
        @j_STANDARD_BUTTON_SIZE
    end

    def jf_STANDARD_BUTTON_SIZE=(value : Int32) : Int32
        @j_STANDARD_BUTTON_SIZE = value
    end
    @j_NORMAL_BUTTON : Rectangle? = nil

    def jf_NORMAL_BUTTON : Rectangle?
        @j_NORMAL_BUTTON
    end

    def jf_NORMAL_BUTTON=(value : Rectangle?) : Rectangle?
        @j_NORMAL_BUTTON = value
    end
    @j_LARGE_BUTTON : Rectangle? = nil

    def jf_LARGE_BUTTON : Rectangle?
        @j_LARGE_BUTTON
    end

    def jf_LARGE_BUTTON=(value : Rectangle?) : Rectangle?
        @j_LARGE_BUTTON = value
    end

    @@jst_instance : CommonButtons? = nil

    def self.jst_instance : CommonButtons?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CommonButtons?) : CommonButtons?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CommonButtons.new.jinit_CommonButtons()
    end
    

    def self.getInstance : CommonButtons?
        return CommonButtons.jst_instance
    end
    

    def jinit_CommonButtons : self
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        commonButtonSize : Int32 = 128
        while commonButtonSize > 64
            totalColumns : Int32 = displayInfo.not_nil!.getLastWidth().tdiv(commonButtonSize)
            totalRows : Int32 = displayInfo.not_nil!.getLastHeight().tdiv(commonButtonSize)
            max : Int32 = totalColumns
            if totalRows > max
                max = totalRows
            end
            if max > 9
                break
            end
            commonButtonSize = JR.shr(commonButtonSize, 1)
        end
        @j_STANDARD_BUTTON_SIZE = commonButtonSize
        @j_NORMAL_BUTTON = Rectangle.new.jinit_Rectangle(PointFactory.getInstance().not_nil!.jf_ZERO_ZERO, @j_STANDARD_BUTTON_SIZE, @j_STANDARD_BUTTON_SIZE)
        @j_LARGE_BUTTON = Rectangle.new.jinit_Rectangle(PointFactory.getInstance().not_nil!.jf_ZERO_ZERO, JR.shl(@j_STANDARD_BUTTON_SIZE, 1), JR.shl(@j_STANDARD_BUTTON_SIZE, 1))
        self
    end
end

