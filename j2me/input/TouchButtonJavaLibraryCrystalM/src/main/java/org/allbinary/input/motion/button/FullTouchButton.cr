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

class FullTouchButton < TouchButton
    

    def self.createButton(touchButtonInput : TouchButtonInput?, touchButtonResource : TouchButtonResource?, rawRectangle : Rectangle?, cellPosition : CellPosition?, xBorder : Int, yBorder : Int) : FullTouchButton?
        xBorder = xBorder.to_i32!
        yBorder = yBorder.to_i32!
        return FullTouchButton.new.jinit_FullTouchButton(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.get(touchButtonResource.not_nil!.jf_RESOURCE).not_nil!.getInstance(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.get(touchButtonResource.not_nil!.jf_HINT).not_nil!.getInstance(0), rawRectangle, cellPosition, xBorder, yBorder)
    end
    

    def jinit_FullTouchButton(touchButtonInput : TouchButtonInput?, animationInterface : Animation?, hintAnimationInterface : Animation?, rawRectangle : Rectangle?, cellPosition : CellPosition?, xBorder : Int, yBorder : Int) : self
        xBorder = xBorder.to_i32!
        yBorder = yBorder.to_i32!
        jinit_TouchButton(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
        self
    end
    

    def updateRectangle : Nil
        begin
            pointFactory : PointFactory? = PointFactory.getInstance()
            x : Int32 = @rawRectangle.not_nil!.getWidth() &* @cellPositionP.not_nil!.getColumn()
            y : Int32 = @rawRectangle.not_nil!.getHeight() &* @cellPositionP.not_nil!.getRow()
            @rectangleP = Rectangle.new.jinit_Rectangle(pointFactory.not_nil!.createXY(x, y), @rawRectangle.not_nil!.getWidth() + (2 * @xBorder), @rawRectangle.not_nil!.getHeight() + (2 * @yBorder))
            point : GPoint? = @rectangleP.not_nil!.getPoint()
            @animationX = point.not_nil!.getX() + @xBorder
            @animationY = point.not_nil!.getY() + @yBorder
            @hintAnimationY = JR.shr(@animationY - @rectangleP.not_nil!.getHeight(), 1)
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
end

