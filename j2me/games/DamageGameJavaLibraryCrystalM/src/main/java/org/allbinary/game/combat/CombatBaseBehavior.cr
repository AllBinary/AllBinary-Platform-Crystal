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
# package org.allbinary.game.combat

class CombatBaseBehavior < JObject
    @damageableBaseBehavior : DamageableBaseBehavior? = nil

    def jf_damageableBaseBehavior : DamageableBaseBehavior?
        @damageableBaseBehavior
    end

    def jf_damageableBaseBehavior=(value : DamageableBaseBehavior?) : DamageableBaseBehavior?
        @damageableBaseBehavior = value
    end
    @destroyableBaseBehavior : DestroyableBaseBehavior? = nil

    def jf_destroyableBaseBehavior : DestroyableBaseBehavior?
        @destroyableBaseBehavior
    end

    def jf_destroyableBaseBehavior=(value : DestroyableBaseBehavior?) : DestroyableBaseBehavior?
        @destroyableBaseBehavior = value
    end
    @readyForExplosion : Bool = false

    def jf_readyForExplosion : Bool
        @readyForExplosion
    end

    def jf_readyForExplosion=(value : Bool) : Bool
        @readyForExplosion = value
    end

    @@jst_NULL_COMBAT_BEHAVIOR : CombatBaseBehavior? = nil

    def self.jst_NULL_COMBAT_BEHAVIOR : CombatBaseBehavior?
        jclinit
        @@jst_NULL_COMBAT_BEHAVIOR
    end

    def self.jst_NULL_COMBAT_BEHAVIOR=(value : CombatBaseBehavior?) : CombatBaseBehavior?
        jclinit
        @@jst_NULL_COMBAT_BEHAVIOR = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_COMBAT_BEHAVIOR = CombatBaseBehavior.new.jinit_CombatBaseBehavior(DamageableBaseBehavior.getInstance(), DestroyableBaseBehavior.getInstance())
    end
    

    def jinit_CombatBaseBehavior(damageableBaseBehavior : DamageableBaseBehavior?, destroyableBaseBehavior : DestroyableBaseBehavior?) : self
        @damageableBaseBehavior = damageableBaseBehavior
        @destroyableBaseBehavior = destroyableBaseBehavior
        self
    end
    

    def getDamageableBaseBehavior : DamageableBaseBehavior?
        return @damageableBaseBehavior
    end
    

    def getDestroyableBaseBehavior : DestroyableBaseBehavior?
        return @destroyableBaseBehavior
    end
    

    def isReadyForExplosion : Bool
        return @readyForExplosion
    end
    

    def setReadyForExplosion(readyForExplosion : Bool) : Nil
        @readyForExplosion = readyForExplosion
    end
end

