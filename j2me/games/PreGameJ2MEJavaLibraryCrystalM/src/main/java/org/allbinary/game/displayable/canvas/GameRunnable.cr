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

class GameRunnable < JObject
    include JRunnable
    @j_WAIT : Int32 = 0

    def jf_WAIT : Int32
        @j_WAIT
    end

    def jf_WAIT=(value : Int32) : Int32
        @j_WAIT = value
    end
    @j_FAST : Int32 = 0

    def jf_FAST : Int32
        @j_FAST
    end

    def jf_FAST=(value : Int32) : Int32
        @j_FAST = value
    end
    @waitInMillis : Int64 = 0_i64

    def jf_waitInMillis : Int64
        @waitInMillis
    end

    def jf_waitInMillis=(value : Int64) : Int64
        @waitInMillis = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameRunnable : Nil
    @j_WAIT = 240
    @j_FAST = 60
    @waitInMillis = (@j_WAIT).to_i64!
    end
    

    def jinit_GameRunnable : self
        jfields_GameRunnable()
        self
    end
    

    def run : Nil
        DisplayInfoSingleton.getInstance().not_nil!.process()
    end
    

    def processLoopSleep : Nil
        JThread.sleep_j(@waitInMillis)
    end
end

