# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

class HighScoresHelperBase < JObject
    include HighScoresHelperBaseInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @highScoresArrayP : Array(HighScores?)? = nil

    def jf_highScoresArrayP : Array(HighScores?)?
        @highScoresArrayP
    end

    def jf_highScoresArrayP=(value : Array(HighScores?)?) : Array(HighScores?)?
        @highScoresArrayP = value
    end

    # Java field initializers run after the super constructor
    def jfields_HighScoresHelperBase : Nil
    @logUtil = LogUtil.getInstance()
    @highScoresArrayP = LastFetchHighScoresFactory.getInstance().not_nil!.jf_highScoresArray
    end

    def jinit_HighScoresHelperBase : self
        jfields_HighScoresHelperBase()
        self
    end
    

    def setHighScoresArray(highScoresArrayP : Array(HighScores?)?) : Nil
        if !(highScoresArrayP).nil?
            commonStrings = (CommonStrings.getInstance()).as(CommonStrings?)
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(commonStrings.not_nil!.jf_START).not_nil!.appendint(highScoresArrayP.not_nil!.size).not_nil!.toString(), self, "setHighScoresArray")
        else
            commonStrings = (CommonStrings.getInstance()).as(CommonStrings?)
            @logUtil.not_nil!.putF(commonStrings.not_nil!.jf_START, self, "setHighScoresArray")
        end
        @highScoresArrayP = highScoresArrayP
    end
    

    def getNextHighScores : HighScores?
        return NullHighScoresSingletonFactory.getInstance()
    end
    

    def isAnyHighScores : Bool
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def setSelectedHighScores(selectedHighScores : HighScores?) : Nil
    end
    

    def getSelectedHighScores : HighScores?
        return NullHighScoresSingletonFactory.getInstance()
    end
    

    def getHighScoresArray : Array(HighScores?)?
        return @highScoresArrayP
    end
    

    def selectHighScores : Nil
    end
end

