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

class BasicColor < JObject
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @value : Int32 = 0

    def jf_value : Int32
        @value
    end

    def jf_value=(value : Int32) : Int32
        @value = value
    end
    @redComponent : Float32 = 0_f32

    def jf_redComponent : Float32
        @redComponent
    end

    def jf_redComponent=(value : Float32) : Float32
        @redComponent = value
    end
    @greenComponent : Float32 = 0_f32

    def jf_greenComponent : Float32
        @greenComponent
    end

    def jf_greenComponent=(value : Float32) : Float32
        @greenComponent = value
    end
    @blueComponent : Float32 = 0_f32

    def jf_blueComponent : Float32
        @blueComponent
    end

    def jf_blueComponent=(value : Float32) : Float32
        @blueComponent = value
    end
    @alphaComponent : Float32 = 0_f32

    def jf_alphaComponent : Float32
        @alphaComponent
    end

    def jf_alphaComponent=(value : Float32) : Float32
        @alphaComponent = value
    end
    @red : Int16 = 0_i16

    def jf_red : Int16
        @red
    end

    def jf_red=(value : Int16) : Int16
        @red = value
    end
    @green : Int16 = 0_i16

    def jf_green : Int16
        @green
    end

    def jf_green=(value : Int16) : Int16
        @green = value
    end
    @blue : Int16 = 0_i16

    def jf_blue : Int16
        @blue
    end

    def jf_blue=(value : Int16) : Int16
        @blue = value
    end
    @alpha : Int16 = 0_i16

    def jf_alpha : Int16
        @alpha
    end

    def jf_alpha=(value : Int16) : Int16
        @alpha = value
    end
    

    def jinit_BasicColor(alphaValue : Int, value : Int, name : String) : self
        alphaValue = alphaValue.to_i32!
        value = value.to_i32!
        @name = name
        tempValue : Int32 = 0
        basicColorUtil : BasicColorUtil? = BasicColorUtil.getInstance()
        if basicColorUtil.not_nil!.jf_isAlpha
            if basicColorUtil.not_nil!.jf_ffOpaque
                tempValue = alphaValue | value
            else
                tempValue = 0x00000000 | value
            end
        else
            tempValue = value
        end
        alphaInt : Int32 = ((JR.shr(tempValue, 24)) & 255)
        @alpha = (alphaInt).to_i16!
        @alphaComponent = ((alphaInt).to_f32) / 255_f32
        redInt : Int32 = ((JR.shr(tempValue, 16)) & 255)
        @red = (redInt).to_i16!
        @redComponent = ((redInt).to_f32) / 255_f32
        greenInt : Int32 = ((JR.shr(tempValue, 8)) & 255)
        @green = (greenInt).to_i16!
        @greenComponent = ((greenInt).to_f32) / 255_f32
        blueInt : Int32 = ((tempValue) & 255)
        @blue = (blueInt).to_i16!
        @blueComponent = ((blueInt).to_f32) / 255_f32
        @value = tempValue
        self
    end
    

    def intValue : Int32
        return @value
    end
    

    def toInt : Int32
        return @value
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("BasicColor: ")
        stringBuffer.not_nil!.append("Alpha: ")
        stringBuffer.not_nil!.appendshort(@alpha)
        stringBuffer.not_nil!.append(" Red: ")
        stringBuffer.not_nil!.appendshort(@red)
        stringBuffer.not_nil!.append(" Green: ")
        stringBuffer.not_nil!.appendshort(@green)
        stringBuffer.not_nil!.append(" Blue: ")
        stringBuffer.not_nil!.appendshort(@blue)
        stringBuffer.not_nil!.append(" Value: ")
        stringBuffer.not_nil!.appendint(@value)
        return stringBuffer.not_nil!.toString()
    end
    

    def getName : String
        return @name
    end
    

    def getRedComponent : Float32
        return @redComponent
    end
    

    def getGreenComponent : Float32
        return @greenComponent
    end
    

    def getBlueComponent : Float32
        return @blueComponent
    end
    

    def getAlphaComponent : Float32
        return @alphaComponent
    end
end

