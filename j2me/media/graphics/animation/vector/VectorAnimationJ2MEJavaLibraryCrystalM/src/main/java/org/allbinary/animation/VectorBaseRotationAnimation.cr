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

class VectorBaseRotationAnimation < RotationAnimation
    include VectorAnimationInterface
    @currentPoints : Array(Array(Array(Int32)?)?)? = nil

    def jf_currentPoints : Array(Array(Array(Int32)?)?)?
        @currentPoints
    end

    def jf_currentPoints=(value : Array(Array(Array(Int32)?)?)?) : Array(Array(Array(Int32)?)?)?
        @currentPoints = value
    end

    # Java field initializers run after the super constructor
    def jfields_VectorBaseRotationAnimation : Nil
    @currentPoints = NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY_ARRAY_ARRAY
    end
    

    def jinit_VectorBaseRotationAnimation(angleInfo : AngleInfo?, currentPoints : Array(Array(Array(Int32)?)?)?, basicColor : BasicColor?, animationBehavior : AnimationBehavior?) : self
        jinit_RotationAnimation(angleInfo, CircularIndexUtil.createInstance(360.tdiv(((angleInfo.not_nil!.getAngleIncrementInfo().not_nil!.getAngleIncrement()).to_i32!).to_i32)), animationBehavior)
        jfields_VectorBaseRotationAnimation()
        self.setPoints(currentPoints)
        self.setBasicColorP(basicColor)
        self
    end
    

    def getAnimationSize : Int32
        return self.getSize()
    end
    

    def getFrame : Int32
        return @circularIndexUtil.not_nil!.getIndex()
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
        @circularIndexUtil.not_nil!.setIndex(index)
    end
    

    def nextFrame : Nil
        @circularIndexUtil.not_nil!.next_()
    end
    

    def previousFrame : Nil
        @circularIndexUtil.not_nil!.previous()
    end
    

    def getSize : Int32
        return @currentPoints.not_nil!.size
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @basicSetColorUtil.not_nil!.setBasicColorP(graphics, @basicColor)
        begin
            nextPointX : Int32 = 0
            nextPointY : Int32 = 0
            nextPoint : Array(Int32)? = nil
            point : Array(Int32)? = nil
            currentPointsFrame : Array(Array(Int32)?)? = @currentPoints.not_nil![@circularIndexUtil.not_nil!.getIndex()]
            size : Int32 = currentPointsFrame.not_nil!.size
            index : Int32 = size &- 2
            while (index &-= 1) >= 0
                nextPoint = currentPointsFrame.not_nil![index]
                point = currentPointsFrame.not_nil![index &+ 1]
                nextPointX = nextPoint.not_nil![0]
                nextPointY = nextPoint.not_nil![1]
                if nextPointX != 1000
                    graphics.not_nil!.drawLine(point.not_nil![0] &+ x, point.not_nil![1] &+ y, nextPointX &+ x, nextPointY &+ y)
                else
                    index &-= 1
                end
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "paintVectors", e)
            else
                raise jex1
            end
        end
    end
    

    def getPoints(frame : Int) : Array(Array(Int32)?)?
        frame = frame.to_i32!
        return @currentPoints.not_nil![frame]
    end
    

    def setPoints(currentPoints : Array(Array(Array(Int32)?)?)?) : Nil
        @currentPoints = currentPoints
        @circularIndexUtil = CircularIndexUtil.createInstance(@currentPoints.not_nil!.size)
    end
    

    def getBasicColorP : BasicColor?
        return super()
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        super(basicColor)
    end
end

