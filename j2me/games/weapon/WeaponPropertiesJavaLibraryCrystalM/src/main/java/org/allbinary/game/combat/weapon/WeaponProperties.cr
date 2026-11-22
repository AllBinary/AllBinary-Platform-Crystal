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
# package org.allbinary.game.combat.weapon

class WeaponProperties < SimpleWeaponProperties
    @reloadTime : Int64 = 0_i64

    def jf_reloadTime : Int64
        @reloadTime
    end

    def jf_reloadTime=(value : Int64) : Int64
        @reloadTime = value
    end
    @targetingTime : Int64 = 0_i64

    def jf_targetingTime : Int64
        @targetingTime
    end

    def jf_targetingTime=(value : Int64) : Int64
        @targetingTime = value
    end
    @speed : BasicDecimal? = nil

    def jf_speed : BasicDecimal?
        @speed
    end

    def jf_speed=(value : BasicDecimal?) : BasicDecimal?
        @speed = value
    end
    @j_MAX : Int64 = 0_i64

    def jf_MAX : Int64
        @j_MAX
    end

    def jf_MAX=(value : Int64) : Int64
        @j_MAX = value
    end
    @j_ZERO : Int16 = 0_i16

    def jf_ZERO : Int16
        @j_ZERO
    end

    def jf_ZERO=(value : Int16) : Int16
        @j_ZERO = value
    end

    @@jst_NULL_WEAPON_PROPERTIES : WeaponProperties? = nil

    def self.jst_NULL_WEAPON_PROPERTIES : WeaponProperties?
        jclinit
        @@jst_NULL_WEAPON_PROPERTIES
    end

    def self.jst_NULL_WEAPON_PROPERTIES=(value : WeaponProperties?) : WeaponProperties?
        jclinit
        @@jst_NULL_WEAPON_PROPERTIES = value
    end

    @@jst_messageSent : Bool = false

    def self.jst_messageSent : Bool
        jclinit
        @@jst_messageSent
    end

    def self.jst_messageSent=(value : Bool) : Bool
        jclinit
        @@jst_messageSent = value
    end

    def self.jst_DAMAGE : String
        "Damage: "
    end

    def self.jst_RANGE : String
        "Range: "
    end

    def self.jst_RELOAD : String
        "Reload: "
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_WEAPON_PROPERTIES = WeaponProperties.new.jinit_WeaponProperties(0_i64, 0_i64, 0_i64, 0, 0_i16)
        @@jst_messageSent = false
        
        
        
    end

    # Java field initializers run after the super constructor
    def jfields_WeaponProperties : Nil
    
    
    @speed = BasicDecimal.jst_ZERO_BIGDECIMAL
    @j_MAX = 10240_i64
    @j_ZERO = 0_i16
    end
    

    def jinit_WeaponProperties(reloadTime : Int, targetingTime : Int, speed : Int, damage : Int, dissipation : Int) : self
        reloadTime = reloadTime.to_i64!
        targetingTime = targetingTime.to_i64!
        speed = speed.to_i64!
        damage = damage.to_i32!
        dissipation = dissipation.to_i16!
        jinit_SimpleWeaponProperties()
        jfields_WeaponProperties()
        if speed < @j_MAX && speed != 0_i64 && !WeaponProperties.jst_messageSent
            j_MESSAGE : String = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: "
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(j_MESSAGE).not_nil!.appendlong(speed).not_nil!.toString(), self, commonStrings.not_nil!.jf_CONSTRUCTOR)
            WeaponProperties.jst_messageSent = true
        end
        self.setReloadTime(reloadTime)
        self.setTargetingTime(targetingTime)
        self.setDamage(damage)
        self.setDissipation(dissipation)
        self.setSpeed(BasicDecimal.new.jinit_BasicDecimal(speed))
        if dissipation != @j_ZERO
            unscaledDamage : Int64 = @speed.not_nil!.getUnscaled() &* (damage).to_i64!
            scaledDissipation : Int32 = ((dissipation).to_i32!).to_i32 &* @speed.not_nil!.getScaledFactorValue()
            value : Int64 = (unscaledDamage.tdiv((scaledDissipation).to_i64!))
            self.setRange(((value &* 9_i64)).to_i32!.tdiv(10))
        end
        self
    end
    

    def setReloadTime(reloadTime : Int) : Nil
        reloadTime = reloadTime.to_i64!
        @reloadTime = reloadTime
    end
    

    def getReloadTime : Int64
        return @reloadTime
    end
    

    def setTargetingTime(targetingTime : Int) : Nil
        targetingTime = targetingTime.to_i64!
        @targetingTime = targetingTime
    end
    

    def getTargetingTime : Int64
        return @targetingTime
    end
    

    def getSpeed : BasicDecimal?
        return @speed
    end
    

    def setSpeed(speed : BasicDecimal?) : Nil
        @speed = speed
    end
    

    def getDamageI(range : Int) : Int32
        range = range.to_i32!
        return self.getDamage() &- ((((self.getDissipation()).to_i32!).to_i32 &* range).tdiv(@speed.not_nil!.getScaled()))
    end
    

    def toStringArray : Array(String)?
        index : Int32 = 0
        stringArray : Array(String)? = Array(String).new(3, "")
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringArray.not_nil![((index &+= 1) &- 1)] = stringBuffer.not_nil!.append(WeaponProperties.jst_DAMAGE).not_nil!.appendint(self.getDamage()).not_nil!.toString()
        stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
        stringArray.not_nil![((index &+= 1) &- 1)] = stringBuffer.not_nil!.append(WeaponProperties.jst_RANGE).not_nil!.appendint(self.getRange()).not_nil!.toString()
        stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
        stringArray.not_nil![((index &+= 1) &- 1)] = stringBuffer.not_nil!.append(WeaponProperties.jst_RELOAD).not_nil!.appendlong(self.getReloadTime()).not_nil!.toString()
        return stringArray
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(WeaponProperties.jst_DAMAGE).not_nil!.appendint(self.getDamage())
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(WeaponProperties.jst_RANGE).not_nil!.appendint(self.getRange())
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(WeaponProperties.jst_RELOAD).not_nil!.appendlong(self.getReloadTime())
        return stringBuffer.not_nil!.toString()
    end
end

