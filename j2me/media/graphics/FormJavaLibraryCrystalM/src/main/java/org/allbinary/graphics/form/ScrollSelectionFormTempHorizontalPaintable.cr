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

class ScrollSelectionFormTempHorizontalPaintable < ItemIndexPaintable
    @scrollSelectionForm : ScrollSelectionForm? = nil

    def jf_scrollSelectionForm : ScrollSelectionForm?
        @scrollSelectionForm
    end

    def jf_scrollSelectionForm=(value : ScrollSelectionForm?) : ScrollSelectionForm?
        @scrollSelectionForm = value
    end
    

    def jinit_ScrollSelectionFormTempHorizontalPaintable(scrollSelectionForm : ScrollSelectionForm?) : self
        jinit_ItemIndexPaintable()
        @scrollSelectionForm = scrollSelectionForm
        self
    end
    

    def paint(graphics : Graphics?, index : Int, item : ABCustomItem?, dx : Int, dy : Int) : Int32
        index = index.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        return @scrollSelectionForm.not_nil!.paintItemTempHorizontal(graphics, index, item, dx, dy)
    end
end

