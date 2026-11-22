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
# package org.allbinary.game.input

class NoPlayerGameInput < PlayerGameInput

    @@jst_SINGLETON : NoPlayerGameInput? = nil

    def self.jst_SINGLETON : NoPlayerGameInput?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : NoPlayerGameInput?) : NoPlayerGameInput?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NoPlayerGameInput.new.jinit_NoPlayerGameInput()
    end
    

    def self.getInstance : NoPlayerGameInput?
        return NoPlayerGameInput.jst_SINGLETON
    end
    

    def jinit_NoPlayerGameInput : self
        jinit_PlayerGameInput(BasicArrayListD.new.jinit_BasicArrayListD(), BasicArrayListD.new.jinit_BasicArrayListD(), -1)
        self
    end
    

    def onDownGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def onUpGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
    end
end

