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

class TimedVectorAnimation < VectorAnimation
    @timeElapsedHelper : TimeDelayHelper? = nil

    def jf_timeElapsedHelper : TimeDelayHelper?
        @timeElapsedHelper
    end

    def jf_timeElapsedHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeElapsedHelper = value
    end

    # Java field initializers run after the super constructor
    def jfields_TimedVectorAnimation : Nil
    @timeElapsedHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(200)
    end
    

    def jinit_TimedVectorAnimation(currentPoints : Array(Array(Array(Int32)?)?)?, basicColor : BasicColor?, animationBehavior : AnimationBehavior?) : self
        jinit_VectorAnimation(currentPoints, basicColor, animationBehavior)
        jfields_TimedVectorAnimation()
        self
    end
    

    def nextFrame : Nil
        if @timeElapsedHelper.not_nil!.isTime(GameTickTimeDelayHelperFactory.getInstance().not_nil!.jf_startTime)
            super()
        end
    end
end

