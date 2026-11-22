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
# package org.allbinary.game.collision

class LayerCollisionUtil < JObject
    @collisionProcessor : CollisionProcessor? = nil

    def jf_collisionProcessor : CollisionProcessor?
        @collisionProcessor
    end

    def jf_collisionProcessor=(value : CollisionProcessor?) : CollisionProcessor?
        @collisionProcessor = value
    end

    @@jst_instance : LayerCollisionUtil? = nil

    def self.jst_instance : LayerCollisionUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LayerCollisionUtil?) : LayerCollisionUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LayerCollisionUtil.new.jinit_LayerCollisionUtil()
    end
    

    def self.getInstance : LayerCollisionUtil?
        return LayerCollisionUtil.jst_instance
    end
    

    def jinit_LayerCollisionUtil : self
        features : Features? = Features.getInstance()
        gameFeatureFactory : GameFeatureFactory? = GameFeatureFactory.getInstance()
        if OpenGLFeatureUtil.getInstance().not_nil!.isAnyThreed() && !features.not_nil!.isFeature(gameFeatureFactory.not_nil!.jf_COLLISIONS_FORCED_TWO_DIMENSIONAL)
            @collisionProcessor = CollisionThreedProcessor.new.jinit_CollisionThreedProcessor()
        else
            @collisionProcessor = Collision2DProcessor.new.jinit_Collision2DProcessor()
        end
        self
    end
    

    def isCollision(myLayer : AllBinaryLayer?, myLayer2 : AllBinaryLayer?) : Bool
        return @collisionProcessor.not_nil!.isCollision(myLayer, myLayer2)
    end
end

