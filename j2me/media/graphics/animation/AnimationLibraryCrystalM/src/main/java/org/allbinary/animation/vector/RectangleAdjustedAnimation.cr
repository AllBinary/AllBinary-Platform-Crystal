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

class RectangleAdjustedAnimation < Animation
    include ColorCompositeInterface
    @width : Int32 = 0

    def jf_width : Int32
        @width
    end

    def jf_width=(value : Int32) : Int32
        @width = value
    end
    @height : Int32 = 0

    def jf_height : Int32
        @height
    end

    def jf_height=(value : Int32) : Int32
        @height = value
    end
    @offsetX : Int32 = 0

    def jf_offsetX : Int32
        @offsetX
    end

    def jf_offsetX=(value : Int32) : Int32
        @offsetX = value
    end
    @offsetY : Int32 = 0

    def jf_offsetY : Int32
        @offsetY
    end

    def jf_offsetY=(value : Int32) : Int32
        @offsetY = value
    end
    

    def jinit_RectangleAdjustedAnimation(width : Int, height : Int, offsetX : Int, offsetY : Int, basicColor : BasicColor?) : self
        width = width.to_i32!
        height = height.to_i32!
        offsetX = offsetX.to_i32!
        offsetY = offsetY.to_i32!
        jinit_Animation()
        @width = width
        @height = height
        @offsetX = offsetX
        @offsetY = offsetY
        self.setBasicColorP(basicColor)
        self
    end
    

    def nextFrame : Nil
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @basicSetColorUtil.not_nil!.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.not_nil!.drawRect(x &+ @offsetX, y &+ @offsetY, @width, @height)
    end
    

    def setWidth(width : Int) : Nil
        width = width.to_i32!
        @width = width
    end
    

    def setHeight(height : Int) : Nil
        height = height.to_i32!
        @height = height
    end
    

    def setOffsetX(offsetX : Int) : Nil
        offsetX = offsetX.to_i32!
        @offsetX = offsetX
    end
    

    def setOffsetY(offsetY : Int) : Nil
        offsetY = offsetY.to_i32!
        @offsetY = offsetY
    end
    

    def getBasicColorP : BasicColor?
        return super()
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        super(basicColor)
    end
end

