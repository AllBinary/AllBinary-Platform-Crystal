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
# package org.allbinary.game.multiplayer.layer

class MultiplayerBehavior < JObject

    @@jst_NULL_MULTIPLAYER_BEHAVIOR : MultiplayerBehavior? = nil

    def self.jst_NULL_MULTIPLAYER_BEHAVIOR : MultiplayerBehavior?
        jclinit
        @@jst_NULL_MULTIPLAYER_BEHAVIOR
    end

    def self.jst_NULL_MULTIPLAYER_BEHAVIOR=(value : MultiplayerBehavior?) : MultiplayerBehavior?
        jclinit
        @@jst_NULL_MULTIPLAYER_BEHAVIOR = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_MULTIPLAYER_BEHAVIOR = MultiplayerBehavior.new.jinit_MultiplayerBehavior(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING)
    end
    

    def jinit_MultiplayerBehavior(username : String) : self
        self
    end
    

    def startTick : Nil
    end
    

    def endTick : Nil
    end
    

    def getApproximateElapsed : Int64
        return 0_i64
    end
end

