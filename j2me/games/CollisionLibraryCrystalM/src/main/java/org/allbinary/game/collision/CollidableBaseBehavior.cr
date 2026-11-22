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

class CollidableBaseBehavior < JObject
    include CollidableInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @layerCollisionUtil : LayerCollisionUtil? = nil

    def jf_layerCollisionUtil : LayerCollisionUtil?
        @layerCollisionUtil
    end

    def jf_layerCollisionUtil=(value : LayerCollisionUtil?) : LayerCollisionUtil?
        @layerCollisionUtil = value
    end
    @collidable : Bool = false

    def jf_collidable : Bool
        @collidable
    end

    def jf_collidable=(value : Bool) : Bool
        @collidable = value
    end

    # Java field initializers run after the super constructor
    def jfields_CollidableBaseBehavior : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @layerCollisionUtil = LayerCollisionUtil.getInstance()
    @collidable = true
    end
    

    def jinit_CollidableBaseBehavior(collidable : Bool) : self
        jfields_CollidableBaseBehavior()
        @collidable = collidable
        self
    end
    

    def update : Nil
    end
    

    def getName : String
        return JR.jclass(self)
    end
    

    def setCollidable(collidable : Bool) : Nil
        @collidable = collidable
    end
    

    def isCollidable(ownerLayer : CollidableCompositeLayer?) : Bool
        return @collidable
    end
    

    def collide(ownerLayer : CollidableCompositeLayer?, allbinaryCollidableLayer : CollidableCompositeLayer?) : Nil
        raise (JException.new.jinit_JException(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED).not_nil!.append(CommonLabels.getInstance().not_nil!.jf_COLON_SEP).not_nil!.append(JR.jclass(self)).not_nil!.toString())).not_nil!
    end
    

    def isCollision(ownerLayer : CollidableCompositeLayer?, collisionLayer : CollidableCompositeLayer?) : Bool
        return @layerCollisionUtil.not_nil!.isCollision(ownerLayer, collisionLayer)
    end
    

    def isCollisionInterface(ownerLayer : CollidableCompositeLayer?, collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface?) : Bool
        return @layerCollisionUtil.not_nil!.isCollision(ownerLayer, JR.cast(collidableInterfaceCompositeInterface, AllBinaryLayer))
    end
    

    def collideInterface(ownerLayer : CollidableCompositeLayer?, collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface?) : Nil
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def paint(ownerLayer : CollidableCompositeLayer?, graphics : Graphics?) : Nil
    end
    

    def getCollisionTypeWith(layerInterface : AllBinaryLayer?) : CollisionType?
        return CollisionTypeFactory.getInstance().not_nil!.jf_NONE
    end
end

