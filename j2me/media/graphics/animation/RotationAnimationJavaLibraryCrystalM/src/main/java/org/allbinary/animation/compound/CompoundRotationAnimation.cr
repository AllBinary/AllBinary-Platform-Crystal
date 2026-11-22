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
# package org.allbinary.animation.compound

class CompoundRotationAnimation < RotationAnimation
    include CompoundAnimationInterface
    @animationInterfaceArray : Array(RotationAnimation?)? = nil

    def jf_animationInterfaceArray : Array(RotationAnimation?)?
        @animationInterfaceArray
    end

    def jf_animationInterfaceArray=(value : Array(RotationAnimation?)?) : Array(RotationAnimation?)?
        @animationInterfaceArray = value
    end
    

    def jinit_CompoundRotationAnimation(animationInterfaceArray : Array(RotationAnimation?)?, animationBehavior : AnimationBehavior?) : self
        jinit_RotationAnimation(AngleInfo.getInstance(AngleFactory.getInstance().not_nil!.jf_QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
        @animationInterfaceArray = animationInterfaceArray
        @circularIndexUtil = CircularIndexUtil.createInstance(@animationInterfaceArray.not_nil!.size)
        self
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.setFrame(index)
    end
    

    def getFrame : Int32
        return @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.getFrame()
    end
    

    def getAnimationSize : Int32
        return @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.getAnimationSize()
    end
    

    def getSize : Int32
        return @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.getSize()
    end
    

    def previousFrame : Nil
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.previousFrame()
    end
    

    def nextFrame : Nil
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.nextFrame()
    end
    

    def previousRotation : Nil
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.previousRotation()
    end
    

    def nextRotation : Nil
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.nextRotation()
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.paintXY(graphics, x, y)
    end
    

    def paintThreedXYZ(graphics : Graphics?, x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.paintThreedXYZ(graphics, x, y, z)
    end
    

    def getCurrentAnimation : IndexedAnimation?
        return @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()]
    end
    

    def nextAnimation : Nil
        frame : Int32 = self.getFrame()
        @circularIndexUtil.not_nil!.next_()
        self.setFrame(frame)
    end
    

    def previousAnimation : Nil
        frame : Int32 = self.getFrame()
        @circularIndexUtil.not_nil!.previous()
        self.setFrame(frame)
    end
    

    def setAnimation(index : Int) : Nil
        index = index.to_i32!
        frame : Int32 = self.getFrame()
        @circularIndexUtil.not_nil!.setIndex(index)
        self.setFrame(frame)
    end
    

    def setFrameByDirection(direction : Direction?) : Nil
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.setFrameByDirection(direction)
    end
    

    def setFrameToAngle(angle : Angle?) : Nil
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.setFrameToAngle(angle)
    end
    

    def adjustFrameToAngle(newAngle : Angle?) : Nil
        self.adjustFrame(newAngle.not_nil!.getValue())
    end
    

    def adjustFrame(angle : Int) : Nil
        angle = angle.to_i16!
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.adjustFrame(angle)
    end
    

    def getAngleInfoP : AngleInfo?
        return @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.getAngleInfoP()
    end
    

    def getAnimationInterfaceArray : Array(RotationAnimation?)?
        return @animationInterfaceArray
    end
    

    def setAnimationInterfaceArray(animationInterfaceArray : Array(RotationAnimation?)?) : Nil
        @animationInterfaceArray = animationInterfaceArray
    end
    

    def set(gl : GL?) : Nil
        index : Int32 = @animationInterfaceArray.not_nil!.size
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            @animationInterfaceArray.not_nil![index].not_nil!.set(gl)
        end
    end
end

