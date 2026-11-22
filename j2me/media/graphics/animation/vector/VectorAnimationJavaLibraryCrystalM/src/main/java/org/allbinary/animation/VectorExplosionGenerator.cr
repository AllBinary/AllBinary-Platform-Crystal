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

class VectorExplosionGenerator < JObject
    @j_RANDOM : VectorExplosionType? = nil

    def jf_RANDOM : VectorExplosionType?
        @j_RANDOM
    end

    def jf_RANDOM=(value : VectorExplosionType?) : VectorExplosionType?
        @j_RANDOM = value
    end
    @j_ROTATION : VectorExplosionType? = nil

    def jf_ROTATION : VectorExplosionType?
        @j_ROTATION
    end

    def jf_ROTATION=(value : VectorExplosionType?) : VectorExplosionType?
        @j_ROTATION = value
    end
    @vectorAnimationUtil : VectorAnimationUtil? = nil

    def jf_vectorAnimationUtil : VectorAnimationUtil?
        @vectorAnimationUtil
    end

    def jf_vectorAnimationUtil=(value : VectorAnimationUtil?) : VectorAnimationUtil?
        @vectorAnimationUtil = value
    end
    @randomRotationFactory : RandomRotationFactory? = nil

    def jf_randomRotationFactory : RandomRotationFactory?
        @randomRotationFactory
    end

    def jf_randomRotationFactory=(value : RandomRotationFactory?) : RandomRotationFactory?
        @randomRotationFactory = value
    end

    @@jst_instance : VectorExplosionGenerator? = nil

    def self.jst_instance : VectorExplosionGenerator?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : VectorExplosionGenerator?) : VectorExplosionGenerator?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = VectorExplosionGenerator.new.jinit_VectorExplosionGenerator()
    end
    

    def self.getInstance : VectorExplosionGenerator?
        return VectorExplosionGenerator.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_VectorExplosionGenerator : Nil
    @j_RANDOM = VectorExplosionType.new.jinit_VectorExplosionType()
    @j_ROTATION = VectorExplosionType.new.jinit_VectorExplosionType()
    @vectorAnimationUtil = VectorAnimationUtil.getInstance()
    @randomRotationFactory = RandomRotationFactory.getInstance()
    end
    

    def jinit_VectorExplosionGenerator : self
        jfields_VectorExplosionGenerator()
        self
    end
    

    def createList(list : BasicArrayList?, howMuch : Int, type_ : VectorExplosionType?) : BasicArrayList?
        howMuch = howMuch.to_i32!
        point : GPoint? = nil
        size : Int32 = list.not_nil!.size()
        points : Array(Array(Int32)?)? = Array(Array(Int32)?).new(size) { Array(Int32).new(2, 0).as(Array(Int32)?) }
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            point = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], GPoint)
            points.not_nil![index].not_nil![0] = point.not_nil!.getX()
            points.not_nil![index].not_nil![1] = point.not_nil!.getY()
        end
        return self.createListFromPoints(list, points, howMuch, type_)
    end
    

    def getInstance(points : Array(Array(Int32)?)?, howMuch : Int, type_ : VectorExplosionType?) : Array(Array(Array(Int32)?)?)?
        howMuch = howMuch.to_i32!
        pointsBasicArrayList : BasicArrayList? = self.getInstanceStartFrame(points, howMuch, type_, true)
        tempBasicArrayList : BasicArrayList? = JR.cast(pointsBasicArrayList.not_nil!.jf_objectArray.not_nil![0], BasicArrayList)
        newPoints : Array(Array(Array(Int32)?)?)? = @vectorAnimationUtil.not_nil!.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, tempBasicArrayList.not_nil!.size())
        return newPoints
    end
    

    def getInstanceStartFrame(points : Array(Array(Int32)?)?, howMuch : Int, type_ : VectorExplosionType?, startFrame : Bool) : BasicArrayList?
        howMuch = howMuch.to_i32!
        begin
            pointsBasicArrayList : BasicArrayList? = BasicArrayListS.new.jinit_BasicArrayListS(howMuch)
            pointsBasicArrayList.not_nil!.add(self.createPointsBasicArrayList(points))
            frameIndex : Int32 = 0
            tempBasicArrayList : BasicArrayList? = nil
            pointBasicArrayList : BasicArrayList? = nil
            while frameIndex < howMuch
                tempBasicArrayList = JR.cast(pointsBasicArrayList.not_nil!.jf_objectArray.not_nil![frameIndex], BasicArrayList)
                pointBasicArrayList = self.createListFromPoints(tempBasicArrayList, points, howMuch, type_)
                pointsBasicArrayList.not_nil!.add(pointBasicArrayList)
                frameIndex &+= 1
            end
            if !startFrame
                pointsBasicArrayList.not_nil!.removeAt(0)
            end
            return pointsBasicArrayList
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            raise (e).not_nil!
            else
                raise jex1
            end
        end
        return nil
    end
    

    def createListFromPoints(tempBasicArrayList : BasicArrayList?, points : Array(Array(Int32)?)?, howMuch : Int, type_ : VectorExplosionType?) : BasicArrayList?
        howMuch = howMuch.to_i32!
        index : Int32 = 0
        pointBasicArrayList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        sectionBasicArrayList : BasicArrayList? = nil
        while index < points.not_nil!.size
            sectionBasicArrayList = BasicArrayListD.new.jinit_BasicArrayListD()
            while points.not_nil![index].not_nil![0] != 1000
                sectionBasicArrayList.not_nil!.add(tempBasicArrayList.not_nil!.jf_objectArray.not_nil![index])
                index &+= 1
                if index >= points.not_nil!.size
                    break
                end
            end
            sectionBasicArrayList = RandomTranslation.getInstance(sectionBasicArrayList, howMuch)
            if type_ == @j_ROTATION
                sectionBasicArrayList = @randomRotationFactory.not_nil!.getInstanceList(sectionBasicArrayList, howMuch)
            end
            size : Int32 = sectionBasicArrayList.not_nil!.size()
            index2 : Int32 = 0
            jfor2 = false
            while true
                if jfor2
                    index2 &+= 1
                end
                jfor2 = true
                break unless index2 < size
                pointBasicArrayList.not_nil!.add(sectionBasicArrayList.not_nil!.jf_objectArray.not_nil![index2])
            end
            if index >= points.not_nil!.size
                break
            elsif points.not_nil![index].not_nil![0] == 1000
                pointBasicArrayList.not_nil!.add(tempBasicArrayList.not_nil!.jf_objectArray.not_nil![index])
                index &+= 1
            end
        end
        return pointBasicArrayList
    end
    

    def createPointsBasicArrayList(points : Array(Array(Int32)?)?) : BasicArrayList?
        if points.not_nil!.size == 0
            raise (JException.new.jinit_JException("Not Points Provided")).not_nil!
        end
        firstPointBasicArrayList : BasicArrayList? = BasicArrayListS.new.jinit_BasicArrayListS(points.not_nil!.size)
        pointFactory : PointFactory? = PointFactory.getInstance()
        index : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < points.not_nil!.size
            firstPointBasicArrayList.not_nil!.add(pointFactory.not_nil!.createXY(points.not_nil![index].not_nil![0], points.not_nil![index].not_nil![1]))
        end
        return firstPointBasicArrayList
    end
end

