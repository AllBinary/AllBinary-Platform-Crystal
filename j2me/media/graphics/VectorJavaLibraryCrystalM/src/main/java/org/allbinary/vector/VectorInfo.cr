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
# package org.allbinary.vector

class VectorInfo < JObject
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
    @points : Array(Array(Int32)?)? = nil

    def jf_points : Array(Array(Int32)?)?
        @points
    end

    def jf_points=(value : Array(Array(Int32)?)?) : Array(Array(Int32)?)?
        @points = value
    end
    @totalFrames : Int32 = 0

    def jf_totalFrames : Int32
        @totalFrames
    end

    def jf_totalFrames=(value : Int32) : Int32
        @totalFrames = value
    end
    

    def jinit_VectorInfo(width : Int, height : Int, points : Array(Array(Int32)?)?, totalFrames : Int) : self
        width = width.to_i32!
        height = height.to_i32!
        totalFrames = totalFrames.to_i32!
        @width = width
        @height = height
        @points = points
        @totalFrames = totalFrames
        self
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
    

    def getPoints : Array(Array(Int32)?)?
        return @points
    end
    

    def setPoints(points : Array(Array(Int32)?)?) : Nil
        @points = points
    end
    

    def getTotalFrames : Int32
        return @totalFrames
    end
    

    def setTotalFrames(totalFrames : Int) : Nil
        totalFrames = totalFrames.to_i32!
        @totalFrames = totalFrames
    end
end

