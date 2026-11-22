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
# package org.allbinary.game.ag.layer.pickup.health

class HealthResources < JObject
    @j_RESOURCE : String = ""

    def jf_RESOURCE : String
        @j_RESOURCE
    end

    def jf_RESOURCE=(value : String) : String
        @j_RESOURCE = value
    end

    @@jst_SINGLETON : HealthResources? = nil

    def self.jst_SINGLETON : HealthResources?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : HealthResources?) : HealthResources?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = HealthResources.new.jinit_HealthResources()
    end
    

    def self.getInstance : HealthResources?
        return HealthResources.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_HealthResources : Nil
    @j_RESOURCE = "health_drop_20_by_20.png"
    end
    

    def jinit_HealthResources : self
        jfields_HealthResources()
        self
    end
end

