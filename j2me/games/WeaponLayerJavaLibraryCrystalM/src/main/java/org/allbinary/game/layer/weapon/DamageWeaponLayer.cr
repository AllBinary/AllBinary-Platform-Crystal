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

class DamageWeaponLayer < WeaponLayer
    

    def jinit_DamageWeaponLayer(name : String, remoteInfo : RemoteInfo?, movement : Movement?, animationInterface : Animation?, destroyedAnimationInterface : Animation?, rectangle : Rectangle?, viewPosition : ViewPositionBase?, username : String, actorSessionId : Int, id : Int, multiPlayerType : Int) : self
        actorSessionId = actorSessionId.to_i32!
        id = id.to_i32!
        multiPlayerType = multiPlayerType.to_i32!
        jinit_WeaponLayer(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        self.setCollidableInferface(CollidableDamageWeaponBehavior.new.jinit_CollidableDamageWeaponBehavior(true))
        self
    end
end

