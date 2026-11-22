# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.animation.text

class CustomTextBox2 < CustomTextBox
    

    def jinit_CustomTextBox2(cmdListener : CommandListener?, label : String, text : String, maxSize : Int, constraints : Int, font : Font?, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        maxSize = maxSize.to_i32!
        constraints = constraints.to_i32!
        jinit_CustomTextBox(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        self.getTextFieldItem().not_nil!.setFocus(true)
        self
    end
end

