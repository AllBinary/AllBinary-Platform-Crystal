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
# package org.allbinary.direction

class Direction < JObject
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @otherName : String = ""

    def jf_otherName : String
        @otherName
    end

    def jf_otherName=(value : String) : String
        @otherName = value
    end
    @value : Int32 = 0

    def jf_value : Int32
        @value
    end

    def jf_value=(value : Int32) : Int32
        @value = value
    end
    @frameFactor : Int32 = 0

    def jf_frameFactor : Int32
        @frameFactor
    end

    def jf_frameFactor=(value : Int32) : Int32
        @frameFactor = value
    end

    @@jst_directionArray : Array(Direction?)? = nil

    def self.jst_directionArray : Array(Direction?)?
        jclinit
        @@jst_directionArray
    end

    def self.jst_directionArray=(value : Array(Direction?)?) : Array(Direction?)?
        jclinit
        @@jst_directionArray = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_directionArray = Array(Direction?).new(13, nil)
    end
    

    def self.getInstance(direction : Int) : Direction?
        direction = direction.to_i32!
        return Direction.jst_directionArray.not_nil![direction]
    end
    

    def jinit_Direction(name : String, otherName : String, value : Int, frameFactor : Int) : self
        value = value.to_i32!
        frameFactor = frameFactor.to_i32!
        @name = name
        @otherName = otherName
        @value = value
        @frameFactor = frameFactor
        Direction.jst_directionArray.not_nil![value] = self
        self
    end
    

    def getValue : Int32
        return @value
    end
    

    def getFrameFactor : Int32
        return @frameFactor
    end
    

    def getOtherName : String
        return @otherName
    end
    

    def getName : String
        return @name
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Direction: ")
        stringBuffer.not_nil!.append(self.getName())
        stringBuffer.not_nil!.append(" Or: ")
        stringBuffer.not_nil!.append(self.getOtherName())
        stringBuffer.not_nil!.append(" Value: ")
        stringBuffer.not_nil!.appendint(@value)
        return stringBuffer.not_nil!.toString()
    end
end

