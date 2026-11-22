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
# package org.allbinary.input.motion.button

class TouchButton < Paintable
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @touchButtonInput : TouchButtonInput? = nil

    def jf_touchButtonInput : TouchButtonInput?
        @touchButtonInput
    end

    def jf_touchButtonInput=(value : TouchButtonInput?) : TouchButtonInput?
        @touchButtonInput = value
    end
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end
    @hintAnimationInterface : Animation? = nil

    def jf_hintAnimationInterface : Animation?
        @hintAnimationInterface
    end

    def jf_hintAnimationInterface=(value : Animation?) : Animation?
        @hintAnimationInterface = value
    end
    @rawRectangle : Rectangle? = nil

    def jf_rawRectangle : Rectangle?
        @rawRectangle
    end

    def jf_rawRectangle=(value : Rectangle?) : Rectangle?
        @rawRectangle = value
    end
    @xBorder : Int32 = 0

    def jf_xBorder : Int32
        @xBorder
    end

    def jf_xBorder=(value : Int32) : Int32
        @xBorder = value
    end
    @yBorder : Int32 = 0

    def jf_yBorder : Int32
        @yBorder
    end

    def jf_yBorder=(value : Int32) : Int32
        @yBorder = value
    end
    @rectangleP : Rectangle? = nil

    def jf_rectangleP : Rectangle?
        @rectangleP
    end

    def jf_rectangleP=(value : Rectangle?) : Rectangle?
        @rectangleP = value
    end
    @cellPositionP : CellPosition? = nil

    def jf_cellPositionP : CellPosition?
        @cellPositionP
    end

    def jf_cellPositionP=(value : CellPosition?) : CellPosition?
        @cellPositionP = value
    end
    @animationX : Int32 = 0

    def jf_animationX : Int32
        @animationX
    end

    def jf_animationX=(value : Int32) : Int32
        @animationX = value
    end
    @animationY : Int32 = 0

    def jf_animationY : Int32
        @animationY
    end

    def jf_animationY=(value : Int32) : Int32
        @animationY = value
    end
    @hintAnimationY : Int32 = 0

    def jf_hintAnimationY : Int32
        @hintAnimationY
    end

    def jf_hintAnimationY=(value : Int32) : Int32
        @hintAnimationY = value
    end
    

    def self.createButton(touchButtonInput : TouchButtonInput?, touchButtonResource : TouchButtonResource?, rawRectangle : Rectangle?, cellPosition : CellPosition?, xBorder : Int, yBorder : Int) : TouchButton?
        xBorder = xBorder.to_i32!
        yBorder = yBorder.to_i32!
        return TouchButton.new.jinit_TouchButton(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.get(touchButtonResource.not_nil!.jf_RESOURCE).not_nil!.getInstance(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.get(touchButtonResource.not_nil!.jf_HINT).not_nil!.getInstance(0), rawRectangle, cellPosition, xBorder, yBorder)
    end

    # Java field initializers run after the super constructor
    def jfields_TouchButton : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    
    
    
    
    
    @rectangleP = RectangleFactory.jst_SINGLETON
    
    
    
    
    end
    

    def jinit_TouchButton(touchButtonInput : TouchButtonInput?, animationInterface : Animation?, hintAnimationInterface : Animation?, rawRectangle : Rectangle?, cellPosition : CellPosition?, xBorder : Int, yBorder : Int) : self
        xBorder = xBorder.to_i32!
        yBorder = yBorder.to_i32!
        jinit_Paintable()
        jfields_TouchButton()
        @touchButtonInput = touchButtonInput
        @animationInterface = animationInterface
        @hintAnimationInterface = hintAnimationInterface
        @rawRectangle = rawRectangle
        @cellPositionP = cellPosition
        @xBorder = xBorder
        @yBorder = yBorder
        self.updateRectangle()
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Created: ").not_nil!.append(self.toString()).not_nil!.toString(), self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        self
    end
    

    def paintHint(graphics : Graphics?) : Nil
        @hintAnimationInterface.not_nil!.paintXY(graphics, @animationX, @hintAnimationY)
    end
    

    def paint(graphics : Graphics?) : Nil
        @animationInterface.not_nil!.paintXY(graphics, @animationX, @animationY)
    end
    

    def updateRectangle : Nil
        begin
            pointFactory : PointFactory? = PointFactory.getInstance()
            x : Int32 = @rawRectangle.not_nil!.getWidth() &* @cellPositionP.not_nil!.getColumn()
            y : Int32 = @rawRectangle.not_nil!.getHeight() &* @cellPositionP.not_nil!.getRow()
            @rectangleP = Rectangle.new.jinit_Rectangle(pointFactory.not_nil!.createXY(x &+ @xBorder, y &+ @yBorder), @rawRectangle.not_nil!.getWidth(), @rawRectangle.not_nil!.getHeight())
            point : GPoint? = @rectangleP.not_nil!.getPoint()
            @animationX = point.not_nil!.getX()
            @animationY = point.not_nil!.getY()
            @hintAnimationY = @animationY &- 32
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "updateRectangle", e)
            else
                raise jex1
            end
        end
    end
    

    def getCellPosition : CellPosition?
        return @cellPositionP
    end
    

    def getRectangle : Rectangle?
        return @rectangleP
    end
    

    def getTouchButtonInput : TouchButtonInput?
        return @touchButtonInput
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringUtil : StringUtil? = StringUtil.getInstance()
        stringBuffer.not_nil!.append("TouchButton: ")
        stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(self.getRectangle()))
        stringBuffer.not_nil!.append(" CellPosition: ")
        stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(@cellPositionP))
        stringBuffer.not_nil!.append(" xBorder: ")
        stringBuffer.not_nil!.appendint(@xBorder)
        stringBuffer.not_nil!.append(" yBorder: ")
        stringBuffer.not_nil!.appendint(@yBorder)
        return stringBuffer.not_nil!.toString()
    end
end

