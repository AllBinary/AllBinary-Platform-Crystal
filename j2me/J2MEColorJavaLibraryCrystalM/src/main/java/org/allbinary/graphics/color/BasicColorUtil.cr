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

class BasicColorUtil < JObject
    @j_ZERO_ARRAY : Array(BasicColor?)? = nil

    def jf_ZERO_ARRAY : Array(BasicColor?)?
        @j_ZERO_ARRAY
    end

    def jf_ZERO_ARRAY=(value : Array(BasicColor?)?) : Array(BasicColor?)?
        @j_ZERO_ARRAY = value
    end
    @j_ALPHA : Int32 = 0

    def jf_ALPHA : Int32
        @j_ALPHA
    end

    def jf_ALPHA=(value : Int32) : Int32
        @j_ALPHA = value
    end
    @isAlpha : Bool = false

    def jf_isAlpha : Bool
        @isAlpha
    end

    def jf_isAlpha=(value : Bool) : Bool
        @isAlpha = value
    end
    @ffOpaque : Bool = false

    def jf_ffOpaque : Bool
        @ffOpaque
    end

    def jf_ffOpaque=(value : Bool) : Bool
        @ffOpaque = value
    end

    @@jst_instance : BasicColorUtil? = nil

    def self.jst_instance : BasicColorUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BasicColorUtil?) : BasicColorUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BasicColorUtil.new.jinit_BasicColorUtil()
    end
    

    def self.getInstance : BasicColorUtil?
        return BasicColorUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_BasicColorUtil : Nil
    @j_ZERO_ARRAY = Array(BasicColor?).new(0, nil)
    @j_ALPHA = 0xFF000000_u32.to_i32!
    @isAlpha = true
    @ffOpaque = true
    end

    def jinit_BasicColorUtil : self
        jfields_BasicColorUtil()
        self
    end
    

    def getRGB(red : Int, green : Int, blue : Int) : Int32
        red = red.to_i32!
        green = green.to_i32!
        blue = blue.to_i32!
        value : Int32 = 0
        if @isAlpha
            if @ffOpaque
                value = @j_ALPHA
            end
        end
        value = (JR.shl(red, 16)) | value
        value = (JR.shl(green, 8)) | value
        value = blue | value
        return value
    end
    

    def getARGB(alphaValue : Int, r : Int, g : Int, b : Int) : Int32
        alphaValue = alphaValue.to_i32!
        r = r.to_i32!
        g = g.to_i32!
        b = b.to_i32!
        return ((JR.shl(alphaValue, 24)) & @j_ALPHA) &+ ((JR.shl(r, 16)) & 0x00FF0000) &+ ((JR.shl(g, 8)) & 0x0000FF00) &+ (b & 0x000000FF)
    end
    

    def get(alphaValue : Int, color : Int) : Int32
        alphaValue = alphaValue.to_i32!
        color = color.to_i32!
        return ((JR.shl(alphaValue, 24)) & @j_ALPHA) &+ color
    end
    

    def invert(color : Int) : Int32
        color = color.to_i32!
        return (0xFFFFFF &- color) | @j_ALPHA
    end
end

