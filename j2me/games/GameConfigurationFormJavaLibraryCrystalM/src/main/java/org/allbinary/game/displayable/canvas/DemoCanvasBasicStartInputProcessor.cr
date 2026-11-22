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

class DemoCanvasBasicStartInputProcessor < BasicMenuInputProcessor
    

    def jinit_DemoCanvasBasicStartInputProcessor(gameKeyEventList : BasicArrayList?, gameCanvas : RunnableCanvas?) : self
        jinit_BasicMenuInputProcessor(gameKeyEventList, -1, gameCanvas)
        self
    end
    

    def processInputList : Int32
        list : BasicArrayList? = self.getGameKeyEventList()
        size : Int32 = list.not_nil!.size()
        gameKeyEvent : GameKeyEvent? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            gameKeyEvent = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], GameKeyEvent)
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Start GameKey: ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(gameKeyEvent)).not_nil!.toString(), self, GameInputStrings.getInstance().not_nil!.jf_PROCESS_INPUT)
        end
        self.getCanvas().not_nil!.getCustomCommandListener().not_nil!.commandAction(GameCommandsFactory.getInstance().not_nil!.jf_START_COMMAND, NullCanvas.jst_NULL_CANVAS)
        return size
    end
end

