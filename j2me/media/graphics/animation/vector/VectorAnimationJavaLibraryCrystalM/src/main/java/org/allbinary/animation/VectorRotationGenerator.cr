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

class VectorRotationGenerator < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @vectorAnimationUtil : VectorAnimationUtil? = nil

    def jf_vectorAnimationUtil : VectorAnimationUtil?
        @vectorAnimationUtil
    end

    def jf_vectorAnimationUtil=(value : VectorAnimationUtil?) : VectorAnimationUtil?
        @vectorAnimationUtil = value
    end
    @angleFactory : AngleFactory? = nil

    def jf_angleFactory : AngleFactory?
        @angleFactory
    end

    def jf_angleFactory=(value : AngleFactory?) : AngleFactory?
        @angleFactory = value
    end

    @@jst_instance : VectorRotationGenerator? = nil

    def self.jst_instance : VectorRotationGenerator?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : VectorRotationGenerator?) : VectorRotationGenerator?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = VectorRotationGenerator.new.jinit_VectorRotationGenerator()
    end
    

    def self.getInstance : VectorRotationGenerator?
        return VectorRotationGenerator.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_VectorRotationGenerator : Nil
    @logUtil = LogUtil.getInstance()
    @vectorAnimationUtil = VectorAnimationUtil.getInstance()
    @angleFactory = AngleFactory.getInstance()
    end
    

    def jinit_VectorRotationGenerator : self
        jfields_VectorRotationGenerator()
        self
    end
    

    def getInstance(vectorRotationInfo : VectorInfo?) : Array(Array(Array(Int32)?)?)?
        return self.getInstanceFrames(vectorRotationInfo.not_nil!.getWidth(), vectorRotationInfo.not_nil!.getHeight(), vectorRotationInfo.not_nil!.getPoints(), vectorRotationInfo.not_nil!.getTotalFrames())
    end
    

    def getInstanceFrames(width : Int, height : Int, points : Array(Array(Int32)?)?, frames : Int) : Array(Array(Array(Int32)?)?)?
        width = width.to_i32!
        height = height.to_i32!
        frames = frames.to_i32!
        begin
            totalAngle : Int16 = @angleFactory.not_nil!.jf_TOTAL_ANGLE
            angleIncrement : Int32 = ((totalAngle).to_i32!).to_i32.tdiv(frames)
            pointsBasicArrayList : BasicArrayList? = BasicArrayListS.new.jinit_BasicArrayListS(((totalAngle).to_i32!).to_i32.tdiv(angleIncrement))
            pointBasicArrayList : BasicArrayList? = BasicArrayListS.new.jinit_BasicArrayListS(points.not_nil!.size)
            pointFactory : PointFactory? = PointFactory.getInstance()
            size : Int32 = points.not_nil!.size
            index = 0
            jfor1 = false
            while true
                if jfor1
                    index &+= 1
                end
                jfor1 = true
                break unless index < size
                pointBasicArrayList.not_nil!.add(pointFactory.not_nil!.createXY(points.not_nil![index].not_nil![0], points.not_nil![index].not_nil![1]))
            end
            index = 0
            while index < (totalAngle).to_i32!
                pointsBasicArrayList.not_nil!.add(self.getListAtAngle(width, height, pointBasicArrayList, @angleFactory.not_nil!.getAt(index)))
                index &+= angleIncrement
            end
            newPoints : Array(Array(Array(Int32)?)?)? = @vectorAnimationUtil.not_nil!.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, pointBasicArrayList.not_nil!.size())
            return newPoints
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_GET_INSTANCE, e)
            return NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY_ARRAY_ARRAY
            else
                raise jex1
            end
        end
        return nil
    end
    

    def getListAtAngle(width : Int, height : Int, pointBasicArrayList : BasicArrayList?, angle : Angle?) : BasicArrayList?
        width = width.to_i32!
        height = height.to_i32!
        graphicsPipe : BasicGraphicsPipeline? = BasicGraphicsPipeline.new.jinit_BasicGraphicsPipeline(pointBasicArrayList)
        graphicsPipe.not_nil!.createMatrix()
        graphicsPipe.not_nil!.translate(JR.neg((JR.shr(width, 1))), JR.neg((JR.shr(height, 1))))
        graphicsPipe.not_nil!.rotateToAngle(angle)
        graphicsPipe.not_nil!.translate((JR.shr(width, 1)), (JR.shr(height, 1)))
        return graphicsPipe.not_nil!.getMatrix()
    end
end

