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
# package org.allbinary.graphics.form

class CommandCurrentSelectionForm < ScrollCurrentSelectionForm
    include UpdateMyFontInterface
    @selectedAnimationArray : Array(Animation?)? = nil

    def jf_selectedAnimationArray : Array(Animation?)?
        @selectedAnimationArray
    end

    def jf_selectedAnimationArray=(value : Array(Animation?)?) : Array(Animation?)?
        @selectedAnimationArray = value
    end
    @unSelectedAnimationArray : Array(Animation?)? = nil

    def jf_unSelectedAnimationArray : Array(Animation?)?
        @unSelectedAnimationArray
    end

    def jf_unSelectedAnimationArray=(value : Array(Animation?)?) : Array(Animation?)?
        @unSelectedAnimationArray = value
    end

    # Java field initializers run after the super constructor
    def jfields_CommandCurrentSelectionForm : Nil
    @selectedAnimationArray = Array(Animation?).new(16, nil)
    @unSelectedAnimationArray = Array(Animation?).new(16, nil)
    end
    

    def jinit_CommandCurrentSelectionForm(title : String, items : Array(ABCustomItem?)?, border : Int, moveForSmallScreen : Bool, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        border = border.to_i32!
        jinit_ScrollCurrentSelectionForm(title, items, ItemPaintableFactory.getInstance(), border, -3, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        jfields_CommandCurrentSelectionForm()
        self.initAnimations()
        self.addAll(items)
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        self.updateAll(graphics, self.getAllitems())
        super(graphics)
    end
    

    def initAnimations : Nil
        nullAnimation : Animation? = NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0)
        index = @selectedAnimationArray.not_nil!.size
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            @selectedAnimationArray.not_nil![index] = nullAnimation
        end
        index = @unSelectedAnimationArray.not_nil!.size
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            @unSelectedAnimationArray.not_nil![index] = nullAnimation
        end
    end
    

    def addAll(items : Array(ABCustomItem?)?) : Nil
        index : Int32 = items.not_nil!.size
        jfor3 = false
        while true
            jfor3 = true
            break unless (index &-= 1) >= 0
            self.addAt(index, items.not_nil![index])
        end
    end
    

    def addAt(index : Int, item : ABCustomItem?) : Nil
        index = index.to_i32!
        basicColorFactory : BasicColorFactory? = BasicColorFactory.getInstance()
        buttonColor : BasicColor? = basicColorFactory.not_nil!.jf_TRANSPARENT_GREY
        selectedButtonColor : BasicColor? = basicColorFactory.not_nil!.jf_TRANSPARENT_RED
        width : Int32 = item.not_nil!.getMinimumWidth()
        height : Int32 = item.not_nil!.getMinimumHeight()
        adjustedBorder : Int32 = 3
        offset : Int32 = JR.neg((@halfBorder + adjustedBorder))
        rectWidth : Int32 = width + @border - adjustedBorder
        rectHeight : Int32 = height + @border - adjustedBorder
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
            @selectedAnimationArray.not_nil![index] = RectangleAdjustedAnimation.new.jinit_RectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        else
            @selectedAnimationArray.not_nil![index] = RectangleFilledAdjustedAnimation.new.jinit_RectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        end
        adjustedBorder = 4
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
            @unSelectedAnimationArray.not_nil![index] = RectangleAdjustedAnimation.new.jinit_RectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor)
        else
            @unSelectedAnimationArray.not_nil![index] = RectangleFilledAdjustedAnimation.new.jinit_RectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor)
        end
    end
    

    def updateAll(graphics : Graphics?, items : Array(ABCustomItem?)?) : Nil
        index : Int32 = items.not_nil!.size
        jfor4 = false
        while true
            jfor4 = true
            break unless (index &-= 1) >= 0
            items.not_nil![index].not_nil!.preMeasurement(graphics)
            self.updateAt(index, items.not_nil![index])
        end
    end
    

    def updateAt(index : Int, item : ABCustomItem?) : Nil
        index = index.to_i32!
        basicColorFactory : BasicColorFactory? = BasicColorFactory.getInstance()
        buttonColor : BasicColor? = basicColorFactory.not_nil!.jf_TRANSPARENT_GREY
        selectedButtonColor : BasicColor? = basicColorFactory.not_nil!.jf_TRANSPARENT_RED
        width : Int32 = item.not_nil!.getMinimumWidth()
        height : Int32 = item.not_nil!.getMinimumHeight()
        adjustedBorder : Int32 = 3
        offset : Int32 = JR.neg((@halfBorder + adjustedBorder))
        rectWidth : Int32 = width + @border - adjustedBorder
        rectHeight : Int32 = height + @border - adjustedBorder
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
            rectangleAdjustedAnimation = (JR.cast(@selectedAnimationArray.not_nil![index], RectangleAdjustedAnimation)).as(RectangleAdjustedAnimation?)
            rectangleAdjustedAnimation.not_nil!.setWidth(rectWidth)
            rectangleAdjustedAnimation.not_nil!.setHeight(rectHeight)
            rectangleAdjustedAnimation.not_nil!.setOffsetX(offset)
            rectangleAdjustedAnimation.not_nil!.setOffsetY(offset)
            rectangleAdjustedAnimation.not_nil!.setBasicColorP(selectedButtonColor)
        else
            rectangleAdjustedAnimation = (JR.cast(@selectedAnimationArray.not_nil![index], RectangleFilledAdjustedAnimation)).as(RectangleFilledAdjustedAnimation?)
            rectangleAdjustedAnimation.not_nil!.setWidth(rectWidth)
            rectangleAdjustedAnimation.not_nil!.setHeight(rectHeight)
            rectangleAdjustedAnimation.not_nil!.setOffsetX(offset)
            rectangleAdjustedAnimation.not_nil!.setOffsetY(offset)
            rectangleAdjustedAnimation.not_nil!.setBasicColorP(selectedButtonColor)
        end
        adjustedBorder = 4
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
            rectangleAdjustedAnimation = (JR.cast(@unSelectedAnimationArray.not_nil![index], RectangleAdjustedAnimation)).as(RectangleAdjustedAnimation?)
            rectangleAdjustedAnimation.not_nil!.setWidth(rectWidth)
            rectangleAdjustedAnimation.not_nil!.setHeight(rectHeight)
            rectangleAdjustedAnimation.not_nil!.setOffsetX(offset)
            rectangleAdjustedAnimation.not_nil!.setOffsetY(offset)
            rectangleAdjustedAnimation.not_nil!.setBasicColorP(buttonColor)
        else
            rectangleAdjustedAnimation = (JR.cast(@unSelectedAnimationArray.not_nil![index], RectangleFilledAdjustedAnimation)).as(RectangleFilledAdjustedAnimation?)
            rectangleAdjustedAnimation.not_nil!.setWidth(rectWidth)
            rectangleAdjustedAnimation.not_nil!.setHeight(rectHeight)
            rectangleAdjustedAnimation.not_nil!.setOffsetX(offset)
            rectangleAdjustedAnimation.not_nil!.setOffsetY(offset)
            rectangleAdjustedAnimation.not_nil!.setBasicColorP(buttonColor)
        end
    end
    

    def getSelectedCommand : Command?
        index : Int32 = getSelectedIndex()
        commandTextItem : CommandTextItem? = JR.cast(self.get(index), CommandTextItem)
        return commandTextItem.not_nil!.getCommand()
    end
    

    def append(item : ABCustomItem?) : Int32
        result : Int32 = super(item)
        self.addAt(result, item)
        return result
    end
    

    def delete(itemNum : Int) : Nil
        itemNum = itemNum.to_i32!
        super(itemNum)
    end
    

    def deleteAll : Nil
        self.initAnimations()
        super()
    end
    

    def insert(itemNum : Int, item : ABCustomItem?) : Nil
        itemNum = itemNum.to_i32!
        super(itemNum, item)
    end
    

    def set(itemNum : Int, item : ABCustomItem?) : Nil
        itemNum = itemNum.to_i32!
        super(itemNum, item)
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        super(graphics)
    end
    

    def paintItem(graphics : Graphics?, index : Int, item : ABCustomItem?, x : Int, y : Int) : Int32
        index = index.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        @selectedAnimationArray.not_nil![index].not_nil!.paintXY(graphics, x, y)
        return super(graphics, index, item, x, y)
    end
    

    def paintUnselectedItem(graphics : Graphics?, index : Int, item : ABCustomItem?, x : Int, y : Int) : Int32
        index = index.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        @unSelectedAnimationArray.not_nil![index].not_nil!.paintXY(graphics, x, y)
        return super(graphics, index, item, x, y)
    end
end

