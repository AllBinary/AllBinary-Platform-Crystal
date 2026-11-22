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

class LastFetchHighScoresFactory < JObject
    @highScoresArray : Array(HighScores?)? = nil

    def jf_highScoresArray : Array(HighScores?)?
        @highScoresArray
    end

    def jf_highScoresArray=(value : Array(HighScores?)?) : Array(HighScores?)?
        @highScoresArray = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : LastFetchHighScoresFactory?
        if LastFetchHighScoresFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            LastFetchHighScoresFactory.jst_instance = LastFetchHighScoresFactory.new.jinit_LastFetchHighScoresFactory()
        end
        return JR.cast(LastFetchHighScoresFactory.jst_instance, LastFetchHighScoresFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_LastFetchHighScoresFactory : Nil
    @highScoresArray = NoHighScoresFactory.getInstance().not_nil!.jf_NO_HIGH_SCORES
    end

    def jinit_LastFetchHighScoresFactory : self
        jfields_LastFetchHighScoresFactory()
        self
    end
end

