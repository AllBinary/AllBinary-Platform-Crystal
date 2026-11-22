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
# package org.allbinary.game.input.event

module DownKeyEventListenerInterface
    include JObjectI
    include EventListenerInterface
end

module JObjectI
    def onDownKeyEvent(*jargs) : NoReturn
        raise JR.abstractMethod("onDownKeyEvent")
    end
    def onDownKey(*jargs) : NoReturn
        raise JR.abstractMethod("onDownKey")
    end
end

