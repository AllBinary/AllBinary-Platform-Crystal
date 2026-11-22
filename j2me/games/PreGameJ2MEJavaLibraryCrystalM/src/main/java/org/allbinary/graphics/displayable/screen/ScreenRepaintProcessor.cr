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
# package org.allbinary.graphics.displayable.screen

class ScreenRepaintProcessor < Processor
    @displayable : Displayable? = nil

    def jf_displayable : Displayable?
        @displayable
    end

    def jf_displayable=(value : Displayable?) : Displayable?
        @displayable = value
    end
    

    def jinit_ScreenRepaintProcessor(displayable : Displayable?) : self
        jinit_Processor()
        @displayable = displayable
        self
    end
    

    def process : Nil
        ScreenRepaintUtil.repaint(@displayable)
    end
end

