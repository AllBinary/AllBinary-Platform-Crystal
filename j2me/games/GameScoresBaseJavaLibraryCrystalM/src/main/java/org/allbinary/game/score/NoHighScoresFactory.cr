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

class NoHighScoresFactory < HighScoresBase
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_NO_HIGH_SCORES : Array(HighScores?)? = nil

    def jf_NO_HIGH_SCORES : Array(HighScores?)?
        @j_NO_HIGH_SCORES
    end

    def jf_NO_HIGH_SCORES=(value : Array(HighScores?)?) : Array(HighScores?)?
        @j_NO_HIGH_SCORES = value
    end

    @@jst_instance : NoHighScoresFactory? = nil

    def self.jst_instance : NoHighScoresFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NoHighScoresFactory?) : NoHighScoresFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NoHighScoresFactory.new.jinit_NoHighScoresFactory()
    end
    

    def self.getInstance : NoHighScoresFactory?
        return NoHighScoresFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_NoHighScoresFactory : Nil
    @logUtil = LogUtil.getInstance()
    @j_NO_HIGH_SCORES = Array(HighScores?).new(0, nil)
    end
    

    def jinit_NoHighScoresFactory : self
        jinit_HighScoresBase()
        jfields_NoHighScoresFactory()
        self
    end
    

    def fetchHighScores(gameInfo : GameInfo?, highScoresResultsListener : HighScoresResultsListener?) : Nil
        @logUtil.not_nil!.putF("Getting No HighScores", self, "fetchHighScores")
        highScoresResultsListener.not_nil!.setHighScoresArray(@j_NO_HIGH_SCORES)
    end
    

    def createHighScoresHelper : HighScoresHelperBaseInterface?
        return JR.cast(HighScoresHelperBase.new.jinit_HighScoresHelperBase(), HighScoresHelperBaseInterface)
    end
end

