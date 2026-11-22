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

class Feature < JObject
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end

    @@jst_hashtable : ABHashtable? = nil

    def self.jst_hashtable : ABHashtable?
        jclinit
        @@jst_hashtable
    end

    def self.jst_hashtable=(value : ABHashtable?) : ABHashtable?
        jclinit
        @@jst_hashtable = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_hashtable = StdUtil.getInstance().not_nil!.createHashtable()
    end
    

    def self.getInstance(name : String) : Feature?
        return JR.cast(Feature.jst_hashtable.not_nil!.get(name), Feature)
    end
    

    def self.add(name : String, gameFeature : Feature?) : Nil
        Feature.jst_hashtable.not_nil!.put(name, gameFeature)
    end
    

    def jinit_Feature(name : String) : self
        @name = name
        Feature.add(name, self)
        ChangedGameFeatureListener.getInstance().not_nil!.add(self)
        self
    end
    

    def toString : String
        return self.getName()
    end
    

    def getName : String
        return @name
    end
end

