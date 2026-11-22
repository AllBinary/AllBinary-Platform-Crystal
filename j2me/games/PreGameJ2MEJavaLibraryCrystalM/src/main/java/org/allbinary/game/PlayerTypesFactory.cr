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
# package org.allbinary.game

class PlayerTypesFactory < JObject
    @j_PLAYER_TYPE_ONE : PlayerType? = nil

    def jf_PLAYER_TYPE_ONE : PlayerType?
        @j_PLAYER_TYPE_ONE
    end

    def jf_PLAYER_TYPE_ONE=(value : PlayerType?) : PlayerType?
        @j_PLAYER_TYPE_ONE = value
    end
    @j_PLAYER_TYPE_TWO : PlayerType? = nil

    def jf_PLAYER_TYPE_TWO : PlayerType?
        @j_PLAYER_TYPE_TWO
    end

    def jf_PLAYER_TYPE_TWO=(value : PlayerType?) : PlayerType?
        @j_PLAYER_TYPE_TWO = value
    end
    @j_PLAYER_TYPE_THREE : PlayerType? = nil

    def jf_PLAYER_TYPE_THREE : PlayerType?
        @j_PLAYER_TYPE_THREE
    end

    def jf_PLAYER_TYPE_THREE=(value : PlayerType?) : PlayerType?
        @j_PLAYER_TYPE_THREE = value
    end

    @@jst_SINGLETON : PlayerTypesFactory? = nil

    def self.jst_SINGLETON : PlayerTypesFactory?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : PlayerTypesFactory?) : PlayerTypesFactory?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = PlayerTypesFactory.new.jinit_PlayerTypesFactory()
    end
    

    def self.getInstance : PlayerTypesFactory?
        return PlayerTypesFactory.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_PlayerTypesFactory : Nil
    @j_PLAYER_TYPE_ONE = PlayerType.new.jinit_PlayerType("Player Type One", 0)
    @j_PLAYER_TYPE_TWO = PlayerType.new.jinit_PlayerType("Player Type Two", 1)
    @j_PLAYER_TYPE_THREE = PlayerType.new.jinit_PlayerType("Player Type Three", 2)
    end

    def jinit_PlayerTypesFactory : self
        jfields_PlayerTypesFactory()
        self
    end
end

