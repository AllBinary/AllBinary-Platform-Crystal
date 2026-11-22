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
# package org.allbinary.game.configuration.feature

class GameFeatureChoiceGroups < JObject
    @hashtable : ABHashtable? = nil

    def jf_hashtable : ABHashtable?
        @hashtable
    end

    def jf_hashtable=(value : ABHashtable?) : ABHashtable?
        @hashtable = value
    end

    @@jst_gameFeatureChoiceGroupsExclusive : GameFeatureChoiceGroups? = nil

    def self.jst_gameFeatureChoiceGroupsExclusive : GameFeatureChoiceGroups?
        jclinit
        @@jst_gameFeatureChoiceGroupsExclusive
    end

    def self.jst_gameFeatureChoiceGroupsExclusive=(value : GameFeatureChoiceGroups?) : GameFeatureChoiceGroups?
        jclinit
        @@jst_gameFeatureChoiceGroupsExclusive = value
    end

    @@jst_gameFeatureChoiceGroupsMultiple : GameFeatureChoiceGroups? = nil

    def self.jst_gameFeatureChoiceGroupsMultiple : GameFeatureChoiceGroups?
        jclinit
        @@jst_gameFeatureChoiceGroupsMultiple
    end

    def self.jst_gameFeatureChoiceGroupsMultiple=(value : GameFeatureChoiceGroups?) : GameFeatureChoiceGroups?
        jclinit
        @@jst_gameFeatureChoiceGroupsMultiple = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_gameFeatureChoiceGroupsExclusive = GameFeatureChoiceGroups.new.jinit_GameFeatureChoiceGroups()
        @@jst_gameFeatureChoiceGroupsMultiple = GameFeatureChoiceGroups.new.jinit_GameFeatureChoiceGroups()
    end
    

    def self.getExclusiveInstance : GameFeatureChoiceGroups?
        return GameFeatureChoiceGroups.jst_gameFeatureChoiceGroupsExclusive
    end
    

    def self.getMultipleInstance : GameFeatureChoiceGroups?
        return GameFeatureChoiceGroups.jst_gameFeatureChoiceGroupsMultiple
    end

    # Java field initializers run after the super constructor
    def jfields_GameFeatureChoiceGroups : Nil
    @hashtable = StdUtil.getInstance().not_nil!.createHashtable()
    end
    

    def jinit_GameFeatureChoiceGroups : self
        jfields_GameFeatureChoiceGroups()
        self
    end
    

    def get : ABHashtable?
        return @hashtable
    end
    

    def add(name : String, list : BasicArrayList?) : Nil
        @hashtable.not_nil!.put(name, list)
    end
end

