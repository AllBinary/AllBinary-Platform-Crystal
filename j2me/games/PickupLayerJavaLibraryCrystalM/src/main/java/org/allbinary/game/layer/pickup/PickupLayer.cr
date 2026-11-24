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
# package org.allbinary.game.layer.pickup

class PickupLayer < MultiPlayerGameLayer
    include PickedUpLayerInterface
    include PickupableInterface
    @pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface? = nil

    def jf_pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface?
        @pickedUpLayerInterfaceFactoryInterface
    end

    def jf_pickedUpLayerInterfaceFactoryInterface=(value : PickedUpLayerInterfaceFactoryInterface?) : PickedUpLayerInterfaceFactoryInterface?
        @pickedUpLayerInterfaceFactoryInterface = value
    end
    @destroyed : Bool = false

    def jf_destroyed : Bool
        @destroyed
    end

    def jf_destroyed=(value : Bool) : Bool
        @destroyed = value
    end
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end

    # Java field initializers run after the super constructor
    def jfields_PickupLayer : Nil
    @pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.jst_NULL_COUNTED_PICKUP_LAYER_FACTORY
    
    @animationInterface = NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0)
    end
    

    def jinit_PickupLayer(name : String, remoteInfo : RemoteInfo?, total : Int, pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface?, animationInterface : Animation?, rectangle : Rectangle?, viewPosition : ViewPositionBase?) : self
        total = total.to_i32!
        jinit_MultiPlayerGameLayer(remoteInfo, BasicGroupFactory.getInstance().not_nil!.jf_NONE_ARRAY, name, rectangle, viewPosition)
        jfields_PickupLayer()
        self.setCollidableInferface(CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance().not_nil!.createBehavior())
        self.setLayerWidth(10)
        self.setLayerHeight(10)
        self.init(pickedUpLayerInterfaceFactoryInterface, animationInterface)
        self
    end
    

    def init(pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface?, animationInterface : Animation?) : Nil
        @pickedUpLayerInterfaceFactoryInterface = JR.cast(pickedUpLayerInterfaceFactoryInterface, PickedUpLayerInterfaceFactoryInterface)
        @animationInterface = animationInterface
        self.setDestroyed(false)
    end
    

    def initXYZ(x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        self.setPosition(x, y, z)
    end
    

    def paint(graphics : Graphics?) : Nil
        viewPosition : ViewPositionBase? = self.getViewPosition()
        viewX : Int32 = viewPosition.not_nil!.getX()
        viewY : Int32 = viewPosition.not_nil!.getY()
        @animationInterface.not_nil!.paintXY(graphics, viewX, viewY)
    end
    

    def paintThreed(graphics : Graphics?) : Nil
        viewPosition : ViewPositionBase? = self.getViewPosition()
        viewX : Int32 = viewPosition.not_nil!.getX()
        viewY : Int32 = viewPosition.not_nil!.getY()
        @animationInterface.not_nil!.paintThreedXYZ(graphics, viewX, viewY, 3)
    end
    

    def getPickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface?
        return JR.cast(@pickedUpLayerInterfaceFactoryInterface, PickedUpLayerInterfaceFactoryInterface)
    end
    

    def setPickedUp : Nil
        self.setDestroyed(true)
    end
    

    def isDestroyed : Bool
        return @destroyed
    end
    

    def setDestroyed(destroyed : Bool) : Nil
        @destroyed = destroyed
        if self.isDestroyed()
            DestroyedLayerProcessor.getInstance().not_nil!.add(self)
        end
    end
    

    def damage(damage : Int, damageType : Int) : Nil
        damage = damage.to_i32!
        damageType = damageType.to_i32!
    end
    

    def getDamage(damageType : Int) : Int32
        damageType = damageType.to_i32!
        return 0
    end
    

    def set(gl : GL?) : Nil
        openGLSurfaceChangedInterface : OpenGLSurfaceChangedInterface? = JR.cast(@animationInterface, OpenGLSurfaceChangedInterface)
        openGLSurfaceChangedInterface.not_nil!.set(gl)
    end
end

