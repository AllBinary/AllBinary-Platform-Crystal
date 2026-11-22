# Generated Code Do Not Modify
# package org.allbinary.graphics.form

class MultipleScrollSelectionHorizontalForm < ScrollSelectionForm
    include UpdateMyFontInterface
    @rectPaintable : Paintable? = nil

    def jf_rectPaintable : Paintable?
        @rectPaintable
    end

    def jf_rectPaintable=(value : Paintable?) : Paintable?
        @rectPaintable = value
    end
    @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable : ItemIndexPaintable? = nil

    def jf_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable : ItemIndexPaintable?
        @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable
    end

    def jf_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable=(value : ItemIndexPaintable?) : ItemIndexPaintable?
        @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = value
    end
    @backgroundColor : Int32 = 0

    def jf_backgroundColor : Int32
        @backgroundColor
    end

    def jf_backgroundColor=(value : Int32) : Int32
        @backgroundColor = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @logged : Bool = false

    def jf_logged : Bool
        @logged
    end

    def jf_logged=(value : Bool) : Bool
        @logged = value
    end
    @fontHeight : Int32 = 0

    def jf_fontHeight : Int32
        @fontHeight
    end

    def jf_fontHeight=(value : Int32) : Int32
        @fontHeight = value
    end
    

    def self.createForm(title : String, items : Array(ABCustomItem?)?, rectangle : Rectangle?, formType : FormType?, border : Int, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : ScrollSelectionForm?
        border = border.to_i32!
        scrollSelectionForm : ScrollSelectionForm? = MultipleScrollSelectionHorizontalForm.new.jinit_MultipleScrollSelectionHorizontalForm(title, items, ItemPaintableFactory.getInstance(), border, backgroundBasicColor, foregroundBasicColor)
        scrollSelectionForm.not_nil!.init(rectangle, formType)
        return scrollSelectionForm
    end

    # Java field initializers run after the super constructor
    def jfields_MultipleScrollSelectionHorizontalForm : Nil
    @rectPaintable = NullPaintable.getInstance()
    @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance()
    @backgroundColor = BasicColorFactory.getInstance().not_nil!.jf_TRANSPARENT_GREY.not_nil!.intValue()
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @logged = false
    @fontHeight = 0
    end
    

    def jinit_MultipleScrollSelectionHorizontalForm(title : String, items : Array(ABCustomItem?)?, formPaintableFactory : ItemPaintableFactory?, border : Int, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        border = border.to_i32!
        jinit_ScrollSelectionForm(title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor)
        jfields_MultipleScrollSelectionHorizontalForm()
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
        else
            @rectPaintable = MultipleScrollSelectionFormRectPaintable.new.jinit_MultipleScrollSelectionFormRectPaintable(self)
        end
        self
    end
    

    def fillRect(graphics : Graphics?) : Nil
        graphics.not_nil!.setColor(@backgroundColor)
        graphics.not_nil!.fillRect(@x, @y, @rectangle.not_nil!.getWidth(), @rectangle.not_nil!.getHeight())
    end
    

    def init(rectangle : Rectangle?, formType : FormType?) : Nil
        super(rectangle, formType)
        formTypeFactory : FormTypeFactory? = FormTypeFactory.getInstance()
        if formType == formTypeFactory.not_nil!.jf_HORIZONTAL_FORM
            @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = MultipleScrollSelectionFormHorizontalPaintable.new.jinit_MultipleScrollSelectionFormHorizontalPaintable(self)
        elsif formType == formTypeFactory.not_nil!.jf_VERTICAL_CENTER_FORM
            @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = MultipleScrollSelectionFormVerticalPaintable.new.jinit_MultipleScrollSelectionFormVerticalPaintable(self)
        elsif formType == formTypeFactory.not_nil!.jf_NULL_FORM_TYPE
        else
            raise (JException.new.jinit_JException(formTypeFactory.not_nil!.jf_UNK)).not_nil!
        end
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @fontHeight = font.not_nil!.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paintHorizontal(graphics : Graphics?, index : Int, item : ABCustomItem?, dx : Int, dy : Int) : Int32
        index = index.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        dx2 : Int32 = self.paintItem(graphics, index, item, dx, dy) + @border
        @paintable.not_nil!.paint(graphics, index, dx, dy)
        dx = dx2
        return dx
    end
    

    def paintVertical(graphics : Graphics?, index : Int, item : ABCustomItem?, dx : Int, dy : Int) : Int32
        index = index.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        self.paintItem(graphics, index, item, dx, dy)
        @paintable.not_nil!.paint(graphics, index, dx, dy)
        return dx
    end
    

    def getStartIndex : Int32
        return self.getSelectedIndex()
    end
    

    def paint(graphics : Graphics?) : Nil
        begin
            @myFontProcessor.not_nil!.process(graphics)
            start : Int32 = self.getStartIndex()
            size : Int32 = self.size()
            dx : Int32 = @x
            dy : Int32 = @y
            @rectPaintable.not_nil!.paint(graphics)
            graphics.not_nil!.drawString(self.getTitle(), @x, @y - @fontHeight, 0)
            item : ABCustomItem? = nil
            index : Int32 = start
            jfor1 = false
            while true
                if jfor1
                    index &+= 1
                end
                jfor1 = true
                break unless index < size
                item = self.get(index)
                if dx >= @rectangle.not_nil!.getMaxX()
                    if @logged
                    else
                        @logged = true
                        PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append("painting beyond maxx: ").not_nil!.appendint(@rectangle.not_nil!.getMaxX()).not_nil!.toString(), self, @canvasStrings.not_nil!.jf_PAINT)
                    end
                end
                dx = @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable.not_nil!.paint(graphics, index, item, dx, dy)
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            PreLogUtil.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @canvasStrings.not_nil!.jf_PAINT)
            else
                raise jex1
            end
        end
    end
end

