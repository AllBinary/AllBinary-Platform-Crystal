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
# package org.allbinary.game.layer.weapon

class SimpleWeaponLayer < WeaponLayer
    

    def self.createDestroyed : Animation?
        return JR.cast(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.getProcedural(ExplosionResources.getInstance().not_nil!.jf_THIRD_EXPLOSION_RESOURCE).not_nil!.getInstanceAnimation(NullIndexedAnimationFactory.getFactoryInstance().not_nil!.getInstance(0)), Animation)
    end
    

    def jinit_SimpleWeaponLayer(name : String, remoteInfo : RemoteInfo?, multiPlayerType : Int, movement : Movement?, animationInterface : Animation?, destroyedAnimationInterface : Animation?, rectangle : Rectangle?, viewPosition : ViewPositionBase?) : self
        multiPlayerType = multiPlayerType.to_i32!
        jinit_WeaponLayer(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        self.setCollidableInferface(CollidableWeaponBehavior.new.jinit_CollidableWeaponBehavior(true))
        self
    end
end

