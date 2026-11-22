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

class VerticalFormProcessor < Processor
    @scrollCurrentSelectionForm : ScrollCurrentSelectionForm? = nil

    def jf_scrollCurrentSelectionForm : ScrollCurrentSelectionForm?
        @scrollCurrentSelectionForm
    end

    def jf_scrollCurrentSelectionForm=(value : ScrollCurrentSelectionForm?) : ScrollCurrentSelectionForm?
        @scrollCurrentSelectionForm = value
    end
    

    def jinit_VerticalFormProcessor(scrollCurrentSelectionForm : ScrollCurrentSelectionForm?) : self
        jinit_Processor()
        @scrollCurrentSelectionForm = scrollCurrentSelectionForm
        self
    end
    

    def process : Nil
        @scrollCurrentSelectionForm.not_nil!.processVerticalForm()
        @scrollCurrentSelectionForm.not_nil!.jf_processor = Processor.getInstance()
    end
end

