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
# package org.allbinary.game.combat.damage

class ExplosionResources < JObject
    @j_EXPLOSION_90_RESOURCE : String = ""

    def jf_EXPLOSION_90_RESOURCE : String
        @j_EXPLOSION_90_RESOURCE
    end

    def jf_EXPLOSION_90_RESOURCE=(value : String) : String
        @j_EXPLOSION_90_RESOURCE = value
    end
    @j_EXPLOSION_60_RESOURCE : String = ""

    def jf_EXPLOSION_60_RESOURCE : String
        @j_EXPLOSION_60_RESOURCE
    end

    def jf_EXPLOSION_60_RESOURCE=(value : String) : String
        @j_EXPLOSION_60_RESOURCE = value
    end
    @j_HALF_EXPLOSION_RESOURCE : String = ""

    def jf_HALF_EXPLOSION_RESOURCE : String
        @j_HALF_EXPLOSION_RESOURCE
    end

    def jf_HALF_EXPLOSION_RESOURCE=(value : String) : String
        @j_HALF_EXPLOSION_RESOURCE = value
    end
    @j_THIRD_EXPLOSION_RESOURCE : String = ""

    def jf_THIRD_EXPLOSION_RESOURCE : String
        @j_THIRD_EXPLOSION_RESOURCE
    end

    def jf_THIRD_EXPLOSION_RESOURCE=(value : String) : String
        @j_THIRD_EXPLOSION_RESOURCE = value
    end

    @@jst_instance : ExplosionResources? = nil

    def self.jst_instance : ExplosionResources?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ExplosionResources?) : ExplosionResources?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ExplosionResources.new.jinit_ExplosionResources()
    end
    

    def self.getInstance : ExplosionResources?
        return ExplosionResources.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ExplosionResources : Nil
    @j_EXPLOSION_90_RESOURCE = "/explosion_sprite_90_by_90.png"
    @j_EXPLOSION_60_RESOURCE = "/explosion_sprite_60_by_60.png"
    @j_HALF_EXPLOSION_RESOURCE = "/explosion_sprite_30_by_30.png"
    @j_THIRD_EXPLOSION_RESOURCE = "/explosion_sprite_15_by_15.png"
    end
    

    def jinit_ExplosionResources : self
        jfields_ExplosionResources()
        self
    end
end

