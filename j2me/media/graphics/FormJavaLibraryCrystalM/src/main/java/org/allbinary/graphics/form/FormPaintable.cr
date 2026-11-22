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

class FormPaintable < Paintable
    @form : PaintableForm? = nil

    def jf_form : PaintableForm?
        @form
    end

    def jf_form=(value : PaintableForm?) : PaintableForm?
        @form = value
    end
    

    def jinit_FormPaintable(form : PaintableForm?) : self
        jinit_Paintable()
        @form = form
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        @form.not_nil!.paint(graphics)
    end
    

    def getForm : PaintableForm?
        return @form
    end
end

