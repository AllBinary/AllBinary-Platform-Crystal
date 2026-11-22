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

class HorizontalItemIndexDx < ItemIndexDx
    @scrollCurrentSelectionForm : ScrollCurrentSelectionForm? = nil

    def jf_scrollCurrentSelectionForm : ScrollCurrentSelectionForm?
        @scrollCurrentSelectionForm
    end

    def jf_scrollCurrentSelectionForm=(value : ScrollCurrentSelectionForm?) : ScrollCurrentSelectionForm?
        @scrollCurrentSelectionForm = value
    end
    

    def jinit_HorizontalItemIndexDx(scrollCurrentSelectionForm : ScrollCurrentSelectionForm?) : self
        jinit_ItemIndexDx()
        @scrollCurrentSelectionForm = scrollCurrentSelectionForm
        self
    end
    

    def getDx(index : Int, item : ABCustomItem?, dx : Int, dy : Int) : Int32
        index = index.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        return @scrollCurrentSelectionForm.not_nil!.getXHorizontalForm(index, item, dx, dy)
    end
end

