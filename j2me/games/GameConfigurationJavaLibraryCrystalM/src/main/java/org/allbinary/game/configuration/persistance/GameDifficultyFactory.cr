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
# package org.allbinary.game.configuration.persistance

class GameDifficultyFactory < JObject
    @level : Int32 = 0

    def jf_level : Int32
        @level
    end

    def jf_level=(value : Int32) : Int32
        @level = value
    end

    @@jst_instance : GameDifficultyFactory? = nil

    def self.jst_instance : GameDifficultyFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameDifficultyFactory?) : GameDifficultyFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameDifficultyFactory.new.jinit_GameDifficultyFactory()
    end
    

    def self.getInstance : GameDifficultyFactory?
        return GameDifficultyFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameDifficultyFactory : Nil
    @level = 0
    end

    def jinit_GameDifficultyFactory : self
        jfields_GameDifficultyFactory()
        self
    end
    

    def setLevel(level : Int) : Nil
        level = level.to_i32!
        @level = level
    end
    

    def getLevel : Int32
        return @level
    end
end

