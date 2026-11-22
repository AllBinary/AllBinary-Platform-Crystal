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
# package org.allbinary.game.configuration

class GameConfigurationSingleton < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @hashtable : ABHashtable? = nil

    def jf_hashtable : ABHashtable?
        @hashtable
    end

    def jf_hashtable=(value : ABHashtable?) : ABHashtable?
        @hashtable = value
    end

    @@jst_SINGLETON : GameConfigurationSingleton? = nil

    def self.jst_SINGLETON : GameConfigurationSingleton?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : GameConfigurationSingleton?) : GameConfigurationSingleton?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = GameConfigurationSingleton.new.jinit_GameConfigurationSingleton()
    end
    

    def self.getInstance : GameConfigurationSingleton?
        return GameConfigurationSingleton.jst_SINGLETON
    end
    

    def jinit_GameConfigurationSingleton : self
        @list = BasicArrayListD.new.jinit_BasicArrayListD()
        @hashtable = StdUtil.getInstance().not_nil!.createHashtable()
        self
    end
    

    def getInstanceByName(name : String) : GameConfiguration?
        return JR.cast(@hashtable.not_nil!.get(name), GameConfiguration)
    end
    

    def getOptionsBasicArrayList : BasicArrayList?
        return @list
    end
    

    def add(gameConfiguration : GameConfiguration?) : Nil
        @list.not_nil!.add(gameConfiguration)
    end
    

    def getHashtable : ABHashtable?
        return @hashtable
    end
end

