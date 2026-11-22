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

class DamageableBaseBehavior < JObject
    include DamageableInterface

    @@jst_instance : DamageableBaseBehavior? = nil

    def self.jst_instance : DamageableBaseBehavior?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DamageableBaseBehavior?) : DamageableBaseBehavior?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DamageableBaseBehavior.new.jinit_DamageableBaseBehavior()
    end
    

    def self.getInstance : DamageableBaseBehavior?
        return DamageableBaseBehavior.jst_instance
    end

    def jinit_DamageableBaseBehavior : self
        self
    end
    

    def getName : String
        return JR.jclass(self)
    end
    

    def damage(damage : Int, damageType : Int) : Nil
        damage = damage.to_i32!
        damageType = damageType.to_i32!
    end
    

    def getDamage(damageType : Int) : Int32
        damageType = damageType.to_i32!
        return 6000
    end
end

