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

class ScrollCurrentSelectionForm < ScrollSelectionForm
    include UpdateMyFontInterface
    @moveForSmallScreen : Bool = false

    def jf_moveForSmallScreen : Bool
        @moveForSmallScreen
    end

    def jf_moveForSmallScreen=(value : Bool) : Bool
        @moveForSmallScreen = value
    end
    @updateMyFontProcessor : MyFontProcessor? = nil

    def jf_updateMyFontProcessor : MyFontProcessor?
        @updateMyFontProcessor
    end

    def jf_updateMyFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @updateMyFontProcessor = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @processor : Processor? = nil

    def jf_processor : Processor?
        @processor
    end

    def jf_processor=(value : Processor?) : Processor?
        @processor = value
    end
    @preItemIndexDx : ItemIndexDx? = nil

    def jf_preItemIndexDx : ItemIndexDx?
        @preItemIndexDx
    end

    def jf_preItemIndexDx=(value : ItemIndexDx?) : ItemIndexDx?
        @preItemIndexDx = value
    end
    @dx : Int32 = 0

    def jf_dx : Int32
        @dx
    end

    def jf_dx=(value : Int32) : Int32
        @dx = value
    end
    @dy : Int32 = 0

    def jf_dy : Int32
        @dy
    end

    def jf_dy=(value : Int32) : Int32
        @dy = value
    end
    @maxWidth : Int32 = 0

    def jf_maxWidth : Int32
        @maxWidth
    end

    def jf_maxWidth=(value : Int32) : Int32
        @maxWidth = value
    end

    # Java field initializers run after the super constructor
    def jfields_ScrollCurrentSelectionForm : Nil
    
    @updateMyFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @myFontProcessor = @updateMyFontProcessor
    @processor = Processor.getInstance()
    @preItemIndexDx = ItemIndexDx.getInstance()
    
    
    @maxWidth = 0
    end
    

    def jinit_ScrollCurrentSelectionForm(title : String, items : Array(ABCustomItem?)?, formPaintableFactory : ItemPaintableFactory?, border : Int, adjustedExtraBorder : Int, moveForSmallScreen : Bool, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        border = border.to_i32!
        adjustedExtraBorder = adjustedExtraBorder.to_i32!
        jinit_ScrollSelectionForm(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)
        jfields_ScrollCurrentSelectionForm()
        @moveForSmallScreen = moveForSmallScreen
        self
    end
    

    def init(rectangle : Rectangle?, formType : FormType?) : Nil
        super(rectangle, formType)
        formTypeFactory : FormTypeFactory? = FormTypeFactory.getInstance()
        if formType == formTypeFactory.not_nil!.jf_TEMP_HORIZONTAL_FORM
            @processor = TempHorizontalFormProcessor.new.jinit_TempHorizontalFormProcessor(self)
            @preItemIndexDx = TempHorizontalItemIndexDx.new.jinit_TempHorizontalItemIndexDx(self)
        elsif formType == formTypeFactory.not_nil!.jf_HORIZONTAL_FORM
            @processor = HorizontalFormProcessor.new.jinit_HorizontalFormProcessor(self)
            @preItemIndexDx = HorizontalItemIndexDx.new.jinit_HorizontalItemIndexDx(self)
        elsif formType == formTypeFactory.not_nil!.jf_VERTICAL_CENTER_FORM
            @processor = VerticalFormProcessor.new.jinit_VerticalFormProcessor(self)
            @preItemIndexDx = VerticalItemIndexDx.new.jinit_VerticalItemIndexDx(self)
        elsif formType == formTypeFactory.not_nil!.jf_NULL_FORM_TYPE
        else
            @logUtil.not_nil!.putF(formTypeFactory.not_nil!.jf_UNK, self, @commonStrings.not_nil!.jf_INIT)
        end
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def processTempHorizontalForm : Nil
        @dx = @x - 30 + (JR.shr(@rectangle.not_nil!.getWidth(), 1))
        @dy = @y
    end
    

    def processHorizontalForm : Nil
        size : Int32 = self.size()
        totalWidth : Int32 = 0
        item : ABCustomItem? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            item = self.get(index)
            totalWidth &+= item.not_nil!.getMinimumWidth() + @border
        end
        @dx = @x + (JR.shr(@rectangle.not_nil!.getWidth(), 1)) - (JR.shr(totalWidth, 1))
        @dy = @y + (JR.shr(@rectangle.not_nil!.getHeight(), 1))
        if @moveForSmallScreen
            maxTitleHeight : Int32 = 175
            if @dy < maxTitleHeight
                @dy = maxTitleHeight
            end
        end
    end
    

    def processVerticalForm : Nil
        totalHeight : Int32 = 0
        size : Int32 = self.size()
        item2 : ABCustomItem? = nil
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            item2 = self.get(index)
            if @maxWidth < item2.not_nil!.getMinimumWidth()
                @maxWidth = item2.not_nil!.getMinimumWidth()
            end
            totalHeight &+= item2.not_nil!.getMinimumHeight() + @border
        end
        @dx = ((@rectangle.not_nil!.getWidth() &- @maxWidth).tdiv(2))
        if self.size() > 0
            @dy = @y + ((@rectangle.not_nil!.getHeight() &- totalHeight).tdiv(2))
            if @moveForSmallScreen
                maxTitleHeight : Int32 = 175
                if @dy < maxTitleHeight
                    @dy = maxTitleHeight
                end
            end
        else
            @dy = @y
        end
    end
    

    def getXTempHorizontalForm(index : Int, item : ABCustomItem?, dx : Int, dy : Int) : Int32
        index = index.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        return self.getDiffX(item)
    end
    

    def getXHorizontalForm(index : Int, item : ABCustomItem?, dx : Int, dy : Int) : Int32
        index = index.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        return 0
    end
    

    def getXVerticalForm(index : Int, item : ABCustomItem?, dx : Int, dy : Int) : Int32
        index = index.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        return self.getDiffX(item) + @halfBorder
    end
    

    def getDiffX(item : ABCustomItem?) : Int32
        return (JR.shr((@maxWidth &- item.not_nil!.getMinimumWidth()), 1))
    end
    

    def getDx : Int32
        return @dx
    end
    

    def getDy : Int32
        return @dy
    end
    

    def paint(graphics : Graphics?) : Nil
        begin
            @processor.not_nil!.process()
            delta : Int32 = 0
            deltaX : Int32 = self.getDx()
            deltaY : Int32 = self.getDy()
            size : Int32 = self.size()
            formTypeFactory : FormTypeFactory? = FormTypeFactory.getInstance()
            item : ABCustomItem? = nil
            index : Int32 = 0
            jfor3 = false
            while true
                if jfor3
                    index &+= 1
                end
                jfor3 = true
                break unless index < size
                item = self.get(index)
                diffX : Int32 = @preItemIndexDx.not_nil!.getDx(index, item, @dx, @dy)
                if index == self.getSelectedIndex()
                    delta = self.paintItem(graphics, index, item, deltaX &+ diffX, deltaY)
                    @paintable.not_nil!.paint(graphics, index, deltaX &+ diffX, deltaY)
                else
                    delta = self.paintUnselectedItem(graphics, index, item, deltaX &+ diffX, deltaY)
                    @paintable.not_nil!.paint(graphics, index, deltaX &+ diffX, deltaY)
                end
                if @formType == formTypeFactory.not_nil!.jf_TEMP_HORIZONTAL_FORM
                elsif @formType == formTypeFactory.not_nil!.jf_HORIZONTAL_FORM
                    deltaX = delta
                elsif @formType == formTypeFactory.not_nil!.jf_VERTICAL_CENTER_FORM
                    deltaY = delta
                else
                    raise (JException.new.jinit_JException(formTypeFactory.not_nil!.jf_UNK)).not_nil!
                end
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @canvasStrings.not_nil!.jf_PAINT, e)
            else
                raise jex1
            end
        end
    end
end

