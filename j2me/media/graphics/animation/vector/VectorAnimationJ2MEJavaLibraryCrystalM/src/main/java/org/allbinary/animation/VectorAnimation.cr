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

class VectorAnimation < IndexedAnimation
    include VectorAnimationInterface
    @currentPoints : Array(Array(Array(Int32)?)?)? = nil

    def jf_currentPoints : Array(Array(Array(Int32)?)?)?
        @currentPoints
    end

    def jf_currentPoints=(value : Array(Array(Array(Int32)?)?)?) : Array(Array(Array(Int32)?)?)?
        @currentPoints = value
    end
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    

    def self.createVectorAnimation(currentPoints2 : Array(Array(Int32)?)?, basicColor : BasicColor?, animationBehavior : AnimationBehavior?) : VectorAnimation?
        currentPoints : Array(Array(Array(Int32)?)?)? = Array(Array(Array(Int32)?)?).new(1) { Array(Array(Int32)?).new(currentPoints2.not_nil!.size) { Array(Int32).new(2, 0).as(Array(Int32)?) }.as(Array(Array(Int32)?)?) }
        size : Int32 = currentPoints2.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            currentPoints.not_nil![0].not_nil![index].not_nil![0] = currentPoints2.not_nil![index].not_nil![0]
            currentPoints.not_nil![0].not_nil![index].not_nil![1] = currentPoints2.not_nil![index].not_nil![1]
        end
        return VectorAnimation.new.jinit_VectorAnimation(currentPoints, basicColor, animationBehavior)
    end

    # Java field initializers run after the super constructor
    def jfields_VectorAnimation : Nil
    @currentPoints = NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY_ARRAY_ARRAY
    @circularIndexUtil = CircularIndexUtil.createInstance(0)
    end
    

    def jinit_VectorAnimation(currentPoints : Array(Array(Array(Int32)?)?)?, basicColor : BasicColor?, animationBehavior : AnimationBehavior?) : self
        jinit_IndexedAnimation(animationBehavior)
        jfields_VectorAnimation()
        self.setPoints(currentPoints)
        self.setBasicColorP(basicColor)
        self
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        changed : Bool = false
        if (self.getBasicColorP()).nil? || self.getBasicColorP().not_nil!.intValue() != basicColor.not_nil!.intValue()
            changed = true
        end
        super(basicColor)
        if changed
            self.updateModifiers()
        end
    end
    

    def changeBasicColor(basicColor : BasicColor?) : Nil
        changed : Bool = false
        if (self.getChangeBasicColor()).nil? || self.getChangeBasicColor().not_nil!.intValue() != basicColor.not_nil!.intValue()
            changed = true
        end
        super(basicColor)
        if changed
            self.updateModifiers()
        end
    end
    

    def setAlpha(alpha : Int) : Nil
        alpha = alpha.to_i32!
        changed : Bool = false
        if @alphaP != alpha
            changed = true
        end
        super(alpha)
        if changed
            self.updateModifiers()
        end
    end
    

    def setScale(scaleX : Number, scaleY : Number) : Nil
        scaleX = scaleX.to_f32
        scaleY = scaleY.to_f32
    end
    

    def setMaxScale(maxScaleX : Number, maxScaleY : Number) : Nil
        maxScaleX = maxScaleX.to_f32
        maxScaleY = maxScaleY.to_f32
    end
    

    def updateModifiers : Nil
    end
    

    def getAnimationSize : Int32
        return self.getSize()
    end
    

    def getSize : Int32
        return @currentPoints.not_nil!.size
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def nextFrame : Nil
        @circularIndexUtil.not_nil!.next_()
    end
    

    def previousFrame : Nil
        @circularIndexUtil.not_nil!.previous()
    end
    

    def paintVectors(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
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
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @basicSetColorUtil.not_nil!.setBasicColorP(graphics, @basicColor)
        self.paintVectors(graphics, x, y)
    end
    

    def getFrame : Int32
        return @circularIndexUtil.not_nil!.getIndex()
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
        @circularIndexUtil.not_nil!.setIndex(index)
    end
    

    def getPoints(frame : Int) : Array(Array(Int32)?)?
        frame = frame.to_i32!
        return @currentPoints.not_nil![frame]
    end
    

    def setPoints(currentPoints : Array(Array(Array(Int32)?)?)?) : Nil
        @currentPoints = currentPoints
        @circularIndexUtil = CircularIndexUtil.createInstance(currentPoints.not_nil!.size)
    end
    

    def getBasicColorP : BasicColor?
        return super()
    end
end

