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
# package org.allbinary.graphics

class GPoint < JObject
    @x : Int32 = 0

    def jf_x : Int32
        @x
    end

    def jf_x=(value : Int32) : Int32
        @x = value
    end
    @y : Int32 = 0

    def jf_y : Int32
        @y
    end

    def jf_y=(value : Int32) : Int32
        @y = value
    end
    @z : Int32 = 0

    def jf_z : Int32
        @z
    end

    def jf_z=(value : Int32) : Int32
        @z = value
    end

    def self.jst_POINT_LABEL : String
        "Point: "
    end
    

    def self.getInstance(point : GPoint?) : GPoint?
        return GPoint.new.jinit_GPoint(point.not_nil!.getX(), point.not_nil!.getY(), point.not_nil!.getZ())
    end
    

    def self.toStringStatic(x : Int, y : Int, z : Int) : String
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        positionStrings : PositionStrings? = PositionStrings.getInstance()
        stringBuffer.not_nil!.append(GPoint.jst_POINT_LABEL)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_X_LABEL)
        stringBuffer.not_nil!.appendint(x)
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_Y_LABEL)
        stringBuffer.not_nil!.appendint(y)
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_Z_LABEL)
        stringBuffer.not_nil!.appendint(z)
        return stringBuffer.not_nil!.toString()
    end
    

    def jinit_GPoint(x : Int, y : Int, z : Int) : self
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        @x = x
        @y = y
        @z = z
        self
    end
    

    def getX : Int32
        return @x
    end
    

    def getY : Int32
        return @y
    end
    

    def getZ : Int32
        return @z
    end
    

    def getRawX : Int32
        return @x
    end
    

    def getRawY : Int32
        return @y
    end
    

    def getRawZ : Int32
        return @z
    end
    

    def toString : String
        return GPoint.toStringStatic(self.getX(), self.getY(), self.getZ())
    end
end

