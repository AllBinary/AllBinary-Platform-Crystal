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
# package org.allbinary.animation.caption

class CaptionAnimationHelper < CaptionAnimationHelperBase
    @timeHelper : TimeDelayHelper? = nil

    def jf_timeHelper : TimeDelayHelper?
        @timeHelper
    end

    def jf_timeHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeHelper = value
    end
    @textAnimation : TextAnimation? = nil

    def jf_textAnimation : TextAnimation?
        @textAnimation
    end

    def jf_textAnimation=(value : TextAnimation?) : TextAnimation?
        @textAnimation = value
    end
    @captionAnimation : Animation? = nil

    def jf_captionAnimation : Animation?
        @captionAnimation
    end

    def jf_captionAnimation=(value : Animation?) : Animation?
        @captionAnimation = value
    end
    @animation : Animation? = nil

    def jf_animation : Animation?
        @animation
    end

    def jf_animation=(value : Animation?) : Animation?
        @animation = value
    end

    # Java field initializers run after the super constructor
    def jfields_CaptionAnimationHelper : Nil
    @timeHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(620)
    @textAnimation = TextAnimation.new.jinit_TextAnimation(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, AnimationBehavior.getInstance())
    
    @animation = NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0)
    end
    

    def jinit_CaptionAnimationHelper(captionAnimation : Animation?, captionDx : Int, captionDy : Int, dx : Int, dy : Int) : self
        captionDx = captionDx.to_i32!
        captionDy = captionDy.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_CaptionAnimationHelperBase()
        jfields_CaptionAnimationHelper()
        @captionAnimation = CaptionAnimation.new.jinit_CaptionAnimation(captionAnimation, @textAnimation, captionDx, captionDy, dx, dy)
        self
    end
    

    def isShowing : Bool
        if @animation == @captionAnimation
            return true
        else
            return false
        end
        return false
    end
    

    def tick : Nil
        if @timeHelper.not_nil!.isTime(GameTickTimeDelayHelperFactory.getInstance().not_nil!.jf_startTime)
            @animation = NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0)
        end
    end
    

    def update(message : String, basicColor : BasicColor?) : Nil
        @textAnimation.not_nil!.setBasicColorP(basicColor)
        @textAnimation.not_nil!.setText(message)
        @animation = @captionAnimation
        @timeHelper.not_nil!.setStartTimeTNT()
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @animation.not_nil!.paintXY(graphics, x, y)
    end
end

