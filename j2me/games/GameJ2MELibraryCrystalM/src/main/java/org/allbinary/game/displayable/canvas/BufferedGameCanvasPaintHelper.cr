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
# package org.allbinary.game.displayable.canvas

class BufferedGameCanvasPaintHelper < ProcessPaintable
    @gameCanvas : Canvas? = nil

    def jf_gameCanvas : Canvas?
        @gameCanvas
    end

    def jf_gameCanvas=(value : Canvas?) : Canvas?
        @gameCanvas = value
    end
    @offScreenImage : Array(Image?)? = nil

    def jf_offScreenImage : Array(Image?)?
        @offScreenImage
    end

    def jf_offScreenImage=(value : Array(Image?)?) : Array(Image?)?
        @offScreenImage = value
    end
    @previousImage : Image? = nil

    def jf_previousImage : Image?
        @previousImage
    end

    def jf_previousImage=(value : Image?) : Image?
        @previousImage = value
    end
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    @drawCircularIndexUtil : CircularIndexUtil? = nil

    def jf_drawCircularIndexUtil : CircularIndexUtil?
        @drawCircularIndexUtil
    end

    def jf_drawCircularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @drawCircularIndexUtil = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end

    def self.jst_MAX_IMAGES : Int32
        4
    end

    # Java field initializers run after the super constructor
    def jfields_BufferedGameCanvasPaintHelper : Nil
    @gameCanvas = NullCanvas.jst_NULL_CANVAS
    @offScreenImage = Array(Image?).new(BufferedGameCanvasPaintHelper.jst_MAX_IMAGES, nil)
    @previousImage = NullImage.jst_NULL_IMAGE
    @circularIndexUtil = CircularIndexUtil.createInstance(BufferedGameCanvasPaintHelper.jst_MAX_IMAGES)
    @drawCircularIndexUtil = CircularIndexUtil.createInstanceAt(BufferedGameCanvasPaintHelper.jst_MAX_IMAGES &- 1, BufferedGameCanvasPaintHelper.jst_MAX_IMAGES)
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_BufferedGameCanvasPaintHelper(gameCanvas : AllBinaryGameCanvas?) : self
        jinit_ProcessPaintable()
        jfields_BufferedGameCanvasPaintHelper()
        raise (JException.new.jinit_JException("No Longer Used")).not_nil!
        self
    end
    

    def process : Nil
        myCanvas : MyCanvas? = (JR.cast(@gameCanvas, MyCanvas))
        myCanvas.not_nil!.draw(@offScreenImage.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.getGraphics())
        @circularIndexUtil.not_nil!.next_()
        @drawCircularIndexUtil.not_nil!.next_()
    end
    

    def paint(graphics : Graphics?) : Nil
        @previousImage = @offScreenImage.not_nil![@drawCircularIndexUtil.not_nil!.getIndex()]
        graphics.not_nil!.drawImage(@previousImage, 0, 0, @anchor)
    end
end

