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

class ImageSegmentAnimation < ImageAnimation
    @startX : Int32 = 0

    def jf_startX : Int32
        @startX
    end

    def jf_startX=(value : Int32) : Int32
        @startX = value
    end
    @startY : Int32 = 0

    def jf_startY : Int32
        @startY
    end

    def jf_startY=(value : Int32) : Int32
        @startY = value
    end
    @drawWidth : Int32 = 0

    def jf_drawWidth : Int32
        @drawWidth
    end

    def jf_drawWidth=(value : Int32) : Int32
        @drawWidth = value
    end
    @drawHeight : Int32 = 0

    def jf_drawHeight : Int32
        @drawHeight
    end

    def jf_drawHeight=(value : Int32) : Int32
        @drawHeight = value
    end
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    @sequenceArray : Array(Int32)? = nil

    def jf_sequenceArray : Array(Int32)?
        @sequenceArray
    end

    def jf_sequenceArray=(value : Array(Int32)?) : Array(Int32)?
        @sequenceArray = value
    end
    

    def jinit_ImageSegmentAnimation(image : Image?, sequenceArray : Array(Int32)?, animationBehavior : AnimationBehavior?) : self
        jinit_ImageAnimation(image, animationBehavior)
        @startX = 0
        @startY = 0
        @drawWidth = self.getImage().not_nil!.getWidth()
        @drawHeight = self.getImage().not_nil!.getHeight()
        @circularIndexUtil = CircularIndexUtil.createInstance(@drawHeight)
        @sequenceArray = sequenceArray
        self
    end
    

    def nextFrame : Nil
        @circularIndexUtil.not_nil!.next_()
    end
    

    def previousFrame : Nil
        @circularIndexUtil.not_nil!.previous()
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
        @circularIndexUtil.not_nil!.setIndex(index)
    end
    

    def getFrame : Int32
        return @circularIndexUtil.not_nil!.getIndex()
    end
    

    def getSize : Int32
        return @circularIndexUtil.not_nil!.getSize()
    end
    

    def setSequence(sequenceArray : Array(Int32)?) : Nil
        @sequenceArray = sequenceArray
    end
    

    def getSequence : Array(Int32)?
        return @sequenceArray
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
    end
    

    def getStartX : Int32
        return @startX
    end
    

    def setStartX(startX : Int) : Nil
        startX = startX.to_i32!
        @startX = startX
    end
    

    def getStartY : Int32
        return @startY
    end
    

    def setStartY(startY : Int) : Nil
        startY = startY.to_i32!
        @startY = startY
    end
    

    def getDrawWidth : Int32
        return @drawWidth
    end
    

    def setDrawWidth(drawWidth : Int) : Nil
        drawWidth = drawWidth.to_i32!
        @drawWidth = drawWidth
    end
    

    def getDrawHeight : Int32
        return @drawHeight
    end
    

    def setDrawHeight(drawHeight : Int) : Nil
        drawHeight = drawHeight.to_i32!
        @drawHeight = drawHeight
    end
end

