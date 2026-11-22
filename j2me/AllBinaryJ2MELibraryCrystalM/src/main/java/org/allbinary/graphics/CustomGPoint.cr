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

class CustomGPoint < GPoint
    @cx : Int32 = 0

    def jf_cx : Int32
        @cx
    end

    def jf_cx=(value : Int32) : Int32
        @cx = value
    end
    @cy : Int32 = 0

    def jf_cy : Int32
        @cy
    end

    def jf_cy=(value : Int32) : Int32
        @cy = value
    end
    @cz : Int32 = 0

    def jf_cz : Int32
        @cz
    end

    def jf_cz=(value : Int32) : Int32
        @cz = value
    end

    @@jst_NULL_CUSTOM_POINT : CustomGPoint? = nil

    def self.jst_NULL_CUSTOM_POINT : CustomGPoint?
        jclinit
        @@jst_NULL_CUSTOM_POINT
    end

    def self.jst_NULL_CUSTOM_POINT=(value : CustomGPoint?) : CustomGPoint?
        jclinit
        @@jst_NULL_CUSTOM_POINT = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_CUSTOM_POINT = CustomGPoint.new.jinit_CustomGPoint(0, 0, 0)
    end
    

    def self.getInstance(point : GPoint?) : CustomGPoint?
        return CustomGPoint.new.jinit_CustomGPoint(point.not_nil!.getX(), point.not_nil!.getY(), point.not_nil!.getZ())
    end
    

    def self.getInstance3(x : Int, y : Int) : CustomGPoint?
        x = x.to_i32!
        y = y.to_i32!
        return CustomGPoint.new.jinit_CustomGPoint(x, y, 3)
    end
    

    def jinit_CustomGPoint(x : Int, y : Int, z : Int) : self
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        jinit_GPoint(x, y, z)
        self
    end
    

    def setX(x : Int) : Nil
        x = x.to_i32!
        @cx = x
    end
    

    def getX : Int32
        return @cx
    end
    

    def setY(y : Int) : Nil
        y = y.to_i32!
        @cy = y
    end
    

    def getY : Int32
        return @cy
    end
    

    def setZ(z : Int) : Nil
        z = z.to_i32!
        @cz = z
    end
    

    def getZ : Int32
        return @cz
    end
end

