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
# package org.allbinary.animation.image

class ImageArraySpecialAnimation < ImageArrayAnimation
    include SpecialAnimationInterface
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end
    @loopCount : Int32 = 0

    def jf_loopCount : Int32
        @loopCount
    end

    def jf_loopCount=(value : Int32) : Int32
        @loopCount = value
    end
    @loopCountTotal : Int32 = 0

    def jf_loopCountTotal : Int32
        @loopCountTotal
    end

    def jf_loopCountTotal=(value : Int32) : Int32
        @loopCountTotal = value
    end

    # Java field initializers run after the super constructor
    def jfields_ImageArraySpecialAnimation : Nil
    @timeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(270)
    @loopCount = 0
    @loopCountTotal = 1
    end
    

    def jinit_ImageArraySpecialAnimation(imageArray : Array(Image?)?, animationBehavior : AnimationBehavior?) : self
        jinit_ImageArrayAnimation(imageArray, animationBehavior)
        jfields_ImageArraySpecialAnimation()
        self.reset()
        self
    end
    

    def getLoopCount : Int32
        return @loopCount
    end
    

    def setLastFrame : Nil
        @circularIndexUtil.not_nil!.setIndex(@circularIndexUtil.not_nil!.getSize() &- 1)
    end
    

    def reset : Nil
        self.setFrame(self.getSize() &- 1)
        @loopCount = 0
    end
    

    def nextFrame : Nil
        if self.getFrame() > 0
            if @timeDelayHelper.not_nil!.isTime(GameTickTimeDelayHelperFactory.getInstance().not_nil!.jf_startTime)
                self.previousFrame()
                if self.getFrame() == 0
                    @loopCount &+= 1
                end
            end
        end
    end
    

    def isComplete : Bool
        if @loopCount < @loopCountTotal || self.getFrame() != 0
            return false
        else
            return true
        end
        return false
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        x = DisplayInfoSingleton.getInstance().not_nil!.getLastHalfWidth() &- (JR.shr(self.getImage(@circularIndexUtil.not_nil!.getIndex()).not_nil!.getWidth(), 1))
        y = 5
        super(graphics, x, y)
    end
end

