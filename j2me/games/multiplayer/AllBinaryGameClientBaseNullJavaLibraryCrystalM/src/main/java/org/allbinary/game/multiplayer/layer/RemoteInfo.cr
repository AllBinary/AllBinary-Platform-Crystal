# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# package org.allbinary.game.multiplayer.layer

class RemoteInfo < JObject

    def self.jst_NEW_PLAYER_ID : Int32
        0
    end

    @@jst_REMOTE_INFO : RemoteInfo? = nil

    def self.jst_REMOTE_INFO : RemoteInfo?
        jclinit
        @@jst_REMOTE_INFO
    end

    def self.jst_REMOTE_INFO=(value : RemoteInfo?) : RemoteInfo?
        jclinit
        @@jst_REMOTE_INFO = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        
        @@jst_REMOTE_INFO = RemoteInfo.new.jinit_RemoteInfo(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, -1, -1, RemoteInfo.jst_NEW_PLAYER_ID)
    end
    

    def jinit_RemoteInfo(username : String, actorSessionId : Int, playerInputId : Int, id : Int) : self
        actorSessionId = actorSessionId.to_i32!
        playerInputId = playerInputId.to_i32!
        id = id.to_i32!
        self
    end
end

