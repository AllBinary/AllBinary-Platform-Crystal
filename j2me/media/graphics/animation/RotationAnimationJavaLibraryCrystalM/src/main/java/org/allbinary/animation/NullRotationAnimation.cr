# Generated Code Do Not Modify
# package org.allbinary.animation

class NullRotationAnimation < RotationAnimation
    

    def self.createTotalAngle(angleInfo : AngleInfo?, totalAngle : Int, animationBehavior : AnimationBehavior?) : NullRotationAnimation?
        totalAngle = totalAngle.to_i16!
        return NullRotationAnimation.new.jinit_NullRotationAnimation(angleInfo, CircularIndexUtil.createInstance((totalAngle).to_i32.tdiv((angleInfo.not_nil!.getAngleIncrementInfo().not_nil!.getAngleIncrement()).to_i32)), animationBehavior)
    end
    

    def self.createQuarter(animationBehavior : AnimationBehavior?) : NullRotationAnimation?
        return NullRotationAnimation.new.jinit_NullRotationAnimation(AngleInfo.getInstance(AngleFactory.getInstance().not_nil!.jf_QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
    end
    

    def jinit_NullRotationAnimation(angleInfo : AngleInfo?, circularIndexUtil : CircularIndexUtil?, animationBehavior : AnimationBehavior?) : self
        jinit_RotationAnimation(angleInfo, circularIndexUtil, animationBehavior)
        self
    end
    

    def getAnimationSize : Int32
        return 0
    end
end

