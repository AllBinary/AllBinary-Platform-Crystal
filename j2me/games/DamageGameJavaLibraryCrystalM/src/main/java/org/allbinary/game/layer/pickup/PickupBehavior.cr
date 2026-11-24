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

class PickupBehavior < JObject
    include PickupBehaviorInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @countedIndex : Int32 = 0

    def jf_countedIndex : Int32
        @countedIndex
    end

    def jf_countedIndex=(value : Int32) : Int32
        @countedIndex = value
    end
    @ownerLayerInterface : CollidableCompositeLayer? = nil

    def jf_ownerLayerInterface : CollidableCompositeLayer?
        @ownerLayerInterface
    end

    def jf_ownerLayerInterface=(value : CollidableCompositeLayer?) : CollidableCompositeLayer?
        @ownerLayerInterface = value
    end

    @@jst_NULL_PICKUP_BEHAVIOR : JAny = nil

    def self.jst_NULL_PICKUP_BEHAVIOR : JAny
        jclinit
        @@jst_NULL_PICKUP_BEHAVIOR
    end

    def self.jst_NULL_PICKUP_BEHAVIOR=(value : JAny) : JAny
        jclinit
        @@jst_NULL_PICKUP_BEHAVIOR = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_PICKUP_BEHAVIOR = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getNullInstance : PickupBehavior?
        if PickupBehavior.jst_NULL_PICKUP_BEHAVIOR == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            PickupBehavior.jst_NULL_PICKUP_BEHAVIOR = PickupBehavior.new.jinit_PickupBehavior(CollidableCompositeLayer.getNullInstance(), 0)
        end
        return JR.cast(PickupBehavior.jst_NULL_PICKUP_BEHAVIOR, PickupBehavior)
    end

    # Java field initializers run after the super constructor
    def jfields_PickupBehavior : Nil
    @logUtil = LogUtil.getInstance()
    
    
    end
    

    def jinit_PickupBehavior(ownerLayerInterface : CollidableCompositeLayer?, countedIndex : Int) : self
        countedIndex = countedIndex.to_i32!
        jfields_PickupBehavior()
        @ownerLayerInterface = ownerLayerInterface
        @countedIndex = countedIndex
        self
    end
    

    def doPickup(pickupProcessorInterface : PickupProcessorInterface?) : Nil
        begin
            healthInterfaceCompositeInterface : HealthInterfaceCompositeInterface? = JR.cast(@ownerLayerInterface, HealthInterfaceCompositeInterface)
            if JR.cast(healthInterfaceCompositeInterface.not_nil!.getHealthInterface(), Health).not_nil!.isAlive()
                pickupProcessorInterface.not_nil!.process(@ownerLayerInterface)
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, "doPickup", e)
            else
                raise jex1
            end
        end
    end
    

    def doPickupLayer(pickupLayerInterface : PickedUpLayerInterface?) : Nil
        begin
            pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface? = JR.cast(pickupLayerInterface.not_nil!.getPickedUpLayerInterfaceFactoryInterface(), PickedUpLayerInterfaceFactoryInterface)
            pickedUpLayerType : PickedUpLayerType? = JR.cast(pickedUpLayerInterfaceFactoryInterface.not_nil!.getPickedUpLayerType(), PickedUpLayerType)
            pickedUpLayerTypeFactory : PickedUpLayerTypeFactory? = PickedUpLayerTypeFactory.getInstance()
            if pickedUpLayerType == pickedUpLayerTypeFactory.not_nil!.jf_BEAM || pickedUpLayerType == pickedUpLayerTypeFactory.not_nil!.jf_MINE || pickedUpLayerType == pickedUpLayerTypeFactory.not_nil!.jf_PROJECTILE || pickedUpLayerType == pickedUpLayerTypeFactory.not_nil!.jf_ENHANCEMENT
                self.add(JR.cast(pickedUpLayerInterfaceFactoryInterface, CountedPickedUpLayerInterfaceFactoryInterface))
            elsif JR.cast(pickedUpLayerInterfaceFactoryInterface.not_nil!.getPickedUpLayerType(), PickedUpLayerType) == pickedUpLayerTypeFactory.not_nil!.jf_PART
                collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer? = JR.cast(@ownerLayerInterface, CollidableDestroyableDamageableLayer)
                collidableDestroyableDamageableLayer.not_nil!.addPart(pickedUpLayerInterfaceFactoryInterface)
            elsif pickedUpLayerType == pickedUpLayerTypeFactory.not_nil!.jf_NONE
            else
                pickupProcessorInterface : PickupProcessorInterface? = JR.cast(pickedUpLayerInterfaceFactoryInterface, PickupProcessorInterface)
                self.doPickup(pickupProcessorInterface)
            end
            pickupLayerInterface.not_nil!.setPickedUp()
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.not_nil!.jf_EXCEPTION, self, "doPickup", e)
            else
                raise jex2
            end
        end
    end
    

    def add(countedPickedUpLayerInterfaceFactoryInterface : CountedPickedUpLayerInterfaceFactoryInterface?) : Nil
        partIndex : Int32 = (countedPickedUpLayerInterfaceFactoryInterface.not_nil!.getId()).as(Int32) &+ @countedIndex
        self.addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex)
    end
    

    def addAt(countedPickedUpLayerInterfaceFactoryInterface : CountedPickedUpLayerInterfaceFactoryInterface?, partIndex : Int) : Nil
        partIndex = partIndex.to_i32!
        collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer? = JR.cast(@ownerLayerInterface, CollidableDestroyableDamageableLayer)
        countedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart? = JR.cast(collidableDestroyableDamageableLayer.not_nil!.getPartInterfaceArray().not_nil![partIndex], CountedLayerInterfaceFactoryPart)
        countedLayerInterfaceFactory.not_nil!.setTotal(countedLayerInterfaceFactory.not_nil!.getTotal() &+ (countedPickedUpLayerInterfaceFactoryInterface.not_nil!.getTotal()).as(Int32))
    end
    

    def getFirstAvailableCountedLayerInterfaceFactory(pickedUpLayerTypeArray : Array(PickedUpLayerType?)?) : CountedLayerInterfaceFactoryPart?
        collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer? = JR.cast(@ownerLayerInterface, CollidableDestroyableDamageableLayer)
        partInterfaceArray : Array(PartInterface?)? = collidableDestroyableDamageableLayer.not_nil!.getPartInterfaceArray()
        size : Int32 = partInterfaceArray.not_nil!.size
        nextCountedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart? = nil
        countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory? = nil
        index : Int32 = @countedIndex
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            nextCountedLayerInterfaceFactory = JR.cast(collidableDestroyableDamageableLayer.not_nil!.getPartInterfaceArray().not_nil![index], CountedLayerInterfaceFactoryPart)
            countedPickedUpLayerInterfaceFactory = nextCountedLayerInterfaceFactory.not_nil!.getCountedPickedUpLayerInterfaceFactory()
            index2 : Int32 = pickedUpLayerTypeArray.not_nil!.size
            jfor2 = false
            while true
                jfor2 = true
                break unless (index2 &-= 1) >= 0
                if countedPickedUpLayerInterfaceFactory.not_nil!.getPickedUpLayerType() == pickedUpLayerTypeArray.not_nil![index2]
                    if nextCountedLayerInterfaceFactory.not_nil!.getTotal() > 0
                        return nextCountedLayerInterfaceFactory
                    end
                end
            end
        end
        return CountedLayerInterfaceFactoryPart.jst_NULL_COUNTED_LAYER_INTERFACE_FACTORY
    end
    

    def getCountedLayerInterfaceFactoryForSlot(slotIndex : Int) : CountedLayerInterfaceFactoryPart?
        slotIndex = slotIndex.to_i32!
        currentSlot : Int32 = 0
        collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer? = JR.cast(@ownerLayerInterface, CollidableDestroyableDamageableLayer)
        partInterfaceArray : Array(PartInterface?)? = collidableDestroyableDamageableLayer.not_nil!.getPartInterfaceArray()
        size : Int32 = partInterfaceArray.not_nil!.size
        nextCountedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart? = nil
        index : Int32 = @countedIndex
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < size
            nextCountedLayerInterfaceFactory = JR.cast(collidableDestroyableDamageableLayer.not_nil!.getPartInterfaceArray().not_nil![index], CountedLayerInterfaceFactoryPart)
            if nextCountedLayerInterfaceFactory.not_nil!.getTotal() > 0
                if currentSlot == slotIndex
                    return nextCountedLayerInterfaceFactory
                else
                    currentSlot &+= 1
                end
            end
        end
        return CountedLayerInterfaceFactoryPart.jst_NULL_COUNTED_LAYER_INTERFACE_FACTORY
    end
    

    def getCountedIndex : Int32
        return @countedIndex
    end
end

