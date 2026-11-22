# Generated Code Do Not Modify
# package org.allbinary.graphics.form

class PaintableForm < ABCustomForm
    @canvasStrings : CanvasStrings? = nil

    def jf_canvasStrings : CanvasStrings?
        @canvasStrings
    end

    def jf_canvasStrings=(value : CanvasStrings?) : CanvasStrings?
        @canvasStrings = value
    end
    @rectangle : Rectangle? = nil

    def jf_rectangle : Rectangle?
        @rectangle
    end

    def jf_rectangle=(value : Rectangle?) : Rectangle?
        @rectangle = value
    end
    @x : Int32 = 0

    def jf_x : Int32
        @x
    end

    def jf_x=(value : Int32) : Int32
        @x = value
    end
    @y : Int32 = 0

    def jf_y : Int32
        @y
    end

    def jf_y=(value : Int32) : Int32
        @y = value
    end
    @formType : FormType? = nil

    def jf_formType : FormType?
        @formType
    end

    def jf_formType=(value : FormType?) : FormType?
        @formType = value
    end

    @@jst_NULL_PAINTABLE_FORM : JAny = nil

    def self.jst_NULL_PAINTABLE_FORM : JAny
        jclinit
        @@jst_NULL_PAINTABLE_FORM
    end

    def self.jst_NULL_PAINTABLE_FORM=(value : JAny) : JAny
        jclinit
        @@jst_NULL_PAINTABLE_FORM = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_PAINTABLE_FORM = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getNullPaintableForm : PaintableForm?
        if PaintableForm.jst_NULL_PAINTABLE_FORM == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            PaintableForm.jst_NULL_PAINTABLE_FORM = PaintableForm.new.jinit_PaintableForm(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Array(ABCustomItem?).new(0, nil), BasicColorFactory.getInstance().not_nil!.jf_BLACK, BasicColorFactory.getInstance().not_nil!.jf_WHITE)
        end
        return JR.cast(PaintableForm.jst_NULL_PAINTABLE_FORM, PaintableForm)
    end

    # Java field initializers run after the super constructor
    def jfields_PaintableForm : Nil
    @canvasStrings = CanvasStrings.getInstance()
    @rectangle = RectangleFactory.jst_SINGLETON
    
    
    @formType = FormTypeFactory.getInstance().not_nil!.jf_NULL_FORM_TYPE
    end
    

    def jinit_PaintableForm(title : String, items : Array(ABCustomItem?)?, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_ABCustomForm(title, items, backgroundBasicColor, foregroundBasicColor)
        jfields_PaintableForm()
        self.setSelectedIndex(0)
        self
    end
    

    def init(rectangle : Rectangle?, formType : FormType?) : Nil
        @rectangle = rectangle
        point : GPoint? = @rectangle.not_nil!.getPoint()
        @x = point.not_nil!.getX()
        @y = point.not_nil!.getY()
        @formType = formType
    end
    

    def getWidth : Int32
        return @rectangle.not_nil!.getWidth()
    end
end

