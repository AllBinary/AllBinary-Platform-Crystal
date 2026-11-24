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
# package org.allbinary.game.collision.layer

class AllBinaryCollisionManager < JObject

    @@jst_allBinaryCollisionManager : AllBinaryCollisionManager? = nil

    def self.jst_allBinaryCollisionManager : AllBinaryCollisionManager?
        jclinit
        @@jst_allBinaryCollisionManager
    end

    def self.jst_allBinaryCollisionManager=(value : AllBinaryCollisionManager?) : AllBinaryCollisionManager?
        jclinit
        @@jst_allBinaryCollisionManager = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_allBinaryCollisionManager = AllBinaryCollisionManager.new.jinit_AllBinaryCollisionManager()
    end
    

    def self.getInstance : AllBinaryCollisionManager?
        return AllBinaryCollisionManager.jst_allBinaryCollisionManager
    end
    

    def jinit_AllBinaryCollisionManager : self
        self
    end
    

    def process(layerManager : ABLayerManager?, collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface?, startIndex : Int) : Nil
        startIndex = startIndex.to_i32!
        size : Int32 = layerManager.not_nil!.getSize()
        index : Int32 = startIndex &+ 1
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            collidableInterfaceCompositeInterface2 : CollidableInterfaceCompositeInterface? = JR.cast(layerManager.not_nil!.getLayerAt(index), CollidableInterfaceCompositeInterface)
            self.collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
        end
    end
    

    def collide(layerManager : ABLayerManager?, collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface?, collidableInterfaceCompositeInterface2 : CollidableInterfaceCompositeInterface?) : Nil
        collidableBase2 : CollidableBaseBehavior? = JR.cast(collidableInterfaceCompositeInterface2.not_nil!.getCollidableInferface(), CollidableBaseBehavior)
        collidableBase : CollidableBaseBehavior? = JR.cast(collidableInterfaceCompositeInterface.not_nil!.getCollidableInferface(), CollidableBaseBehavior)
        if collidableBase2.not_nil!.isCollidable(JR.cast(collidableInterfaceCompositeInterface, CollidableCompositeLayer))
            if collidableBase.not_nil!.isCollisionInterface(JR.cast(collidableInterfaceCompositeInterface, CollidableCompositeLayer), collidableInterfaceCompositeInterface2)
                collidableBase.not_nil!.collideInterface(JR.cast(collidableInterfaceCompositeInterface, CollidableCompositeLayer), collidableInterfaceCompositeInterface2)
                collidableBase2.not_nil!.collideInterface(JR.cast(collidableInterfaceCompositeInterface, CollidableCompositeLayer), collidableInterfaceCompositeInterface)
            end
        end
    end
end

