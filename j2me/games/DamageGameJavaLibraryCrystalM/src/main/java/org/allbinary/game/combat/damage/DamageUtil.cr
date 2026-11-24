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

class DamageUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_COLLIDE : String = ""

    def jf_COLLIDE : String
        @j_COLLIDE
    end

    def jf_COLLIDE=(value : String) : String
        @j_COLLIDE = value
    end

    @@jst_instance : DamageUtil? = nil

    def self.jst_instance : DamageUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DamageUtil?) : DamageUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DamageUtil.new.jinit_DamageUtil()
    end
    

    def self.getInstance : DamageUtil?
        return DamageUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_DamageUtil : Nil
    @logUtil = LogUtil.getInstance()
    @j_COLLIDE = "collide"
    end
    

    def jinit_DamageUtil : self
        jfields_DamageUtil()
        self
    end
    

    def process(damageableInterface : DamageableInterface?, damageableInterface2 : DamageableInterface?) : Nil
        damageableInterface.not_nil!.damage((damageableInterface2.not_nil!.getDamage(0)).as(Int32), 0)
    end
    

    def debugDamage(collidableInterfaceCompositeInterface1 : CollidableCompositeLayer?, collidableInterfaceCompositeInterface : CollidableCompositeLayer?) : Nil
        collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer? = JR.cast(collidableInterfaceCompositeInterface, CollidableDestroyableDamageableLayer)
        damage : Int32 = collidableDestroyableDamageableLayer.not_nil!.getDamage(0)
        if damage > 20000
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append("Collision ")
            stringBuffer.not_nil!.append(collidableInterfaceCompositeInterface1.not_nil!.toString())
            stringBuffer.not_nil!.append(" with: ")
            stringBuffer.not_nil!.append(collidableInterfaceCompositeInterface.not_nil!.toString())
            stringBuffer.not_nil!.append(" damage: ")
            stringBuffer.not_nil!.appendint(damage)
            @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), collidableInterfaceCompositeInterface1, @j_COLLIDE)
        end
    end
end

