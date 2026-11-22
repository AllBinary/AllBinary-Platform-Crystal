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

class BasicPopupMenuPaintable < Paintable
    include UpdateMyFontInterface
    @basicSetColorUtil : BasicColorSetUtil? = nil

    def jf_basicSetColorUtil : BasicColorSetUtil?
        @basicSetColorUtil
    end

    def jf_basicSetColorUtil=(value : BasicColorSetUtil?) : BasicColorSetUtil?
        @basicSetColorUtil = value
    end
    @drawStringUtil : DrawVerticalStringUtil? = nil

    def jf_drawStringUtil : DrawVerticalStringUtil?
        @drawStringUtil
    end

    def jf_drawStringUtil=(value : DrawVerticalStringUtil?) : DrawVerticalStringUtil?
        @drawStringUtil = value
    end
    @label : String = ""

    def jf_label : String
        @label
    end

    def jf_label=(value : String) : String
        @label = value
    end
    @foregroundBasicColor : BasicColor? = nil

    def jf_foregroundBasicColor : BasicColor?
        @foregroundBasicColor
    end

    def jf_foregroundBasicColor=(value : BasicColor?) : BasicColor?
        @foregroundBasicColor = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @rectangle : Rectangle? = nil

    def jf_rectangle : Rectangle?
        @rectangle
    end

    def jf_rectangle=(value : Rectangle?) : Rectangle?
        @rectangle = value
    end
    @j_BORDER : Int32 = 0

    def jf_BORDER : Int32
        @j_BORDER
    end

    def jf_BORDER=(value : Int32) : Int32
        @j_BORDER = value
    end
    @heightOffset : Int32 = 0

    def jf_heightOffset : Int32
        @heightOffset
    end

    def jf_heightOffset=(value : Int32) : Int32
        @heightOffset = value
    end
    @offset : Int32 = 0

    def jf_offset : Int32
        @offset
    end

    def jf_offset=(value : Int32) : Int32
        @offset = value
    end
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end

    def self.jst_NAME : String
        "MENU"
    end

    # Java field initializers run after the super constructor
    def jfields_BasicPopupMenuPaintable : Nil
    @basicSetColorUtil = BasicColorSetUtil.getInstance()
    @drawStringUtil = DrawVerticalStringUtil.getInstance()
    
    
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    
    
    
    
    
    end
    

    def jinit_BasicPopupMenuPaintable(rectangle : Rectangle?, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_Paintable()
        jfields_BasicPopupMenuPaintable()
        @foregroundBasicColor = foregroundBasicColor
        @label = BasicPopupMenuPaintable.jst_NAME
        @rectangle = rectangle
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
            @animationInterface = NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0)
        else
            @animationInterface = RectangleFilledAnimation.new.jinit_RectangleFilledAnimation(@rectangle.not_nil!.getWidth(), @rectangle.not_nil!.getHeight(), BasicColorFactory.getInstance().not_nil!.jf_TRANSPARENT_GREY)
        end
        self.init(rectangle)
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        features : Features? = Features.getInstance()
        isOpenGL : Bool = features.not_nil!.isDefault(OpenGLFeatureFactory.getInstance().not_nil!.jf_OPENGL)
        @drawStringUtil.not_nil!.updateMeasurement(graphics, @label)
        j_BORDER : Int32 = 0
        if J2MEUtil.isHTML() || isOpenGL
            j_BORDER = MyFontProcessor.defaultCharWidth(font).tdiv(2)
        elsif AndroidUtil.isAndroid() || J2MEUtil.isJ2SE() || SWTUtil.jst_isSWT
            j_BORDER = MyFontProcessor.defaultCharWidth(font)
        else
            j_BORDER = MyFontProcessor.defaultCharWidth(font) &* 2
        end
        @j_BORDER = j_BORDER
        @heightOffset = @rectangle.not_nil!.getHeight() &- (font.not_nil!.getHeight() &* BasicPopupMenuPaintable.jst_NAME.not_nil!.length())
        if OpenGLFeatureUtil.getInstance().not_nil!.isAnyThreed()
            @heightOffset &-= font.not_nil!.getHeight() &+ 2
            if AndroidUtil.isAndroid()
                @heightOffset = font.not_nil!.getHeight()
            else
                @heightOffset &-= font.not_nil!.getHeight() &+ 2
            end
        end
        @offset = (JR.shr(@heightOffset, 1)) &+ ((SWTJOGLProcessor.getInstance().not_nil!.isJOGL() ? 4 : 0))
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def init(rectangle : Rectangle?) : Nil
        @rectangle = rectangle
        width : Int32 = @rectangle.not_nil!.getWidth()
        height : Int32 = @rectangle.not_nil!.getHeight()
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
        else
            rectangleFilledAnimation : RectangleFilledAnimation? = JR.cast(@animationInterface, RectangleFilledAnimation)
            rectangleFilledAnimation.not_nil!.setWidth(width)
            rectangleFilledAnimation.not_nil!.setHeight(height)
        end
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        point : GPoint? = @rectangle.not_nil!.getPoint()
        x : Int32 = point.not_nil!.getX()
        y : Int32 = point.not_nil!.getY()
        width : Int32 = @rectangle.not_nil!.getWidth()
        height : Int32 = @rectangle.not_nil!.getHeight()
        @animationInterface.not_nil!.paintXY(graphics, x, y)
        @basicSetColorUtil.not_nil!.setBasicColorP(graphics, @foregroundBasicColor)
        @drawStringUtil.not_nil!.paintVerticle(graphics, @label, x &+ @j_BORDER, y &+ @offset, 0)
        graphics.not_nil!.drawRect(x, y, width, height)
    end
end

