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

class Rectangle < JObject
    @point : GPoint? = nil

    def jf_point : GPoint?
        @point
    end

    def jf_point=(value : GPoint?) : GPoint?
        @point = value
    end
    @width : Int32 = 0

    def jf_width : Int32
        @width
    end

    def jf_width=(value : Int32) : Int32
        @width = value
    end
    @height : Int32 = 0

    def jf_height : Int32
        @height
    end

    def jf_height=(value : Int32) : Int32
        @height = value
    end
    

    def jinit_Rectangle(point : GPoint?, width : Int, height : Int) : self
        width = width.to_i32!
        height = height.to_i32!
        @point = point
        @width = width
        @height = height
        self
    end
    

    def getPoint : GPoint?
        return @point
    end
    

    def setPoint(point : GPoint?) : Nil
        @point = point
    end
    

    def getMaxX : Int32
        return @point.not_nil!.getX() &+ @width
    end
    

    def getMaxY : Int32
        return @point.not_nil!.getY() &+ @height
    end
    

    def getWidth : Int32
        return @width
    end
    

    def setWidth(width : Int) : Nil
        width = width.to_i32!
        @width = width
    end
    

    def getHeight : Int32
        return @height
    end
    

    def setHeight(height : Int) : Nil
        height = height.to_i32!
        @height = height
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(self.getPoint().not_nil!.toString())
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_WIDTH_LABEL)
        stringBuffer.not_nil!.appendint(self.getWidth())
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_HEIGHT_LABEL)
        stringBuffer.not_nil!.appendint(self.getHeight())
        stringBuffer.not_nil!.append(" MaxX: ")
        stringBuffer.not_nil!.appendint(self.getMaxX())
        stringBuffer.not_nil!.append(" MaxY: ")
        stringBuffer.not_nil!.appendint(self.getMaxY())
        return stringBuffer.not_nil!.toString()
    end
end

