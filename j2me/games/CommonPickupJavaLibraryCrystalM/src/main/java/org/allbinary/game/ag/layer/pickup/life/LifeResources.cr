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
# package org.allbinary.game.ag.layer.pickup.life

class LifeResources < JObject
    @j_RESOURCE : String = ""

    def jf_RESOURCE : String
        @j_RESOURCE
    end

    def jf_RESOURCE=(value : String) : String
        @j_RESOURCE = value
    end

    @@jst_SINGLETON : LifeResources? = nil

    def self.jst_SINGLETON : LifeResources?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : LifeResources?) : LifeResources?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = LifeResources.new.jinit_LifeResources()
    end
    

    def self.getInstance : LifeResources?
        return LifeResources.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_LifeResources : Nil
    @j_RESOURCE = "life_drop_20_by_20.png"
    end
    

    def jinit_LifeResources : self
        jfields_LifeResources()
        self
    end
end

