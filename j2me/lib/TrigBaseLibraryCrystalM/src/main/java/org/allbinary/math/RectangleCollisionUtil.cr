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

class RectangleCollisionUtil < JObject

    @@jst_instance : RectangleCollisionUtil? = nil

    def self.jst_instance : RectangleCollisionUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : RectangleCollisionUtil?) : RectangleCollisionUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = RectangleCollisionUtil.new.jinit_RectangleCollisionUtil()
    end
    

    def self.getInstance : RectangleCollisionUtil?
        return RectangleCollisionUtil.jst_instance
    end
    

    def jinit_RectangleCollisionUtil : self
        self
    end
    

    def isCollision(rectX1 : Int, rectY1 : Int, rectX2 : Int, rectY2 : Int, rect2X1 : Int, rect2Y1 : Int, rect2X2 : Int, rect2Y2 : Int) : Bool
        rectX1 = rectX1.to_i32!
        rectY1 = rectY1.to_i32!
        rectX2 = rectX2.to_i32!
        rectY2 = rectY2.to_i32!
        rect2X1 = rect2X1.to_i32!
        rect2Y1 = rect2Y1.to_i32!
        rect2X2 = rect2X2.to_i32!
        rect2Y2 = rect2Y2.to_i32!
        if rect2X1 >= rectX2 || rect2Y1 >= rectY2 || rect2X2 <= rectX1 || rect2Y2 <= rectY1
            return false
        else
            return true
        end
        return false
    end
    

    def isInside(rectX1 : Int, rectY1 : Int, rectX2 : Int, rectY2 : Int, x : Int, y : Int) : Bool
        rectX1 = rectX1.to_i32!
        rectY1 = rectY1.to_i32!
        rectX2 = rectX2.to_i32!
        rectY2 = rectY2.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        if x >= rectX2 || y >= rectY2 || x <= rectX1 || y <= rectY1
            return false
        else
            return true
        end
        return false
    end
end

