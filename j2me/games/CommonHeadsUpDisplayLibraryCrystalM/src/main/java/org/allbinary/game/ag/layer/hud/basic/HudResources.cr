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
# package org.allbinary.game.ag.layer.hud.basic

class HudResources < JObject
    @j_RESOURCE_LIFE : String = ""

    def jf_RESOURCE_LIFE : String
        @j_RESOURCE_LIFE
    end

    def jf_RESOURCE_LIFE=(value : String) : String
        @j_RESOURCE_LIFE = value
    end
    @j_RESOURCE_HEALTH : String = ""

    def jf_RESOURCE_HEALTH : String
        @j_RESOURCE_HEALTH
    end

    def jf_RESOURCE_HEALTH=(value : String) : String
        @j_RESOURCE_HEALTH = value
    end

    @@jst_instance : HudResources? = nil

    def self.jst_instance : HudResources?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : HudResources?) : HudResources?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = HudResources.new.jinit_HudResources()
    end
    

    def self.getInstance : HudResources?
        return HudResources.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_HudResources : Nil
    @j_RESOURCE_LIFE = "/hud_life_10_by_10.png"
    @j_RESOURCE_HEALTH = "/hud_health_10_by_10.png"
    end
    

    def jinit_HudResources : self
        jfields_HudResources()
        self
    end
end

