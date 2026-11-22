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
# package org.allbinary.game.displayable.canvas

class PopupCommandFormInputProcessor < CommandFormInputProcessor
    

    def jinit_PopupCommandFormInputProcessor(gameKeyEventList : BasicArrayList?, playerInputId : Int, gameCanvas : MyCanvas?, form : ScrollSelectionForm?, popupMenuInputProcessor : PopupMenuInputProcessor?) : self
        playerInputId = playerInputId.to_i32!
        jinit_CommandFormInputProcessor(gameKeyEventList, playerInputId, gameCanvas, form)
        self
    end
    

    def processInput(key : Int) : Int32
        key = key.to_i32!
        return super(key)
    end
    

    def processMotionInput(motionGestureEvent : MotionGestureEvent?) : Nil
        super(motionGestureEvent)
    end
end

