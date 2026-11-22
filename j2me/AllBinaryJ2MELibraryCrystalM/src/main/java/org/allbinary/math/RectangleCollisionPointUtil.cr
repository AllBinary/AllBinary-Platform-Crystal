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
# package org.allbinary.math

class RectangleCollisionPointUtil < JObject
    

    def self.allPointsInside(rectX1 : Int, rectY1 : Int, rectX2 : Int, rectY2 : Int, list : BasicArrayList?) : Bool
        rectX1 = rectX1.to_i32!
        rectY1 = rectY1.to_i32!
        rectX2 = rectX2.to_i32!
        rectY2 = rectY2.to_i32!
        rectangleCollisionUtil : RectangleCollisionUtil? = RectangleCollisionUtil.getInstance()
        point : GPoint? = nil
        index : Int32 = list.not_nil!.size()
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            point = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], GPoint)
            if !rectangleCollisionUtil.not_nil!.isInside(rectX1, rectY1, rectX2, rectY2, point.not_nil!.getX(), point.not_nil!.getY())
                return false
            end
        end
        return true
    end
    

    def self.allPointsInsideCell(rectX1 : Int, rectY1 : Int, rectX2 : Int, rectY2 : Int, list : BasicArrayList?, xCellSize : Int, yCellSize : Int) : Bool
        rectX1 = rectX1.to_i32!
        rectY1 = rectY1.to_i32!
        rectX2 = rectX2.to_i32!
        rectY2 = rectY2.to_i32!
        xCellSize = xCellSize.to_i32!
        yCellSize = yCellSize.to_i32!
        rectangleCollisionUtil : RectangleCollisionUtil? = RectangleCollisionUtil.getInstance()
        point : GPoint? = nil
        index : Int32 = list.not_nil!.size()
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            point = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], GPoint)
            if !rectangleCollisionUtil.not_nil!.isInside(rectX1, rectY1, rectX2, rectY2, point.not_nil!.getX() &* xCellSize, point.not_nil!.getY() &* yCellSize)
                return false
            end
        end
        return true
    end
    

    def jinit_RectangleCollisionPointUtil : self
        self
    end
end

