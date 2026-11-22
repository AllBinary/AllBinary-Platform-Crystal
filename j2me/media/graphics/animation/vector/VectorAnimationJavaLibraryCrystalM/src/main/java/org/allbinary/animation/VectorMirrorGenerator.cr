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

class VectorMirrorGenerator < JObject
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

    @@jst_instance : VectorMirrorGenerator? = nil

    def self.jst_instance : VectorMirrorGenerator?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : VectorMirrorGenerator?) : VectorMirrorGenerator?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = VectorMirrorGenerator.new.jinit_VectorMirrorGenerator()
    end
    

    def self.getInstance : VectorMirrorGenerator?
        return VectorMirrorGenerator.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_VectorMirrorGenerator : Nil
    @logUtil = LogUtil.getInstance()
    @vectorAnimationUtil = VectorAnimationUtil.getInstance()
    end
    

    def jinit_VectorMirrorGenerator : self
        jfields_VectorMirrorGenerator()
        self
    end
    

    def getInstance(points : Array(Array(Array(Int32)?)?)?, width : Int32) : Array(Array(Array(Int32)?)?)?
        begin
            pointFactory : PointFactory? = PointFactory.getInstance()
            pointBasicArrayList : BasicArrayList? = nil
            nextPoints : Array(Array(Int32)?)? = nil
            size2 : Int32 = 0
            size : Int32 = points.not_nil!.size
            pointsBasicArrayList : BasicArrayList? = BasicArrayListS.new.jinit_BasicArrayListS(size)
            frame : Int32 = 0
            jfor1 = false
            while true
                if jfor1
                    frame &+= 1
                end
                jfor1 = true
                break unless frame < size
                nextPoints = points.not_nil![frame]
                size2 = nextPoints.not_nil!.size
                pointBasicArrayList = BasicArrayListS.new.jinit_BasicArrayListS(size2)
                index = 0
                jfor2 = false
                while true
                    if jfor2
                        index &+= 1
                    end
                    jfor2 = true
                    break unless index < size2
                    pointBasicArrayList.not_nil!.add(pointFactory.not_nil!.createXY(nextPoints.not_nil![index].not_nil![0], nextPoints.not_nil![index].not_nil![1]))
                end
                pointsBasicArrayList.not_nil!.add(pointBasicArrayList)
            end
            index = 0
            jfor3 = false
            while true
                if jfor3
                    index &+= 1
                end
                jfor3 = true
                break unless index < points.not_nil!.size
                pointsBasicArrayList.not_nil!.add(self.getInstance(JR.cast(pointsBasicArrayList.not_nil!.jf_objectArray.not_nil![index], BasicArrayList), width))
            end
            newPoints : Array(Array(Array(Int32)?)?)? = @vectorAnimationUtil.not_nil!.toAnimationArrayFromListOfPointList(pointsBasicArrayList)
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
    

    def getInstance(pointBasicArrayList : BasicArrayList?, width : Int32) : BasicArrayList?
        graphicsPipe : BasicGraphicsPipeline? = BasicGraphicsPipeline.new.jinit_BasicGraphicsPipeline(pointBasicArrayList)
        graphicsPipe.not_nil!.createMatrix()
        graphicsPipe.not_nil!.mirror(width)
        return graphicsPipe.not_nil!.getMatrix()
    end
end

