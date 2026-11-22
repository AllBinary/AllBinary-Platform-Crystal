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

class MainFeatureFactory < JObject
    @j_FULL_SCREEN : Feature? = nil

    def jf_FULL_SCREEN : Feature?
        @j_FULL_SCREEN
    end

    def jf_FULL_SCREEN=(value : Feature?) : Feature?
        @j_FULL_SCREEN = value
    end
    @j_TITLE_BAR : Feature? = nil

    def jf_TITLE_BAR : Feature?
        @j_TITLE_BAR
    end

    def jf_TITLE_BAR=(value : Feature?) : Feature?
        @j_TITLE_BAR = value
    end
    @j_STATIC : Feature? = nil

    def jf_STATIC : Feature?
        @j_STATIC
    end

    def jf_STATIC=(value : Feature?) : Feature?
        @j_STATIC = value
    end
    @j_LOAD_ONDEMAND : Feature? = nil

    def jf_LOAD_ONDEMAND : Feature?
        @j_LOAD_ONDEMAND
    end

    def jf_LOAD_ONDEMAND=(value : Feature?) : Feature?
        @j_LOAD_ONDEMAND = value
    end
    @j_LOAD_ALL : Feature? = nil

    def jf_LOAD_ALL : Feature?
        @j_LOAD_ALL
    end

    def jf_LOAD_ALL=(value : Feature?) : Feature?
        @j_LOAD_ALL = value
    end

    @@jst_instance : MainFeatureFactory? = nil

    def self.jst_instance : MainFeatureFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : MainFeatureFactory?) : MainFeatureFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = MainFeatureFactory.new.jinit_MainFeatureFactory()
    end
    

    def self.getInstance : MainFeatureFactory?
        return MainFeatureFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_MainFeatureFactory : Nil
    @j_FULL_SCREEN = Feature.new.jinit_Feature("Full Screen")
    @j_TITLE_BAR = Feature.new.jinit_Feature("Title Bar")
    @j_STATIC = Feature.new.jinit_Feature("Static Dependent Feature")
    @j_LOAD_ONDEMAND = Feature.new.jinit_Feature("Load OnDemand")
    @j_LOAD_ALL = Feature.new.jinit_Feature("Load All")
    end

    def jinit_MainFeatureFactory : self
        jfields_MainFeatureFactory()
        self
    end
end

