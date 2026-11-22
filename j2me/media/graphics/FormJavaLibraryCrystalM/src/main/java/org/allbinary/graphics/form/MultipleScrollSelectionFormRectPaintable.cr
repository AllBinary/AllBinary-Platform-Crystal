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

class MultipleScrollSelectionFormRectPaintable < Paintable
    @multipleScrollSelectionForm : MultipleScrollSelectionHorizontalForm? = nil

    def jf_multipleScrollSelectionForm : MultipleScrollSelectionHorizontalForm?
        @multipleScrollSelectionForm
    end

    def jf_multipleScrollSelectionForm=(value : MultipleScrollSelectionHorizontalForm?) : MultipleScrollSelectionHorizontalForm?
        @multipleScrollSelectionForm = value
    end
    

    def jinit_MultipleScrollSelectionFormRectPaintable(multipleScrollSelectionForm : MultipleScrollSelectionHorizontalForm?) : self
        jinit_Paintable()
        @multipleScrollSelectionForm = multipleScrollSelectionForm
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        @multipleScrollSelectionForm.not_nil!.fillRect(graphics)
    end
end

