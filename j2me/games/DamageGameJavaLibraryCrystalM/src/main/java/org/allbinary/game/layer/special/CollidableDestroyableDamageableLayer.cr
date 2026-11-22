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
# package org.allbinary.game.layer.special

class CollidableDestroyableDamageableLayer < CollidableCompositeLayer
    include DestroyableInterface
    include DamageableInterface
    include PickupCompositeInterface
    include SpecialGameInputInterface
    @groupInterface : Array(Group?)? = nil

    def jf_groupInterface : Array(Group?)?
        @groupInterface
    end

    def jf_groupInterface=(value : Array(Group?)?) : Array(Group?)?
        @groupInterface = value
    end
    @readyForExplosion : Bool = false

    def jf_readyForExplosion : Bool
        @readyForExplosion
    end

    def jf_readyForExplosion=(value : Bool) : Bool
        @readyForExplosion = value
    end
    @initWidth : Int32 = 0

    def jf_initWidth : Int32
        @initWidth
    end

    def jf_initWidth=(value : Int32) : Int32
        @initWidth = value
    end
    @initHeight : Int32 = 0

    def jf_initHeight : Int32
        @initHeight
    end

    def jf_initHeight=(value : Int32) : Int32
        @initHeight = value
    end
    @initX : Int32 = 0

    def jf_initX : Int32
        @initX
    end

    def jf_initX=(value : Int32) : Int32
        @initX = value
    end
    @initY : Int32 = 0

    def jf_initY : Int32
        @initY
    end

    def jf_initY=(value : Int32) : Int32
        @initY = value
    end
    @initZ : Int32 = 0

    def jf_initZ : Int32
        @initZ
    end

    def jf_initZ=(value : Int32) : Int32
        @initZ = value
    end
    @partInterfaceArrayP : Array(PartInterface?)? = nil

    def jf_partInterfaceArrayP : Array(PartInterface?)?
        @partInterfaceArrayP
    end

    def jf_partInterfaceArrayP=(value : Array(PartInterface?)?) : Array(PartInterface?)?
        @partInterfaceArrayP = value
    end
    @pickupBehavior : PickupBehavior? = nil

    def jf_pickupBehavior : PickupBehavior?
        @pickupBehavior
    end

    def jf_pickupBehavior=(value : PickupBehavior?) : PickupBehavior?
        @pickupBehavior = value
    end
    @allBinaryGameLayerManagerP : AllBinaryGameLayerManager? = nil

    def jf_allBinaryGameLayerManagerP : AllBinaryGameLayerManager?
        @allBinaryGameLayerManagerP
    end

    def jf_allBinaryGameLayerManagerP=(value : AllBinaryGameLayerManager?) : AllBinaryGameLayerManager?
        @allBinaryGameLayerManagerP = value
    end
    @isDraggable : Bool = false

    def jf_isDraggable : Bool
        @isDraggable
    end

    def jf_isDraggable=(value : Bool) : Bool
        @isDraggable = value
    end
    @isDragged : Bool = false

    def jf_isDragged : Bool
        @isDragged
    end

    def jf_isDragged=(value : Bool) : Bool
        @isDragged = value
    end
    @isDropped : Bool = false

    def jf_isDropped : Bool
        @isDropped
    end

    def jf_isDropped=(value : Bool) : Bool
        @isDropped = value
    end

    @@jst_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER : JAny = nil

    def self.jst_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER : JAny
        jclinit
        @@jst_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER
    end

    def self.jst_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER=(value : JAny) : JAny
        jclinit
        @@jst_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = value
    end

    def self.jst_READYFOREXPLOSION : String
        "ReadyForExplosion: "
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
        
    end
    

    def self.getNullInstance : CollidableDestroyableDamageableLayer?
        if CollidableDestroyableDamageableLayer.jst_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            CollidableDestroyableDamageableLayer.jst_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = CollidableDestroyableDamageableLayer.new.jinit_CollidableDestroyableDamageableLayer(BasicGroupFactory.getInstance().not_nil!.jf_NONE_ARRAY, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, RectangleFactory.jst_SINGLETON, ViewPositionBase.jst_NULL_VIEW_POSITION)
        end
        return JR.cast(CollidableDestroyableDamageableLayer.jst_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER, CollidableDestroyableDamageableLayer)
    end

    # Java field initializers run after the super constructor
    def jfields_CollidableDestroyableDamageableLayer : Nil
    
    
    
    
    
    
    
    @partInterfaceArrayP = PartInterfaceUtil.getZeroArray()
    
    @allBinaryGameLayerManagerP = AllBinaryGameLayerManager.getNullInstance()
    @isDraggable = false
    @isDragged = false
    @isDropped = false
    end
    

    def jinit_CollidableDestroyableDamageableLayer(groupInterface : Array(Group?)?, name : String, layerInfo : Rectangle?, viewPosition : ViewPositionBase?) : self
        jinit_CollidableCompositeLayer(name, layerInfo, viewPosition, CollidableNeverCollideBehaviorFactory.getInstance())
        jfields_CollidableDestroyableDamageableLayer()
        @initWidth = layerInfo.not_nil!.getWidth()
        @initHeight = layerInfo.not_nil!.getHeight()
        @groupInterface = groupInterface
        @pickupBehavior = PickupBehavior.getNullInstance()
        self
    end
    

    def initPosition : Nil
        self.setPosition(@initX, @initY, @initZ)
    end
    

    def initPositionXYZ(x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        @initX = x
        @initY = y
        @initZ = z
    end
    

    def paint(graphics : Graphics?) : Nil
        super(graphics)
    end
    

    def damage(damage : Int, damageType : Int) : Nil
        damage = damage.to_i32!
        damageType = damageType.to_i32!
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def getDamage(damageType : Int) : Int32
        damageType = damageType.to_i32!
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def isDestroyed : Bool
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def getGroupInterface : Array(Group?)?
        return @groupInterface
    end
    

    def setGroupInterface(teamInterface : Array(Group?)?) : Nil
        @groupInterface = teamInterface
    end
    

    def setAllBinaryGameLayerManager(allBinaryGameLayerManager : AllBinaryGameLayerManager?) : Nil
        @allBinaryGameLayerManagerP = allBinaryGameLayerManager
        if (@allBinaryGameLayerManagerP).nil?
            raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
        end
    end
    

    def isReadyForExplosion : Bool
        return @readyForExplosion
    end
    

    def setReadyForExplosion(isReadyForExplosion : Bool) : Nil
        @readyForExplosion = isReadyForExplosion
    end
    

    def getInitWidth : Int32
        return @initWidth
    end
    

    def getInitHeight : Int32
        return @initHeight
    end
    

    def getInitX : Int32
        return @initX
    end
    

    def getInitY : Int32
        return @initY
    end
    

    def up : Nil
    end
    

    def down : Nil
    end
    

    def right : Nil
    end
    

    def left : Nil
    end
    

    def strafeLeft : Nil
    end
    

    def strafeRight : Nil
    end
    

    def fire(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def special1(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def special2(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def special3(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def special4(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def special5(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def upAnalog(yAnalogValue : Int) : Nil
        yAnalogValue = yAnalogValue.to_i32!
    end
    

    def downAnalog(yAnalogValue : Int) : Nil
        yAnalogValue = yAnalogValue.to_i32!
    end
    

    def rightAnalog(xAnalogValue : Int) : Nil
        xAnalogValue = xAnalogValue.to_i32!
    end
    

    def leftAnalog(xAnalogValue : Int) : Nil
        xAnalogValue = xAnalogValue.to_i32!
    end
    

    def rightTrigger(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?, xAnalogValue : Int) : Nil
        xAnalogValue = xAnalogValue.to_i32!
    end
    

    def leftTrigger(layerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?, xAnalogValue : Int) : Nil
        xAnalogValue = xAnalogValue.to_i32!
    end
    

    def onDestroyed(destroyedEvent : DestroyedEvent?) : Nil
    end
    

    def getPickupBehavior : PickupBehavior?
        return @pickupBehavior
    end
    

    def setPickupBehavior(pickupBehavior : PickupBehavior?) : Nil
        @pickupBehavior = pickupBehavior
    end
    

    def addPart(pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface?) : Nil
    end
    

    def setPartInterfaceArray(partInterfaceArray : Array(PartInterface?)?) : Nil
        @partInterfaceArrayP = partInterfaceArray
    end
    

    def getPartInterfaceArray : Array(PartInterface?)?
        return @partInterfaceArrayP
    end
    

    def toStringAppend(stringBuffer : StringMaker?) : Nil
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        positionStrings : PositionStrings? = PositionStrings.getInstance()
        super(stringBuffer)
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_NEW_LINE)
        groupInterfaceArray : Array(Group?)? = self.getGroupInterface()
        size : Int32 = groupInterfaceArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            stringBuffer.not_nil!.append(groupInterfaceArray.not_nil![index].not_nil!.toString())
            stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_COMMA)
        end
        pickupBehavior : PickupBehavior? = self.getPickupBehavior()
        if !(pickupBehavior).nil?
            stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_NEW_LINE)
            stringBuffer.not_nil!.append(pickupBehavior.not_nil!.toString())
        end
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_NEW_LINE)
        stringBuffer.not_nil!.append(CollidableDestroyableDamageableLayer.jst_READYFOREXPLOSION)
        stringBuffer.not_nil!.appendboolean(@readyForExplosion)
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_NEW_LINE)
        stringBuffer.not_nil!.append(@commonStrings.not_nil!.jf_INIT)
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_X_LABEL)
        stringBuffer.not_nil!.appendint(@initX)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_Y_LABEL)
        stringBuffer.not_nil!.appendint(@initX)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_Z_LABEL)
        stringBuffer.not_nil!.appendint(@initZ)
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        self.toStringAppend(stringBuffer)
        return stringBuffer.not_nil!.toString()
    end
end

