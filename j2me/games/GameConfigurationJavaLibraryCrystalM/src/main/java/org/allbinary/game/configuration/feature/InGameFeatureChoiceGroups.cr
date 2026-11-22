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

class InGameFeatureChoiceGroups < JObject
    @hashtable : ABHashtable? = nil

    def jf_hashtable : ABHashtable?
        @hashtable
    end

    def jf_hashtable=(value : ABHashtable?) : ABHashtable?
        @hashtable = value
    end

    @@jst_gameFeatureChoiceGroupsExclusive : InGameFeatureChoiceGroups? = nil

    def self.jst_gameFeatureChoiceGroupsExclusive : InGameFeatureChoiceGroups?
        jclinit
        @@jst_gameFeatureChoiceGroupsExclusive
    end

    def self.jst_gameFeatureChoiceGroupsExclusive=(value : InGameFeatureChoiceGroups?) : InGameFeatureChoiceGroups?
        jclinit
        @@jst_gameFeatureChoiceGroupsExclusive = value
    end

    @@jst_gameFeatureChoiceGroupsMultiple : InGameFeatureChoiceGroups? = nil

    def self.jst_gameFeatureChoiceGroupsMultiple : InGameFeatureChoiceGroups?
        jclinit
        @@jst_gameFeatureChoiceGroupsMultiple
    end

    def self.jst_gameFeatureChoiceGroupsMultiple=(value : InGameFeatureChoiceGroups?) : InGameFeatureChoiceGroups?
        jclinit
        @@jst_gameFeatureChoiceGroupsMultiple = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_gameFeatureChoiceGroupsExclusive = InGameFeatureChoiceGroups.new.jinit_InGameFeatureChoiceGroups()
        @@jst_gameFeatureChoiceGroupsMultiple = InGameFeatureChoiceGroups.new.jinit_InGameFeatureChoiceGroups()
    end
    

    def self.getExclusiveInstance : InGameFeatureChoiceGroups?
        return InGameFeatureChoiceGroups.jst_gameFeatureChoiceGroupsExclusive
    end
    

    def self.getMultipleInstance : InGameFeatureChoiceGroups?
        return InGameFeatureChoiceGroups.jst_gameFeatureChoiceGroupsMultiple
    end

    # Java field initializers run after the super constructor
    def jfields_InGameFeatureChoiceGroups : Nil
    @hashtable = StdUtil.getInstance().not_nil!.createHashtable()
    end
    

    def jinit_InGameFeatureChoiceGroups : self
        jfields_InGameFeatureChoiceGroups()
        self
    end
    

    def get : ABHashtable?
        return @hashtable
    end
    

    def add(name : String, list : BasicArrayList?) : Nil
        @hashtable.not_nil!.put(name, list)
    end
end

