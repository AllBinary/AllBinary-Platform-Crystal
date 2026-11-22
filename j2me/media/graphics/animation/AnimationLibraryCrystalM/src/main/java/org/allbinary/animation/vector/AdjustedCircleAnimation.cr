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
# package org.allbinary.animation.vector

class AdjustedCircleAnimation < CircleAnimation
    @xAdjustment : Int32 = 0

    def jf_xAdjustment : Int32
        @xAdjustment
    end

    def jf_xAdjustment=(value : Int32) : Int32
        @xAdjustment = value
    end
    @yAdjustment : Int32 = 0

    def jf_yAdjustment : Int32
        @yAdjustment
    end

    def jf_yAdjustment=(value : Int32) : Int32
        @yAdjustment = value
    end
    

    def self.createAnimation(width : Int, height : Int, xAdjustment : Int, yAdjustment : Int, basicColor : BasicColor?) : AdjustedCircleAnimation?
        width = width.to_i32!
        height = height.to_i32!
        xAdjustment = xAdjustment.to_i32!
        yAdjustment = yAdjustment.to_i32!
        adjustedCircleAnimation : AdjustedCircleAnimation? = AdjustedCircleAnimation.new.jinit_AdjustedCircleAnimation(width, height, basicColor)
        adjustedCircleAnimation.not_nil!.initXY(xAdjustment, yAdjustment)
        return adjustedCircleAnimation
    end
    

    def self.createW(width : Int, height : Int, innerWidth : Int, basicColor : BasicColor?) : AdjustedCircleAnimation?
        width = width.to_i32!
        height = height.to_i32!
        innerWidth = innerWidth.to_i32!
        adjustedCircleAnimation : AdjustedCircleAnimation? = AdjustedCircleAnimation.new.jinit_AdjustedCircleAnimation(width, height, basicColor)
        adjustedCircleAnimation.not_nil!.init(innerWidth)
        return adjustedCircleAnimation
    end
    

    def jinit_AdjustedCircleAnimation(width : Int, height : Int, basicColor : BasicColor?) : self
        width = width.to_i32!
        height = height.to_i32!
        jinit_CircleAnimation(width, height, basicColor)
        self
    end
    

    def initXY(xAdjustment : Int, yAdjustment : Int) : Nil
        xAdjustment = xAdjustment.to_i32!
        yAdjustment = yAdjustment.to_i32!
        @xAdjustment = xAdjustment
        @yAdjustment = yAdjustment
    end
    

    def init(innerWidth : Int) : Nil
        innerWidth = innerWidth.to_i32!
        if AndroidUtil.isAndroid()
            widthPortion : Int32 = (((innerWidth.tdiv(3)) &* 10).tdiv(7))
            @xAdjustment = JR.neg(((JR.shr(@width, 1)) - widthPortion))
            @yAdjustment = @xAdjustment
        else
            @xAdjustment = JR.neg(((JR.shr(@width, 1)) - innerWidth))
            @yAdjustment = @xAdjustment
        end
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @basicSetColorUtil.not_nil!.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.not_nil!.drawArc(x &+ @xAdjustment, y &+ @yAdjustment, @width, @height, 0, @j_TOTAL_ANGLE)
    end
end

