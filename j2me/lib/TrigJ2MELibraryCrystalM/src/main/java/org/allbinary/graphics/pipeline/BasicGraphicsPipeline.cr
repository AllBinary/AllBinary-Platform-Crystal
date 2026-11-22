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
# package org.allbinary.graphics.pipeline

class BasicGraphicsPipeline < JObject
    @pointBasicArrayList : BasicArrayList? = nil

    def jf_pointBasicArrayList : BasicArrayList?
        @pointBasicArrayList
    end

    def jf_pointBasicArrayList=(value : BasicArrayList?) : BasicArrayList?
        @pointBasicArrayList = value
    end
    @noDecimalTrigTable : NoDecimalTrigTable? = nil

    def jf_noDecimalTrigTable : NoDecimalTrigTable?
        @noDecimalTrigTable
    end

    def jf_noDecimalTrigTable=(value : NoDecimalTrigTable?) : NoDecimalTrigTable?
        @noDecimalTrigTable = value
    end

    # Java field initializers run after the super constructor
    def jfields_BasicGraphicsPipeline : Nil
    
    @noDecimalTrigTable = NoDecimalTrigTable.getInstance()
    end
    

    def jinit_BasicGraphicsPipeline(points : BasicArrayList?) : self
        jfields_BasicGraphicsPipeline()
        @pointBasicArrayList = points
        self
    end
    

    def setInitMatrix(points : BasicArrayList?) : Nil
        @pointBasicArrayList = points
    end
    

    def createMatrix : Nil
    end
    

    def translate(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        newBasicArrayList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        size : Int32 = @pointBasicArrayList.not_nil!.size()
        pointFactory : PointFactory? = PointFactory.getInstance()
        secondPoint : GPoint? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            secondPoint = JR.cast(@pointBasicArrayList.not_nil!.jf_objectArray.not_nil![index], GPoint)
            if secondPoint.not_nil!.getX() != 1000
                newBasicArrayList.not_nil!.add(pointFactory.not_nil!.createXY(secondPoint.not_nil!.getX() &+ x, secondPoint.not_nil!.getY() &+ y))
            else
                newBasicArrayList.not_nil!.add(secondPoint)
            end
        end
        @pointBasicArrayList = newBasicArrayList
    end
    

    def rotateToAngle(angle : Angle?) : Nil
        self.rotate((angle.not_nil!.getValue()).to_i32!)
    end
    

    def rotate(angle : Int) : Nil
        angle = angle.to_i32!
        newBasicArrayList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        secondPoint : GPoint? = nil
        y : Int64 = 0_i64
        secondX : Int64 = 0_i64
        secondY : Int64 = 0_i64
        point : GPoint? = nil
        pointFactory : PointFactory? = PointFactory.getInstance()
        size : Int32 = @pointBasicArrayList.not_nil!.size()
        sin : Int64 = 0_i64
        cos : Int64 = 0_i64
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            secondPoint = JR.cast(@pointBasicArrayList.not_nil!.jf_objectArray.not_nil![index], GPoint)
            if secondPoint.not_nil!.getX() != 1000
                sin = @noDecimalTrigTable.not_nil!.sin(angle)
                cos = @noDecimalTrigTable.not_nil!.cos(angle)
                y = (secondPoint.not_nil!.getY()).to_i64! &* sin
                secondX = ((secondPoint.not_nil!.getX()).to_i64! &* cos) &- y
                secondY = ((secondPoint.not_nil!.getX()).to_i64! &* sin) &+ ((secondPoint.not_nil!.getY()).to_i64! &* cos)
                point = pointFactory.not_nil!.createXY((secondX).to_i32!.tdiv(10000), (secondY).to_i32!.tdiv(10000))
                newBasicArrayList.not_nil!.add(point)
            else
                newBasicArrayList.not_nil!.add(secondPoint)
            end
        end
        @pointBasicArrayList = newBasicArrayList
    end
    

    def mirror(width : Int) : Nil
        width = width.to_i32!
        pointFactory : PointFactory? = PointFactory.getInstance()
        halfWidth : Int32 = (JR.shr(width, 1))
        newBasicArrayList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        secondPoint : GPoint? = nil
        newX : Int32 = 0
        point : GPoint? = nil
        size : Int32 = @pointBasicArrayList.not_nil!.size()
        index : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < size
            secondPoint = JR.cast(@pointBasicArrayList.not_nil!.jf_objectArray.not_nil![index], GPoint)
            if secondPoint.not_nil!.getX() != 1000
                newX = 0
                if secondPoint.not_nil!.getX() > halfWidth
                    newX = halfWidth &- (secondPoint.not_nil!.getX() &- halfWidth)
                else
                    newX = halfWidth &+ (halfWidth &- secondPoint.not_nil!.getX())
                end
                point = pointFactory.not_nil!.createXY(newX, secondPoint.not_nil!.getY())
                newBasicArrayList.not_nil!.add(point)
            else
                newBasicArrayList.not_nil!.add(secondPoint)
            end
        end
        @pointBasicArrayList = newBasicArrayList
    end
    

    def getMatrix : BasicArrayList?
        return @pointBasicArrayList
    end
end

