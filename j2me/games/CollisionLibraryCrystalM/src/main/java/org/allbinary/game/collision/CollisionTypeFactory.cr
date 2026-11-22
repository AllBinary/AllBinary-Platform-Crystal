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
# package org.allbinary.game.collision

class CollisionTypeFactory < JObject
    @j_NONE : CollisionType? = nil

    def jf_NONE : CollisionType?
        @j_NONE
    end

    def jf_NONE=(value : CollisionType?) : CollisionType?
        @j_NONE = value
    end
    @j_DAMAGE : CollisionType? = nil

    def jf_DAMAGE : CollisionType?
        @j_DAMAGE
    end

    def jf_DAMAGE=(value : CollisionType?) : CollisionType?
        @j_DAMAGE = value
    end
    @j_PICKUP : CollisionType? = nil

    def jf_PICKUP : CollisionType?
        @j_PICKUP
    end

    def jf_PICKUP=(value : CollisionType?) : CollisionType?
        @j_PICKUP = value
    end
    @j_COLLISION : CollisionType? = nil

    def jf_COLLISION : CollisionType?
        @j_COLLISION
    end

    def jf_COLLISION=(value : CollisionType?) : CollisionType?
        @j_COLLISION = value
    end

    @@jst_SINGLETON : CollisionTypeFactory? = nil

    def self.jst_SINGLETON : CollisionTypeFactory?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : CollisionTypeFactory?) : CollisionTypeFactory?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = CollisionTypeFactory.new.jinit_CollisionTypeFactory()
    end
    

    def self.getInstance : CollisionTypeFactory?
        return CollisionTypeFactory.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_CollisionTypeFactory : Nil
    @j_NONE = CollisionType.new.jinit_CollisionType("None")
    @j_DAMAGE = CollisionType.new.jinit_CollisionType("Damage")
    @j_PICKUP = CollisionType.new.jinit_CollisionType("Pickup")
    @j_COLLISION = CollisionType.new.jinit_CollisionType("Collision")
    end

    def jinit_CollisionTypeFactory : self
        jfields_CollisionTypeFactory()
        self
    end
end

