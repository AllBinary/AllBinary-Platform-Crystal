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

class RemoteErrorHighScoresSingletonFactory < JObject

    @@jst_SINGLETON : HighScores? = nil

    def self.jst_SINGLETON : HighScores?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : HighScores?) : HighScores?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = HighScores.new.jinit_HighScores(CommonStrings.getInstance().not_nil!.jf_LOADING, "Remote High Scores Did Not Load", CommonStrings.getInstance().not_nil!.jf_PERIODS)
    end
    

    def self.getInstance : HighScores?
        return RemoteErrorHighScoresSingletonFactory.jst_SINGLETON
    end

    def jinit_RemoteErrorHighScoresSingletonFactory : self
        self
    end
end

