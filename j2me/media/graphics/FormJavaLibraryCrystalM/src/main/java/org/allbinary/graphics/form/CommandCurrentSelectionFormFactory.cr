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

class CommandCurrentSelectionFormFactory < JObject
    

    def self.getInstance(title : String, items : Array(ABCustomItem?)?, rectangle : Rectangle?, formType : FormType?, border : Int, moveForSmallScreen : Bool, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : ScrollSelectionForm?
        border = border.to_i32!
        if Features.getInstance().not_nil!.isFeature(TouchFeatureFactory.getInstance().not_nil!.jf_TOUCH_ENABLED)
            scrollSelectionForm : ScrollSelectionForm? = CommandCurrentSelectionForm.new.jinit_CommandCurrentSelectionForm(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
            scrollSelectionForm.not_nil!.init(rectangle, formType)
            return scrollSelectionForm
        else
            return ScrollSelectionFormNoneFactory.getInstance()
        end
        return nil
    end

    def jinit_CommandCurrentSelectionFormFactory : self
        self
    end
end

