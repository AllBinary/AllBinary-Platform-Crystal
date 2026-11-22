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

class LineAnimation < Animation
    include ColorCompositeInterface
    include PositionInterface
    @newLine : Array(Array(Int32)?)? = nil

    def jf_newLine : Array(Array(Int32)?)?
        @newLine
    end

    def jf_newLine=(value : Array(Array(Int32)?)?) : Array(Array(Int32)?)?
        @newLine = value
    end
    @tempLine : Array(Array(Int32)?)? = nil

    def jf_tempLine : Array(Array(Int32)?)?
        @tempLine
    end

    def jf_tempLine=(value : Array(Array(Int32)?)?) : Array(Array(Int32)?)?
        @tempLine = value
    end
    @line : Array(Array(Int32)?)? = nil

    def jf_line : Array(Array(Int32)?)?
        @line
    end

    def jf_line=(value : Array(Array(Int32)?)?) : Array(Array(Int32)?)?
        @line = value
    end

    # Java field initializers run after the super constructor
    def jfields_LineAnimation : Nil
    @newLine = Array(Array(Int32)?).new(2) { Array(Int32).new(2, 0).as(Array(Int32)?) }
    @tempLine = NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY_ARRAY
    @line = Array(Array(Int32)?).new(2) { Array(Int32).new(2, 0).as(Array(Int32)?) }
    end
    

    def jinit_LineAnimation(basicColor : BasicColor?) : self
        jinit_Animation()
        jfields_LineAnimation()
        self.setBasicColorP(basicColor)
        self
    end
    

    def init(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @newLine.not_nil![0].not_nil![0] = x
        @newLine.not_nil![0].not_nil![1] = y
        @newLine.not_nil![1].not_nil![0] = x
        @newLine.not_nil![1].not_nil![1] = y
        @tempLine = @line
        @line = @newLine
        @newLine = @tempLine
    end
    

    def setPosition(x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        @newLine.not_nil![0].not_nil![0] = @line.not_nil![1].not_nil![0]
        @newLine.not_nil![0].not_nil![1] = @line.not_nil![1].not_nil![1]
        @newLine.not_nil![1].not_nil![0] = x
        @newLine.not_nil![1].not_nil![1] = y
        @tempLine = @line
        @line = @newLine
        @newLine = @tempLine
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        currentLine : Array(Array(Int32)?)? = @line
        @basicSetColorUtil.not_nil!.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.not_nil!.drawLine(currentLine.not_nil![0].not_nil![0], currentLine.not_nil![0].not_nil![1], currentLine.not_nil![1].not_nil![0], currentLine.not_nil![1].not_nil![1])
    end
    

    def nextFrame : Nil
    end
    

    def getBasicColorP : BasicColor?
        return super()
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        super(basicColor)
    end
end

