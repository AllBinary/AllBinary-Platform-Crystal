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

class RotationAnimation < IndexedAnimation
    include RotationAnimationInterface
    @frameUtil : FrameUtil? = nil

    def jf_frameUtil : FrameUtil?
        @frameUtil
    end

    def jf_frameUtil=(value : FrameUtil?) : FrameUtil?
        @frameUtil = value
    end
    @directionUtil : DirectionUtil? = nil

    def jf_directionUtil : DirectionUtil?
        @directionUtil
    end

    def jf_directionUtil=(value : DirectionUtil?) : DirectionUtil?
        @directionUtil = value
    end
    @angleInfo : AngleInfo? = nil

    def jf_angleInfo : AngleInfo?
        @angleInfo
    end

    def jf_angleInfo=(value : AngleInfo?) : AngleInfo?
        @angleInfo = value
    end
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_RotationAnimation : Nil
    @frameUtil = FrameUtil.getInstance()
    @directionUtil = DirectionUtil.getInstance()
    
    
    end
    

    def jinit_RotationAnimation(angleInfo : AngleInfo?, circularIndexUtil : CircularIndexUtil?, animationBehavior : AnimationBehavior?) : self
        jinit_IndexedAnimation(animationBehavior)
        jfields_RotationAnimation()
        @angleInfo = angleInfo
        @circularIndexUtil = circularIndexUtil
        self
    end
    

    def nextRotationX : Nil
    end
    

    def previousRotationX : Nil
    end
    

    def nextRotation : Nil
        @angleInfo.not_nil!.adjustAngle(@circularIndexUtil.not_nil!.next_())
    end
    

    def previousRotation : Nil
        @angleInfo.not_nil!.adjustAngle(@circularIndexUtil.not_nil!.previous())
    end
    

    def nextRotationZ : Nil
    end
    

    def previousRotationZ : Nil
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
        @circularIndexUtil.not_nil!.setIndex(index)
        newFrame : Int32 = @circularIndexUtil.not_nil!.getIndex()
        @angleInfo.not_nil!.adjustAngle(newFrame)
    end
    

    def setFrameByDirection(direction : Direction?) : Nil
        angle : Angle? = @directionUtil.not_nil!.getFrameAngle(direction)
        self.adjustFrameToAngle(angle)
    end
    

    def setFrameToAngle(angle : Angle?) : Nil
        self.adjustFrameToAngle(angle)
    end
    

    def adjustFrameToAngle(angle : Angle?) : Nil
        self.adjustFrame(angle.not_nil!.getValue())
    end
    

    def adjustFrame(angle : Int) : Nil
        angle = angle.to_i16!
        self.setFrame(@frameUtil.not_nil!.getFrameForAngle(angle, (@angleInfo.not_nil!.getAngleIncrementInfo().not_nil!.getAngleIncrement()).to_i32!))
    end
    

    def getFrame : Int32
        return @circularIndexUtil.not_nil!.getIndex()
    end
    

    def getSize : Int32
        return @circularIndexUtil.not_nil!.getSize()
    end
    

    def getAngleInfoP : AngleInfo?
        return @angleInfo
    end
    

    def toString : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append(super()).not_nil!.append("circularIndexUtil: ").not_nil!.append(@circularIndexUtil.not_nil!.toString()).not_nil!.append("angleInfo: ").not_nil!.append(@angleInfo.not_nil!.toString()).not_nil!.toString()
    end
end

