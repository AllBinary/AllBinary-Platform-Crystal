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
# package org.allbinary.game.midlet

class DemoGameMidletEvent < AllBinaryEventObject
    @demoGameMidletState : DemoGameMidletState? = nil

    def jf_demoGameMidletState : DemoGameMidletState?
        @demoGameMidletState
    end

    def jf_demoGameMidletState=(value : DemoGameMidletState?) : DemoGameMidletState?
        @demoGameMidletState = value
    end
    

    def jinit_DemoGameMidletEvent(anyType : JAny, demoGameMidletState : DemoGameMidletState?) : self
        jinit_AllBinaryEventObject(anyType)
        @demoGameMidletState = demoGameMidletState
        self
    end
    

    def init(anyType : JAny) : Nil
        self.setSource(anyType)
    end
    

    def setDemoGameMidletState(demoGameMidletState : DemoGameMidletState?) : Nil
        @demoGameMidletState = demoGameMidletState
    end
    

    def getDemoGameMidletState : DemoGameMidletState?
        return @demoGameMidletState
    end
end

