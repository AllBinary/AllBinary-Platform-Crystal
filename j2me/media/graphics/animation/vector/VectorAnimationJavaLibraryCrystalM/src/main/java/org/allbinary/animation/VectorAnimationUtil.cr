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
# package org.allbinary.animation

class VectorAnimationUtil < JObject

    @@jst_instance : VectorAnimationUtil? = nil

    def self.jst_instance : VectorAnimationUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : VectorAnimationUtil?) : VectorAnimationUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = VectorAnimationUtil.new.jinit_VectorAnimationUtil()
    end
    

    def self.getInstance : VectorAnimationUtil?
        return VectorAnimationUtil.jst_instance
    end
    

    def jinit_VectorAnimationUtil : self
        self
    end
    

    def toAnimationArrayFromListOfPointListWithPointsPerFrame(vector : BasicArrayList?, pointsPerFrame : Int) : Array(Array(Array(Int32)?)?)?
        pointsPerFrame = pointsPerFrame.to_i32!
        size : Int32 = vector.not_nil!.size()
        points : Array(Array(Array(Int32)?)?)? = Array(Array(Array(Int32)?)?).new(size) { Array(Array(Int32)?).new(pointsPerFrame) { Array(Int32).new(2, 0).as(Array(Int32)?) }.as(Array(Array(Int32)?)?) }
        nextBasicArrayList : BasicArrayList? = nil
        framePoints : Array(Array(Int32)?)? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            nextBasicArrayList = JR.cast(vector.not_nil!.jf_objectArray.not_nil![index], BasicArrayList)
            framePoints = self.toFrameArrayFromPointBasicArrayList(nextBasicArrayList)
            pointIndex : Int32 = 0
            jfor2 = false
            while true
                if jfor2
                    pointIndex &+= 1
                end
                jfor2 = true
                break unless pointIndex < framePoints.not_nil!.size
                points.not_nil![index].not_nil![pointIndex].not_nil![0] = framePoints.not_nil![pointIndex].not_nil![0]
                points.not_nil![index].not_nil![pointIndex].not_nil![1] = framePoints.not_nil![pointIndex].not_nil![1]
            end
        end
        return points
    end
    

    def toAnimationArrayFromListOfPointList(vector : BasicArrayList?) : Array(Array(Array(Int32)?)?)?
        size : Int32 = vector.not_nil!.size()
        points : Array(Array(Array(Int32)?)?)? = Array(Array(Array(Int32)?)?).new(size) { Array(Array(Int32)?).new(0) { Array(Int32).new(0, 0).as(Array(Int32)?) }.as(Array(Array(Int32)?)?) }
        nextBasicArrayList : BasicArrayList? = nil
        framePoints : Array(Array(Int32)?)? = nil
        index : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < size
            nextBasicArrayList = JR.cast(vector.not_nil!.jf_objectArray.not_nil![index], BasicArrayList)
            framePoints = self.toFrameArrayFromPointBasicArrayList(nextBasicArrayList)
            points.not_nil![index] = Array(Array(Int32)?).new(framePoints.not_nil!.size) { Array(Int32).new(2, 0).as(Array(Int32)?) }
            pointIndex : Int32 = 0
            jfor4 = false
            while true
                if jfor4
                    pointIndex &+= 1
                end
                jfor4 = true
                break unless pointIndex < framePoints.not_nil!.size
                points.not_nil![index].not_nil![pointIndex].not_nil![0] = framePoints.not_nil![pointIndex].not_nil![0]
                points.not_nil![index].not_nil![pointIndex].not_nil![1] = framePoints.not_nil![pointIndex].not_nil![1]
            end
        end
        return points
    end
    

    def toFrameArrayFromPointBasicArrayList(list : BasicArrayList?) : Array(Array(Int32)?)?
        points : Array(Array(Int32)?)? = Array(Array(Int32)?).new(list.not_nil!.size()) { Array(Int32).new(2, 0).as(Array(Int32)?) }
        size : Int32 = list.not_nil!.size()
        index : Int32 = 0
        jfor5 = false
        while true
            if jfor5
                index &+= 1
            end
            jfor5 = true
            break unless index < size
            nextPoint : GPoint? = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], GPoint)
            points.not_nil![index].not_nil![0] = nextPoint.not_nil!.getX()
            points.not_nil![index].not_nil![1] = nextPoint.not_nil!.getY()
        end
        return points
    end
end

