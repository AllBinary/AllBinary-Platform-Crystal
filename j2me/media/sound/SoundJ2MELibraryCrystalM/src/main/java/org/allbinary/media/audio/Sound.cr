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
# package org.allbinary.media.audio

class Sound < JObject
    include SoundInterface
    include JRunnable
    @resource : String = ""

    def jf_resource : String
        @resource
    end

    def jf_resource=(value : String) : String
        @resource = value
    end
    @player : Player? = nil

    def jf_player : Player?
        @player
    end

    def jf_player=(value : Player?) : Player?
        @player = value
    end

    # Java field initializers run after the super constructor
    def jfields_Sound : Nil
    
    @player = NoPlayer.jst_NO_PLAYER
    end
    

    def jinit_Sound(resource : String) : self
        jfields_Sound()
        @resource = resource
        self
    end
    

    def getResource : String
        return @resource
    end
    

    def getPlayerP : Player?
        return JR.cast(@player, Player)
    end
    

    def setPlayerP(player : Player?) : Nil
        @player = JR.cast(player, Player)
    end
    

    def init : Nil
    end
    

    def getDuration : Int32
        return -1
    end
    

    def run : Nil
        begin
            @player.not_nil!.start()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            PreLogUtil.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_RUN)
            else
                raise jex1
            end
        end
    end
end

