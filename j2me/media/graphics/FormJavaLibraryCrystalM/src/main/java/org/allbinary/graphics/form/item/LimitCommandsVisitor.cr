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

class LimitCommandsVisitor < Visitor
    @isNotSmallDisplay : Bool = false

    def jf_isNotSmallDisplay : Bool
        @isNotSmallDisplay
    end

    def jf_isNotSmallDisplay=(value : Bool) : Bool
        @isNotSmallDisplay = value
    end
    

    def jinit_LimitCommandsVisitor : self
        jinit_Visitor()
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        @isNotSmallDisplay = (displayInfo.not_nil!.isPortrait() && displayInfo.not_nil!.getLastHeight() > ScreenInfo.getInstance().not_nil!.jf_SMALL_WIDTH) || (!displayInfo.not_nil!.isPortrait() && displayInfo.not_nil!.getLastHeight() > ScreenInfo.getInstance().not_nil!.jf_SMALL_HEIGHT)
        self
    end
    

    def visit(anyType : JAny) : JAny
        command : Command? = JR.cast(anyType, Command)
        booleanFactory : BooleanFactory? = BooleanFactory.getInstance()
        if @isNotSmallDisplay || command.not_nil!.getPriority() == 1 || command == GameCommandsFactory.getInstance().not_nil!.jf_EXIT_COMMAND || command == GameCommandsFactory.getInstance().not_nil!.jf_EXIT_WITHOUT_PROGRESS_COMMAND
            return booleanFactory.not_nil!.jf_TRUE
        else
            return booleanFactory.not_nil!.jf_FALSE
        end
        return nil
    end
end

