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
# package org.allbinary.game

class GameAdState < GameAdStateBase
    include VirtualKeyboardEventListenerInterface
    

    def jinit_GameAdState(adConfiguration : AdConfiguration?) : self
        jinit_GameAdStateBase(adConfiguration)
        VirtualKeyboardEventHandler.getInstance().not_nil!.addListenerInterface(self)
        self
    end
    

    def onVirtualKeyboardEvent(virtualKeyboardEvent : VirtualKeyboardEvent?) : Nil
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        super(eventObject)
    end
end

