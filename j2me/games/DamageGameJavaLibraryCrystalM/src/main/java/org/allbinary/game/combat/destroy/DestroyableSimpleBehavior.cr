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
# package org.allbinary.game.combat.destroy

class DestroyableSimpleBehavior < DestroyableBaseBehavior
    @ownerLayer : CollidableCompositeLayer? = nil

    def jf_ownerLayer : CollidableCompositeLayer?
        @ownerLayer
    end

    def jf_ownerLayer=(value : CollidableCompositeLayer?) : CollidableCompositeLayer?
        @ownerLayer = value
    end
    @destroyed : Bool = false

    def jf_destroyed : Bool
        @destroyed
    end

    def jf_destroyed=(value : Bool) : Bool
        @destroyed = value
    end

    # Java field initializers run after the super constructor
    def jfields_DestroyableSimpleBehavior : Nil
    
    @destroyed = false
    end
    

    def jinit_DestroyableSimpleBehavior(ownerLayer : CollidableCompositeLayer?) : self
        jinit_DestroyableBaseBehavior()
        jfields_DestroyableSimpleBehavior()
        @ownerLayer = ownerLayer
        self
    end
    

    def isDestroyed : Bool
        return @destroyed
    end
    

    def setDestroyed(destroyed : Bool) : Nil
        @destroyed = destroyed
        if self.isDestroyed()
            DestroyedLayerProcessor.getInstance().not_nil!.add(@ownerLayer)
        end
    end
end

