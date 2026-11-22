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
# package org.allbinary.game.health

class Health < JObject
    include HealthInterface
    @health : Int32 = 0

    def jf_health : Int32
        @health
    end

    def jf_health=(value : Int32) : Int32
        @health = value
    end
    @maxHealth : Int32 = 0

    def jf_maxHealth : Int32
        @maxHealth
    end

    def jf_maxHealth=(value : Int32) : Int32
        @maxHealth = value
    end
    @healthListenerInterface : HealthListenerInterface? = nil

    def jf_healthListenerInterface : HealthListenerInterface?
        @healthListenerInterface
    end

    def jf_healthListenerInterface=(value : HealthListenerInterface?) : HealthListenerInterface?
        @healthListenerInterface = value
    end

    @@jst_NULL_HEALTH : Health? = nil

    def self.jst_NULL_HEALTH : Health?
        jclinit
        @@jst_NULL_HEALTH
    end

    def self.jst_NULL_HEALTH=(value : Health?) : Health?
        jclinit
        @@jst_NULL_HEALTH = value
    end

    def self.jst_NAME : String
        "Health Resource"
    end

    def self.jst_HEALTH_LABEL : String
        "Health: "
    end

    def self.jst_MAX_HEALTH_LABEL : String
        " Max: "
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_HEALTH = Health.new.jinit_Health(0)
        
        
        
    end

    # Java field initializers run after the super constructor
    def jfields_Health : Nil
    
    
    @healthListenerInterface = NullHealthListener.jst_NULL_HEALTH_LISTENER
    end
    

    def jinit_Health(maxHealth : Int) : self
        maxHealth = maxHealth.to_i32!
        jfields_Health()
        self.setMaxHealth(maxHealth)
        self.setHealth(maxHealth)
        self
    end
    

    def heal(ahealth : Int) : Nil
        ahealth = ahealth.to_i32!
        newHealth : Int32 = self.getHealth() &+ ahealth
        if newHealth > self.getMaxHealth()
            self.setHealth(self.getMaxHealth())
        else
            self.setHealth(newHealth)
        end
    end
    

    def healMax : Nil
        self.setHealth(self.getMaxHealth())
    end
    

    def isDamaged : Bool
        if self.getHealth() != self.getMaxHealth()
            return true
        else
            return false
        end
        return false
    end
    

    def damage(ahealth : Int) : Nil
        ahealth = ahealth.to_i32!
        if ahealth < 0
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append("******* Trying to heal when damaging. Damage: ")
            stringBuffer.not_nil!.appendint(ahealth)
            stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
            stringBuffer.not_nil!.append(self.toString())
            ForcedLogUtil.log(stringBuffer.not_nil!.toString(), self)
            return
        end
        health : Int32 = self.getHealth() &- ahealth
        self.setHealth(health)
    end
    

    def isAlive : Bool
        if self.getHealth() <= 0
            return false
        else
            return true
        end
        return false
    end
    

    def getMaxHealth : Int32
        return @maxHealth
    end
    

    def setMaxHealth(maxHealth : Int) : Nil
        maxHealth = maxHealth.to_i32!
        @maxHealth = maxHealth
    end
    

    def setHealth(health : Int) : Nil
        health = health.to_i32!
        if health > self.getMaxHealth()
            @health = self.getMaxHealth()
        elsif health < 0
            @health = 0
        else
            @health = health
        end
        if !(@healthListenerInterface).nil?
            @healthListenerInterface.not_nil!.onHealthChange()
        end
    end
    

    def getHealth : Int32
        return @health
    end
    

    def addListener(healthGraphic : HealthListenerInterface?) : Nil
        @healthListenerInterface = healthGraphic
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(Health.jst_HEALTH_LABEL)
        stringBuffer.not_nil!.appendint(@health)
        stringBuffer.not_nil!.append(Health.jst_MAX_HEALTH_LABEL)
        stringBuffer.not_nil!.appendint(@maxHealth)
        return stringBuffer.not_nil!.toString()
    end
end

