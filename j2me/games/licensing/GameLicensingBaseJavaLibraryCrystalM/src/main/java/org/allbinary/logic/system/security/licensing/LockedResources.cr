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
# package org.allbinary.logic.system.security.licensing

class LockedResources < JObject
    @j_LOCKED_DEMO_GAME_FEATURE_RESOURCE : String = ""

    def jf_LOCKED_DEMO_GAME_FEATURE_RESOURCE : String
        @j_LOCKED_DEMO_GAME_FEATURE_RESOURCE
    end

    def jf_LOCKED_DEMO_GAME_FEATURE_RESOURCE=(value : String) : String
        @j_LOCKED_DEMO_GAME_FEATURE_RESOURCE = value
    end

    @@jst_instance : LockedResources? = nil

    def self.jst_instance : LockedResources?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LockedResources?) : LockedResources?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LockedResources.new.jinit_LockedResources()
    end
    

    def self.getInstance : LockedResources?
        return LockedResources.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LockedResources : Nil
    @j_LOCKED_DEMO_GAME_FEATURE_RESOURCE = "/locked_demo_game_feature_64_by_64.png"
    end

    def jinit_LockedResources : self
        jfields_LockedResources()
        self
    end
end

