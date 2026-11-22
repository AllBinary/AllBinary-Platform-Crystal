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

class RectangleFilledAnimation < Animation
    include ColorCompositeInterface
    @widthP : Int32 = 0

    def jf_widthP : Int32
        @widthP
    end

    def jf_widthP=(value : Int32) : Int32
        @widthP = value
    end
    @heightP : Int32 = 0

    def jf_heightP : Int32
        @heightP
    end

    def jf_heightP=(value : Int32) : Int32
        @heightP = value
    end
    

    def jinit_RectangleFilledAnimation(width : Int, height : Int, basicColor : BasicColor?) : self
        width = width.to_i32!
        height = height.to_i32!
        jinit_Animation()
        @widthP = width
        @heightP = height
        self.setBasicColorP(basicColor)
        self
    end
    

    def nextFrame : Nil
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @basicSetColorUtil.not_nil!.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.not_nil!.fillRect(x, y, @widthP, @heightP)
    end
    

    def setWidth(width : Int) : Nil
        width = width.to_i32!
        @widthP = width
    end
    

    def setHeight(height : Int) : Nil
        height = height.to_i32!
        @heightP = height
    end
    

    def getBasicColorP : BasicColor?
        return super()
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        super(basicColor)
    end
end

