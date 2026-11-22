# Generated Code Do Not Modify
# package org.allbinary.game.collision

class Collision2DProcessor < CollisionProcessor

    def jinit_Collision2DProcessor : self
        jinit_CollisionProcessor()
        self
    end
    

    def isCollision(myLayer : AllBinaryLayer?, myLayer2 : AllBinaryLayer?) : Bool
        if myLayer2.not_nil!.getXP() >= myLayer.not_nil!.getX2() || myLayer2.not_nil!.getYP() >= myLayer.not_nil!.getY2() || myLayer2.not_nil!.getX2() <= myLayer.not_nil!.getXP() || myLayer2.not_nil!.getY2() <= myLayer.not_nil!.getYP()
            return false
        else
            return true
        end
        return false
    end
end

