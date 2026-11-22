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

class GameKeyEventUtil < JObject
    

    def self.getKey(anyType : JAny) : Int32
        gameKeyEvent : GameKeyEvent? = JR.cast(anyType, GameKeyEvent)
        return gameKeyEvent.not_nil!.getKey()
    end
    

    def jinit_GameKeyEventUtil : self
        self
    end
end

