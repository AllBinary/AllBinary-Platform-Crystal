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
# package org.allbinary.physics.movement

class DelayedConstantVelocityMovement < BasicConstantVelocityMovement
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end

    # Java field initializers run after the super constructor
    def jfields_DelayedConstantVelocityMovement : Nil
    @timeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(60)
    end
    

    def jinit_DelayedConstantVelocityMovement(basicDecimal : BasicDecimal?, velocityProperties : BasicVelocityProperties?) : self
        jinit_BasicConstantVelocityMovement(basicDecimal, velocityProperties)
        jfields_DelayedConstantVelocityMovement()
        self
    end
    

    def init(speedBasicDecimal : BasicDecimal?, angle : Int, otherAngle : Int) : Nil
        angle = angle.to_i32!
        otherAngle = otherAngle.to_i32!
    end
    

    def process(layer : AllBinaryGameLayer?) : Nil
        if @timeDelayHelper.not_nil!.isTime(GameTickTimeDelayHelperFactory.getInstance().not_nil!.jf_startTime)
            super(layer)
        end
    end
end

