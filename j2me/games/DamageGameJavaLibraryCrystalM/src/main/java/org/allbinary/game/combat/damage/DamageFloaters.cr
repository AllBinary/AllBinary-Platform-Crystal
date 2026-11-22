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

class DamageFloaters < Paintable

    @@jst_SINGLETON : DamageFloaters? = nil

    def self.jst_SINGLETON : DamageFloaters?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : DamageFloaters?) : DamageFloaters?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = DamageFloaters.new.jinit_DamageFloaters()
    end
    

    def self.getInstance : DamageFloaters?
        return DamageFloaters.jst_SINGLETON
    end

    def jinit_DamageFloaters : self
        jinit_Paintable()
        self
    end
    

    def add(damage : Int) : Nil
        damage = damage.to_i32!
    end
end

