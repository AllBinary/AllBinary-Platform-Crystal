# Generated Code Do Not Modify
# package org.allbinary.game.score

class BasicHighScoresFactory < HighScoresBase
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @abeClientInformation : AbeClientInformationInterface? = nil

    def jf_abeClientInformation : AbeClientInformationInterface?
        @abeClientInformation
    end

    def jf_abeClientInformation=(value : AbeClientInformationInterface?) : AbeClientInformationInterface?
        @abeClientInformation = value
    end
    @highScoresArray : Array(HighScores?)? = nil

    def jf_highScoresArray : Array(HighScores?)?
        @highScoresArray
    end

    def jf_highScoresArray=(value : Array(HighScores?)?) : Array(HighScores?)?
        @highScoresArray = value
    end
    @j_TOP : String = ""

    def jf_TOP : String
        @j_TOP
    end

    def jf_TOP=(value : String) : String
        @j_TOP = value
    end
    @j_SCORES : String = ""

    def jf_SCORES : String
        @j_SCORES
    end

    def jf_SCORES=(value : String) : String
        @j_SCORES = value
    end
    @j_PERSONAL_HIGH_SCORES : String = ""

    def jf_PERSONAL_HIGH_SCORES : String
        @j_PERSONAL_HIGH_SCORES
    end

    def jf_PERSONAL_HIGH_SCORES=(value : String) : String
        @j_PERSONAL_HIGH_SCORES = value
    end
    @j_FETCH : String = ""

    def jf_FETCH : String
        @j_FETCH
    end

    def jf_FETCH=(value : String) : String
        @j_FETCH = value
    end
    

    def self.loaded(index2 : Int) : Bool
        index2 = index2.to_i32!
        if index2 >= 0
            return true
        end
        return false
    end

    # Java field initializers run after the super constructor
    def jfields_BasicHighScoresFactory : Nil
    @logUtil = LogUtil.getInstance()
    
    @highScoresArray = Array(HighScores?).new(1, nil)
    @j_TOP = "Top"
    @j_SCORES = "Scores"
    @j_PERSONAL_HIGH_SCORES = "Personal Top Scores"
    @j_FETCH = "fetchHighScores"
    end
    

    def jinit_BasicHighScoresFactory(abeClientInformation : AbeClientInformationInterface?, softwareInformation : SoftwareInformation?) : self
        jinit_HighScoresBase()
        jfields_BasicHighScoresFactory()
        @abeClientInformation = JR.cast(abeClientInformation, AbeClientInformationInterface)
        self
    end
    

    def fetchHighScores(gameInfo : GameInfo?, highScoresResultsListener : HighScoresResultsListener?) : Nil
        @logUtil.not_nil!.putF("Getting Local HighScores", self, @j_FETCH)
        self.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true)
    end
    

    def fetchHighScoresPreload(gameInfo : GameInfo?, highScoresResultsListener : HighScoresResultsListener?, preload : Bool) : Nil
        begin
            @highScoresArray.not_nil![0] = JR.cast(RecordStoreHighScores.getInstance(@abeClientInformation, gameInfo, @j_TOP, @j_PERSONAL_HIGH_SCORES, @j_SCORES, ScoreComparator.new.jinit_ScoreComparator(true)), HighScores)
            highScoresResultsListener.not_nil!.setHighScoresArray(@highScoresArray)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @j_FETCH, e)
            else
                raise jex1
            end
        end
    end
    

    def createHighScoresHelper : HighScoresHelperBaseInterface?
        return JR.cast(HighScoresHelper2.new.jinit_HighScoresHelper2(), HighScoresHelperBaseInterface)
    end
end

