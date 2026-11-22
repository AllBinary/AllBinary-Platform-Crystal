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
# package org.allbinary.graphics.form.item.validation

class UsernameValidator < TextFieldItemValidator
    

    def jinit_UsernameValidator(textFieldItem : ABTextFieldItem?, min : Int, max : Int, allowOnEmpty : Bool) : self
        min = min.to_i32!
        max = max.to_i32!
        jinit_TextFieldItemValidator(textFieldItem, min, max, allowOnEmpty)
        self
    end
end

