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
# package org.allbinary.game.multiplayer.layer

class MultiPlayerGameLayer < CollidableDestroyableDamageableLayer
    include MultiPlayerGameLayerInterface
    

    def jinit_MultiPlayerGameLayer(remoteInfo : RemoteInfo?, groupInterface : Array(Group?)?, name : String, layerInfo : Rectangle?, viewPosition : ViewPositionBase?) : self
        jinit_CollidableDestroyableDamageableLayer(groupInterface, name, layerInfo, viewPosition)
        self
    end
    

    def getMultiplayerBehavior : MultiplayerBehavior?
        return MultiplayerBehavior.jst_NULL_MULTIPLAYER_BEHAVIOR
    end
    

    def setPingInfo(show : Bool) : Nil
    end
    

    def setFiring(firing : Int) : Nil
        firing = firing.to_i16!
    end
    

    def getFiring : Int16
        return 0_i16
    end
end

