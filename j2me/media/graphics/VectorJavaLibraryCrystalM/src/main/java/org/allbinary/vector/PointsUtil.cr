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

class PointsUtil < JObject

    @@jst_instance : PointsUtil? = nil

    def self.jst_instance : PointsUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PointsUtil?) : PointsUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PointsUtil.new.jinit_PointsUtil()
    end
    

    def self.getInstance : PointsUtil?
        return PointsUtil.jst_instance
    end

    def jinit_PointsUtil : self
        self
    end
    

    def adjustXY(points : Array(Array(Array(Int32)?)?)?, x : Int, y : Int) : Array(Array(Array(Int32)?)?)?
        x = x.to_i32!
        y = y.to_i32!
        size : Int32 = points.not_nil!.size
        newPoints : Array(Array(Array(Int32)?)?)? = Array(Array(Array(Int32)?)?).new(size) { Array(Array(Int32)?).new(0) { Array(Int32).new(0, 0).as(Array(Int32)?) }.as(Array(Array(Int32)?)?) }
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            size2 : Int32 = points.not_nil![index].not_nil!.size
            newPoints.not_nil![index] = Array(Array(Int32)?).new(size2) { Array(Int32).new(2, 0).as(Array(Int32)?) }
            index2 : Int32 = 0
            jfor2 = false
            while true
                if jfor2
                    index2 &+= 1
                end
                jfor2 = true
                break unless index2 < size2
                if points.not_nil![index].not_nil![index2].not_nil![0] != 1000
                    newPoints.not_nil![index].not_nil![index2].not_nil![0] = points.not_nil![index].not_nil![index2].not_nil![0] + x
                    newPoints.not_nil![index].not_nil![index2].not_nil![1] = points.not_nil![index].not_nil![index2].not_nil![1] + y
                else
                    newPoints.not_nil![index].not_nil![index2].not_nil![0] = 1000
                    newPoints.not_nil![index].not_nil![index2].not_nil![1] = 1000
                end
            end
        end
        return newPoints
    end
    

    def adjust(points : Array(Array(Int32)?)?, both : Int) : Array(Array(Int32)?)?
        both = both.to_i32!
        return self.adjust(points, both, both)
    end
    

    def adjust(points : Array(Array(Int32)?)?, x : Int, y : Int) : Array(Array(Int32)?)?
        x = x.to_i32!
        y = y.to_i32!
        newPoints : Array(Array(Int32)?)? = Array(Array(Int32)?).new(points.not_nil!.size) { Array(Int32).new(2, 0).as(Array(Int32)?) }
        index2 : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index2 &+= 1
            end
            jfor3 = true
            break unless index2 < points.not_nil!.size
            if points.not_nil![index2].not_nil![0] != 1000
                newPoints.not_nil![index2].not_nil![0] = points.not_nil![index2].not_nil![0] + x
                newPoints.not_nil![index2].not_nil![1] = points.not_nil![index2].not_nil![1] + y
            else
                newPoints.not_nil![index2].not_nil![0] = 1000
                newPoints.not_nil![index2].not_nil![1] = 1000
            end
        end
        return newPoints
    end
end

