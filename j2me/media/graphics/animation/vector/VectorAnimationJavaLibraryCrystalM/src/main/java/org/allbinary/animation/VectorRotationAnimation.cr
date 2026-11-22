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

class VectorRotationAnimation < VectorBaseRotationAnimation
    

    def jinit_VectorRotationAnimation(currentPoints : Array(Array(Array(Int32)?)?)?, basicColor : BasicColor?, animationBehavior : AnimationBehavior?) : self
        jinit_VectorBaseRotationAnimation(AngleInfo.getInstance(((((AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!).to_i32.tdiv(currentPoints.not_nil!.size))).to_i16!), currentPoints, basicColor, animationBehavior)
        @angleInfo.not_nil!.adjustAngle(self.getFrame())
        self
    end
    

    def setFrameByDirection(direction : Direction?) : Nil
        angle : Angle? = @directionUtil.not_nil!.getFrameAngle(direction)
        self.adjustFrameToAngle(angle)
    end
    

    def setFrameToAngle(angle : Angle?) : Nil
        self.adjustFrameToAngle(angle)
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
        super(index)
        @angleInfo.not_nil!.adjustAngle(self.getFrame())
    end
    

    def adjustFrame(newAngle : Int) : Nil
        newAngle = newAngle.to_i16!
        self.setFrame(@frameUtil.not_nil!.getFrameForAngle(newAngle, (@angleInfo.not_nil!.getAngleIncrementInfo().not_nil!.getAngleIncrement()).to_i32!))
    end
    

    def adjustFrameToAngle(newAngle : Angle?) : Nil
        self.adjustFrame(newAngle.not_nil!.getValue())
    end
end

