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

class ScrollSelectionForm < PaintableForm
    @rectangleCollisionUtil : RectangleCollisionUtil? = nil

    def jf_rectangleCollisionUtil : RectangleCollisionUtil?
        @rectangleCollisionUtil
    end

    def jf_rectangleCollisionUtil=(value : RectangleCollisionUtil?) : RectangleCollisionUtil?
        @rectangleCollisionUtil = value
    end
    @border : Int32 = 0

    def jf_border : Int32
        @border
    end

    def jf_border=(value : Int32) : Int32
        @border = value
    end
    @halfBorder : Int32 = 0

    def jf_halfBorder : Int32
        @halfBorder
    end

    def jf_halfBorder=(value : Int32) : Int32
        @halfBorder = value
    end
    @buttonBasicColor : BasicColor? = nil

    def jf_buttonBasicColor : BasicColor?
        @buttonBasicColor
    end

    def jf_buttonBasicColor=(value : BasicColor?) : BasicColor?
        @buttonBasicColor = value
    end
    @scrollSelectionFormFormTypeItemIndexPaintable : ItemIndexPaintable? = nil

    def jf_scrollSelectionFormFormTypeItemIndexPaintable : ItemIndexPaintable?
        @scrollSelectionFormFormTypeItemIndexPaintable
    end

    def jf_scrollSelectionFormFormTypeItemIndexPaintable=(value : ItemIndexPaintable?) : ItemIndexPaintable?
        @scrollSelectionFormFormTypeItemIndexPaintable = value
    end
    @formTypeItemIndexDx : ItemIndexDx? = nil

    def jf_formTypeItemIndexDx : ItemIndexDx?
        @formTypeItemIndexDx
    end

    def jf_formTypeItemIndexDx=(value : ItemIndexDx?) : ItemIndexDx?
        @formTypeItemIndexDx = value
    end
    @paintable : ItemPaintable? = nil

    def jf_paintable : ItemPaintable?
        @paintable
    end

    def jf_paintable=(value : ItemPaintable?) : ItemPaintable?
        @paintable = value
    end
    @adjustedExtraBorder : Int32 = 0

    def jf_adjustedExtraBorder : Int32
        @adjustedExtraBorder
    end

    def jf_adjustedExtraBorder=(value : Int32) : Int32
        @adjustedExtraBorder = value
    end

    @@jst_NULL_SCROLL_SELECTION_FORM : JAny = nil

    def self.jst_NULL_SCROLL_SELECTION_FORM : JAny
        jclinit
        @@jst_NULL_SCROLL_SELECTION_FORM
    end

    def self.jst_NULL_SCROLL_SELECTION_FORM=(value : JAny) : JAny
        jclinit
        @@jst_NULL_SCROLL_SELECTION_FORM = value
    end

    @@jst_NULL_SCROLL_SELECTION_HORIZONTAL_FORM : JAny = nil

    def self.jst_NULL_SCROLL_SELECTION_HORIZONTAL_FORM : JAny
        jclinit
        @@jst_NULL_SCROLL_SELECTION_HORIZONTAL_FORM
    end

    def self.jst_NULL_SCROLL_SELECTION_HORIZONTAL_FORM=(value : JAny) : JAny
        jclinit
        @@jst_NULL_SCROLL_SELECTION_HORIZONTAL_FORM = value
    end

    def self.jst_INSIDE_FORM : String
        " inside form"
    end

    def self.jst_IS_IN_FORM : String
        "isInForm"
    end

    def self.jst_GET_SELECTED_INDEX : String
        "getSelectedIndexForPoint"
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_SCROLL_SELECTION_FORM = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
        @@jst_NULL_SCROLL_SELECTION_HORIZONTAL_FORM = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
        
        
        
    end
    

    def self.createForm(title : String, items : Array(ABCustomItem?)?, formPaintableFactory : ItemPaintableFactory?, border : Int, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : PaintableForm?
        border = border.to_i32!
        begin
            if formPaintableFactory == ItemPaintableFactory.getInstance()
                return ScrollSelectionForm.new.jinit_ScrollSelectionForm(title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor)
            else
                commonStrings = (CommonStrings.getInstance()).as(CommonStrings?)
                logUtil = (LogUtil.getInstance()).as(LogUtil?)
                logUtil.not_nil!.putF(commonStrings.not_nil!.jf_EXCEPTION, logUtil, commonStrings.not_nil!.jf_EXCEPTION)
                return PaintableForm.getNullPaintableForm()
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings = (CommonStrings.getInstance()).as(CommonStrings?)
            logUtil = (LogUtil.getInstance()).as(LogUtil?)
            logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, logUtil, commonStrings.not_nil!.jf_EXCEPTION, e)
            return PaintableForm.getNullPaintableForm()
            else
                raise jex1
            end
        end
        return nil
    end
    

    def self.getNullScrollSelectionForm : ScrollSelectionForm?
        if ScrollSelectionForm.jst_NULL_SCROLL_SELECTION_FORM == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            ScrollSelectionForm.jst_NULL_SCROLL_SELECTION_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Array(ABCustomItem?).new(0, nil), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().not_nil!.jf_BLACK, BasicColorFactory.getInstance().not_nil!.jf_WHITE)
        end
        return JR.cast(ScrollSelectionForm.jst_NULL_SCROLL_SELECTION_FORM, ScrollSelectionForm)
    end
    

    def self.getNullScrollSelectionFormHorizontal : ScrollSelectionForm?
        if ScrollSelectionForm.jst_NULL_SCROLL_SELECTION_HORIZONTAL_FORM == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            ScrollSelectionForm.jst_NULL_SCROLL_SELECTION_HORIZONTAL_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Array(ABCustomItem?).new(0, nil), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().not_nil!.jf_BLACK, BasicColorFactory.getInstance().not_nil!.jf_WHITE)
        end
        return JR.cast(ScrollSelectionForm.jst_NULL_SCROLL_SELECTION_HORIZONTAL_FORM, ScrollSelectionForm)
    end

    # Java field initializers run after the super constructor
    def jfields_ScrollSelectionForm : Nil
    @rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
    
    
    
    @scrollSelectionFormFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance()
    @formTypeItemIndexDx = ItemIndexDx.getInstance()
    @paintable = ItemPaintableFactory.getInstance()
    
    end
    

    def jinit_ScrollSelectionForm(title : String, items : Array(ABCustomItem?)?, formPaintableFactory : ItemPaintableFactory?, border : Int, adjustedExtraBorder : Int, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        border = border.to_i32!
        adjustedExtraBorder = adjustedExtraBorder.to_i32!
        jinit_PaintableForm(title, items, backgroundBasicColor, foregroundBasicColor)
        jfields_ScrollSelectionForm()
        @adjustedExtraBorder = adjustedExtraBorder
        @buttonBasicColor = foregroundBasicColor
        @border = border
        @halfBorder = (JR.shr(border, 1))
        @paintable = formPaintableFactory.not_nil!.getInstanceItemPaintable(self)
        self
    end
    

    def init(rectangle : Rectangle?, formType : FormType?) : Nil
        super(rectangle, formType)
        formTypeFactory : FormTypeFactory? = FormTypeFactory.getInstance()
        if formType == formTypeFactory.not_nil!.jf_HORIZONTAL_FORM
            @scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormHorizontalPaintable.new.jinit_ScrollSelectionFormHorizontalPaintable(self)
            @formTypeItemIndexDx = ScrollSelectionFormHorizontalDx.new.jinit_ScrollSelectionFormHorizontalDx(self)
        elsif formType == formTypeFactory.not_nil!.jf_VERTICAL_CENTER_FORM
            @scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormVerticalPaintable.new.jinit_ScrollSelectionFormVerticalPaintable(self)
            @formTypeItemIndexDx = ScrollSelectionFormVericalDx.new.jinit_ScrollSelectionFormVericalDx(self)
        elsif formType == formTypeFactory.not_nil!.jf_TEMP_HORIZONTAL_FORM
            @scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormTempHorizontalPaintable.new.jinit_ScrollSelectionFormTempHorizontalPaintable(self)
            @formTypeItemIndexDx = ScrollSelectionFormTempHorizontalDx.new.jinit_ScrollSelectionFormTempHorizontalDx(self)
        elsif formType == formTypeFactory.not_nil!.jf_NULL_FORM_TYPE
        else
            raise (JException.new.jinit_JException(formTypeFactory.not_nil!.jf_UNK)).not_nil!
        end
    end
    

    def paintItemHorizontal(graphics : Graphics?, index : Int, item : ABCustomItem?, x : Int, y : Int) : Int32
        index = index.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        width : Int32 = item.not_nil!.getMinimumWidth()
        return x &+ width &+ @border
    end
    

    def paintItemVertical(graphics : Graphics?, index : Int, item : ABCustomItem?, x : Int, y : Int) : Int32
        index = index.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        height : Int32 = item.not_nil!.getMinimumHeight()
        return y &+ height &+ @border
    end
    

    def paintItemTempHorizontal(graphics : Graphics?, index : Int, item : ABCustomItem?, x : Int, y : Int) : Int32
        index = index.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        return 0
    end
    

    def getSelectedIndexForPointHorizontalDx(index : Int, item : ABCustomItem?, dx : Int, dy : Int) : Int32
        index = index.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        return dx &- @halfBorder
    end
    

    def getSelectedIndexForPointVerticalDx(index : Int, item : ABCustomItem?, dx : Int, dy : Int) : Int32
        index = index.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        return dx &+ self.getDiffX(item)
    end
    

    def getSelectedIndexForPointTempHorizontalDx(index : Int, item : ABCustomItem?, dx : Int, dy : Int) : Int32
        index = index.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        return dx &+ self.getDiffX(item)
    end
    

    def append(item : ABCustomItem?) : Int32
        return super(item)
    end
    

    def getSelectedItem(point : GPoint?) : ABCustomItem?
        index : Int32 = self.getSelectedIndexForPoint(point)
        if index != -1
            return self.get(index)
        else
            return ABCustomItem.getNullInstance()
        end
        return nil
    end
    

    def getItemIndex(item : ABCustomItem?) : Int32
        nextItem : ABCustomItem? = nil
        size : Int32 = self.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            nextItem = JR.cast(self.get(index), ABCustomItem)
            if nextItem == item
                return index
            end
        end
        return -1
    end
    

    def getStartIndex : Int32
        return 0
    end
    

    def getSelectedIndexForPoint(point : GPoint?) : Int32
        start : Int32 = self.getStartIndex()
        size : Int32 = self.size()
        dx : Int32 = self.getDx()
        dy : Int32 = self.getDy()
        formTypeFactory : FormTypeFactory? = FormTypeFactory.getInstance()
        commonLabels : CommonLabels? = CommonLabels.getInstance()
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(commonLabels.not_nil!.jf_START_LABEL)
        stringBuffer.not_nil!.appendint(start)
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(commonLabels.not_nil!.jf_TOTAL_LABEL)
        stringBuffer.not_nil!.appendint(size)
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, ScrollSelectionForm.jst_GET_SELECTED_INDEX)
        item : ABCustomItem? = nil
        width : Int32 = 0
        height : Int32 = 0
        diffX : Int32 = 0
        index : Int32 = start
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            item = self.get(index)
            width = item.not_nil!.getMinimumWidth()
            height = item.not_nil!.getMinimumHeight()
            diffX = @formTypeItemIndexDx.not_nil!.getDx(index, item, dx, dy)
            if @rectangleCollisionUtil.not_nil!.isInside(diffX, dy &- @halfBorder, diffX &+ width &+ @border, dy &+ height &+ @halfBorder &+ 1, point.not_nil!.getX(), point.not_nil!.getY())
                stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
                stringBuffer.not_nil!.append(commonLabels.not_nil!.jf_ITEM_LABEL)
                stringBuffer.not_nil!.append(item.not_nil!.getLabel())
                stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
                stringBuffer.not_nil!.append(commonLabels.not_nil!.jf_INDEX_LABEL)
                stringBuffer.not_nil!.appendint(index)
                @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, ScrollSelectionForm.jst_GET_SELECTED_INDEX)
                return index
            end
            if @formType == formTypeFactory.not_nil!.jf_HORIZONTAL_FORM
                dx = dx &+ width &+ @border
                if dx > @rectangle.not_nil!.getMaxX()
                    break
                end
            elsif @formType == formTypeFactory.not_nil!.jf_VERTICAL_CENTER_FORM
                dy = dy &+ height &+ @border
                if dy > @rectangle.not_nil!.getMaxY()
                    break
                end
            elsif @formType == formTypeFactory.not_nil!.jf_NULL_FORM_TYPE
            else
                raise (JException.new.jinit_JException(formTypeFactory.not_nil!.jf_UNK)).not_nil!
            end
        end
        return -1
    end
    

    def processInputKey(gameKeyCode : Int) : Int32
        gameKeyCode = gameKeyCode.to_i32!
        formTypeFactory : FormTypeFactory? = FormTypeFactory.getInstance()
        if self.size() == 0
            return -1
        end
        index : Int32 = self.getSelectedIndex()
        if @formType == formTypeFactory.not_nil!.jf_HORIZONTAL_FORM || @formType == formTypeFactory.not_nil!.jf_TEMP_HORIZONTAL_FORM
            if gameKeyCode == Canvas.jst_RIGHT
                index &+= 1
            elsif gameKeyCode == Canvas.jst_LEFT
                index &-= 1
            end
        elsif @formType == formTypeFactory.not_nil!.jf_VERTICAL_CENTER_FORM
            if gameKeyCode == Canvas.jst_DOWN
                index &+= 1
            elsif gameKeyCode == Canvas.jst_UP
                index &-= 1
            end
        elsif @formType == formTypeFactory.not_nil!.jf_NULL_FORM_TYPE
        else
            raise (JException.new.jinit_JException(formTypeFactory.not_nil!.jf_UNK)).not_nil!
        end
        max : Int32 = self.size() &- 1
        if index < 0
            self.setSelectedIndex(0)
        elsif index > max
            self.setSelectedIndex(max)
        else
            self.setSelectedIndex(index)
        end
        return -1
    end
    

    def isInForm(point : GPoint?) : Bool
        if @rectangleCollisionUtil.not_nil!.isInside(@x, @y - @halfBorder, @rectangle.not_nil!.getMaxX() &+ @border, @rectangle.not_nil!.getMaxY() &+ @border, point.not_nil!.getX(), point.not_nil!.getY())
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(StringUtil.getInstance().not_nil!.toString(point)).not_nil!.append(ScrollSelectionForm.jst_INSIDE_FORM).not_nil!.toString(), self, ScrollSelectionForm.jst_IS_IN_FORM)
            return true
        end
        return false
    end
    

    def paintItem(graphics : Graphics?, index : Int, item : ABCustomItem?, x : Int, y : Int) : Int32
        index = index.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        item.not_nil!.paintXY(graphics, x, y)
        width : Int32 = item.not_nil!.getMinimumWidth()
        height : Int32 = item.not_nil!.getMinimumHeight()
        graphics.not_nil!.setColor(self.getButtonBasicColor().not_nil!.intValue())
        adjustedBorder : Int32 = 3
        graphics.not_nil!.drawRect(x &- @halfBorder &- adjustedBorder, y &- @halfBorder &- adjustedBorder, width &+ @border &+ @adjustedExtraBorder, height &+ @border &+ @adjustedExtraBorder)
        return @scrollSelectionFormFormTypeItemIndexPaintable.not_nil!.paint(graphics, index, item, x, y)
    end
    

    def paintUnselectedItem(graphics : Graphics?, index : Int, item : ABCustomItem?, x : Int, y : Int) : Int32
        index = index.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        graphics.not_nil!.setColor(self.getButtonBasicColor().not_nil!.intValue())
        item.not_nil!.paintUnselected(graphics, x, y)
        return @scrollSelectionFormFormTypeItemIndexPaintable.not_nil!.paint(graphics, index, item, x, y)
    end
    

    def getDiffX(item : ABCustomItem?) : Int32
        return 0
    end
    

    def getDx : Int32
        return @x
    end
    

    def getDy : Int32
        return @y
    end
    

    def setButtonBasicColor(buttonBasicColor : BasicColor?) : Nil
        @buttonBasicColor = buttonBasicColor
    end
    

    def getButtonBasicColor : BasicColor?
        return @buttonBasicColor
    end
end

