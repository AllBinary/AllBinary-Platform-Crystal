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

class SimpleWeaponProperties < JObject
    @damage : Int32 = 0

    def jf_damage : Int32
        @damage
    end

    def jf_damage=(value : Int32) : Int32
        @damage = value
    end
    @dissipation : Int16 = 0_i16

    def jf_dissipation : Int16
        @dissipation
    end

    def jf_dissipation=(value : Int16) : Int16
        @dissipation = value
    end
    @range : Int32 = 0

    def jf_range : Int32
        @range
    end

    def jf_range=(value : Int32) : Int32
        @range = value
    end

    def jinit_SimpleWeaponProperties : self
        self
    end
    

    def set(simpleWeaponProperties : SimpleWeaponProperties?) : Nil
        self.setDamage(simpleWeaponProperties.not_nil!.getDamage())
        self.setDissipation(simpleWeaponProperties.not_nil!.getDissipation())
        self.setRange(simpleWeaponProperties.not_nil!.getRange())
    end
    

    def setDamage(damage : Int) : Nil
        damage = damage.to_i32!
        @damage = damage
    end
    

    def getDamage : Int32
        return @damage
    end
    

    def setDissipation(dissipation : Int) : Nil
        dissipation = dissipation.to_i16!
        @dissipation = dissipation
    end
    

    def getDissipation : Int16
        return @dissipation
    end
    

    def getRange : Int32
        return @range
    end
    

    def setRange(range : Int) : Nil
        range = range.to_i32!
        @range = range
    end
end

