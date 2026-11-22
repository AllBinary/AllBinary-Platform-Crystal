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
# package org.allbinary.graphics.form.item

class CommandTextItem < ABTextItem
    @command : Command? = nil

    def jf_command : Command?
        @command
    end

    def jf_command=(value : Command?) : Command?
        @command = value
    end
    

    def jinit_CommandTextItem(command : Command?, layout : Int, altText : String, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        layout = layout.to_i32!
        jinit_ABTextItem(command.not_nil!.getLabel(), layout, altText, backgroundBasicColor, foregroundBasicColor)
        @command = command
        self
    end
    

    def isFocusable : Bool
        return true
    end
    

    def getCommand : Command?
        return @command
    end
end

