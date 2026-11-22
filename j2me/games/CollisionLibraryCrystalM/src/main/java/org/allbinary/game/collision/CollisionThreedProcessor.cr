# Generated Code Do Not Modify
# package org.allbinary.game.collision

class CollisionThreedProcessor < CollisionProcessor

    def jinit_CollisionThreedProcessor : self
        jinit_CollisionProcessor()
        self
    end
    

    def isCollision(myLayer : AllBinaryLayer?, myLayer2 : AllBinaryLayer?) : Bool
        if myLayer2.not_nil!.getXP() >= myLayer.not_nil!.getX2() || myLayer2.not_nil!.getYP() >= myLayer.not_nil!.getY2() || myLayer2.not_nil!.getX2() <= myLayer.not_nil!.getXP() || myLayer2.not_nil!.getY2() <= myLayer.not_nil!.getYP() || myLayer2.not_nil!.getZP() < myLayer.not_nil!.getZ2() || myLayer2.not_nil!.getZ2() > myLayer.not_nil!.getZP()
            return false
        else
            return true
        end
        return false
    end
end

