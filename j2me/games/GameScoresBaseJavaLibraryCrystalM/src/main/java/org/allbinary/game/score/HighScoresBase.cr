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
# package org.allbinary.game.score

class HighScoresBase < JObject
    include HighScoresFactoryInterface
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end

    # Java field initializers run after the super constructor
    def jfields_HighScoresBase : Nil
    @commonStrings = CommonStrings.getInstance()
    end
    

    def jinit_HighScoresBase : self
        jfields_HighScoresBase()
        self
    end
    

    def fetchHighScores(gameInfo : GameInfo?, highScoresResultsListener : HighScoresResultsListener?) : Nil
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def fetchHighScoresPreload(gameInfo : GameInfo?, highScoresResultsListener : HighScoresResultsListener?, preload : Bool) : Nil
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def createHighScoresHelper : HighScoresHelperBaseInterface?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
end

