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
# package org.allbinary.game.ag.layer.weapon.mine

class MineLayer < SimpleWeaponLayer
    @viewPositionEventHandler : ViewPositionEventHandler? = nil

    def jf_viewPositionEventHandler : ViewPositionEventHandler?
        @viewPositionEventHandler
    end

    def jf_viewPositionEventHandler=(value : ViewPositionEventHandler?) : ViewPositionEventHandler?
        @viewPositionEventHandler = value
    end

    def self.jst_NAME : String
        "MineLayer"
    end

    # Java field initializers run after the super constructor
    def jfields_MineLayer : Nil
    @viewPositionEventHandler = ViewPositionEventHandler.getInstance()
    end
    

    def jinit_MineLayer(viewPosition : ViewPositionBase?) : self
        jinit_SimpleWeaponLayer(MineLayer.jst_NAME, RemoteInfo.jst_REMOTE_INFO, -1, NoMovementFactory.getInstance().not_nil!.getMovmentInstance(), JR.cast(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.get(MineWeaponResources.getInstance().not_nil!.jf_RESOURCE).not_nil!.getInstance(0), Animation), SimpleWeaponLayer.createDestroyed(), Rectangle.new.jinit_Rectangle(PointFactory.getInstance().not_nil!.jf_ZERO_ZERO, 10, 10), viewPosition)
        jfields_MineLayer()
        self
    end
    

    def initXYZ(x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        self.setPosition(x &+ 5, y &+ 5, z)
        @viewPositionEventHandler.not_nil!.addListener(JR.cast(self, AllBinaryLayer))
        SecondaryPlayerQueueFactory.getInstance().not_nil!.add(DropWeaponSound.getInstance())
    end
    

    def damage(damage : Int, damageType : Int) : Nil
        damage = damage.to_i32!
        damageType = damageType.to_i32!
        @totalDamage = self.getInitDamage() &+ 1
    end
    

    def getDamage(damageType : Int) : Int32
        damageType = damageType.to_i32!
        super(damageType)
        return self.getInitDamage()
    end
    

    def setDestroyed(destroyed : Bool) : Nil
        super(destroyed)
        if self.isDestroyed()
            @viewPositionEventHandler.not_nil!.removeListener(self)
        end
    end
end

