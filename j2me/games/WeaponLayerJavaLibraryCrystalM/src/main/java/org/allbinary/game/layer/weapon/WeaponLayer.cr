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
# package org.allbinary.game.layer.weapon

class WeaponLayer < MultiPlayerGameLayer
    include TickableInterface
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end
    @initAnimationInterface : Animation? = nil

    def jf_initAnimationInterface : Animation?
        @initAnimationInterface
    end

    def jf_initAnimationInterface=(value : Animation?) : Animation?
        @initAnimationInterface = value
    end
    @destroyedAnimationInterface : Animation? = nil

    def jf_destroyedAnimationInterface : Animation?
        @destroyedAnimationInterface
    end

    def jf_destroyedAnimationInterface=(value : Animation?) : Animation?
        @destroyedAnimationInterface = value
    end
    @sourceLayerInterface : AllBinaryLayer? = nil

    def jf_sourceLayerInterface : AllBinaryLayer?
        @sourceLayerInterface
    end

    def jf_sourceLayerInterface=(value : AllBinaryLayer?) : AllBinaryLayer?
        @sourceLayerInterface = value
    end
    @totalDamage : Int32 = 0

    def jf_totalDamage : Int32
        @totalDamage
    end

    def jf_totalDamage=(value : Int32) : Int32
        @totalDamage = value
    end
    @initDamage : Int32 = 0

    def jf_initDamage : Int32
        @initDamage
    end

    def jf_initDamage=(value : Int32) : Int32
        @initDamage = value
    end
    @destroyed : Bool = false

    def jf_destroyed : Bool
        @destroyed
    end

    def jf_destroyed=(value : Bool) : Bool
        @destroyed = value
    end
    @scoreableInterface : ScoreableInterface? = nil

    def jf_scoreableInterface : ScoreableInterface?
        @scoreableInterface
    end

    def jf_scoreableInterface=(value : ScoreableInterface?) : ScoreableInterface?
        @scoreableInterface = value
    end
    @movement : Movement? = nil

    def jf_movement : Movement?
        @movement
    end

    def jf_movement=(value : Movement?) : Movement?
        @movement = value
    end
    @weaponProperties : WeaponProperties? = nil

    def jf_weaponProperties : WeaponProperties?
        @weaponProperties
    end

    def jf_weaponProperties=(value : WeaponProperties?) : WeaponProperties?
        @weaponProperties = value
    end
    @multiPlayerType : Int32 = 0

    def jf_multiPlayerType : Int32
        @multiPlayerType
    end

    def jf_multiPlayerType=(value : Int32) : Int32
        @multiPlayerType = value
    end
    @collidableWeaponBehavior : CollidableWeaponBehavior? = nil

    def jf_collidableWeaponBehavior : CollidableWeaponBehavior?
        @collidableWeaponBehavior
    end

    def jf_collidableWeaponBehavior=(value : CollidableWeaponBehavior?) : CollidableWeaponBehavior?
        @collidableWeaponBehavior = value
    end
    

    def self.getStaticType : Int32
        return 0
    end

    # Java field initializers run after the super constructor
    def jfields_WeaponLayer : Nil
    @animationInterface = NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0)
    
    
    @sourceLayerInterface = AllBinaryLayer.jst_NULL_ALLBINARY_LAYER
    
    
    @destroyed = true
    @scoreableInterface = NoScoreable.getInstance()
    
    @weaponProperties = WeaponProperties.jst_NULL_WEAPON_PROPERTIES
    
    @collidableWeaponBehavior = CollidableWeaponBehavior.getNullInstance()
    end
    

    def jinit_WeaponLayer(name : String, remoteInfo : RemoteInfo?, multiPlayerType : Int, movement : Movement?, animationInterface : Animation?, destroyedAnimationInterface : Animation?, rectangle : Rectangle?, viewPosition : ViewPositionBase?) : self
        multiPlayerType = multiPlayerType.to_i32!
        jinit_MultiPlayerGameLayer(remoteInfo, BasicGroupFactory.getInstance().not_nil!.jf_NONE_ARRAY, name, rectangle, viewPosition)
        jfields_WeaponLayer()
        @initAnimationInterface = animationInterface
        self.setAnimationInterface(animationInterface)
        @destroyedAnimationInterface = destroyedAnimationInterface
        @movement = movement
        @multiPlayerType = multiPlayerType
        self
    end
    

    def setCollidableInferface(collidableInferface : CollidableBaseBehavior?) : Nil
        super(collidableInferface)
        @collidableWeaponBehavior = JR.cast(self.getCollidableInferface(), CollidableWeaponBehavior)
    end
    

    def initXYZ(x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        @x = x
        @y = y
        @z = z
    end
    

    def init(sourceLayerInterface : AllBinaryLayer?, angle : Int, otherAngle : Int, weaponProperties : WeaponProperties?, scoreable : ScoreableInterface?) : Nil
        angle = angle.to_i32!
        otherAngle = otherAngle.to_i32!
        self.setWeaponPropertiesP(weaponProperties)
        self.setReadyForExplosion(false)
        self.setAnimationInterface(self.getInitAnimationInterfaceP())
        self.setOwnerLayerInterface(sourceLayerInterface)
        @collidableWeaponBehavior.not_nil!.init(sourceLayerInterface)
        self.setGroupInterfaces()
        if !(scoreable).nil?
            @scoreableInterface = JR.cast(scoreable, ScoreableInterface)
        end
        @totalDamage = 0
        @initDamage = weaponProperties.not_nil!.getDamage()
        self.setDestroyed(false)
        @movement.not_nil!.init(weaponProperties.not_nil!.getSpeed(), angle, otherAngle)
    end
    

    def setGroupInterfaces : Nil
        basicGroupFactory : BasicGroupFactory? = BasicGroupFactory.getInstance()
        if @sourceLayerInterface.not_nil!.getGroupInterface().not_nil![0] == basicGroupFactory.not_nil!.jf_ENEMY
            self.setGroupInterface(basicGroupFactory.not_nil!.jf_ENEMY_ARRAY)
        else
            self.setGroupInterface(@sourceLayerInterface.not_nil!.getGroupInterface())
        end
    end
    

    def processTick(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        if self.isExhausted() && !self.isDestroyed()
            if self.isReadyForExplosion()
                indexedAnimationInterface : IndexedAnimation? = JR.cast(self.getAnimationInterface(), IndexedAnimation)
                currentFrame : Int32 = indexedAnimationInterface.not_nil!.getFrame()
                if currentFrame < indexedAnimationInterface.not_nil!.getAnimationSize() &- 1
                    indexedAnimationInterface.not_nil!.nextFrame()
                else
                    self.setDestroyed(true)
                end
            else
                collidableWeaponBehavior : CollidableWeaponBehavior? = JR.cast(self.getCollidableInferface(), CollidableWeaponBehavior)
                if collidableWeaponBehavior.not_nil!.isCollided()
                    self.setAnimationInterface(@destroyedAnimationInterface)
                    self.getMovement().not_nil!.stop()
                    self.setReadyForExplosion(true)
                else
                    self.setDestroyed(true)
                end
            end
        end
        @movement.not_nil!.process(self)
        @totalDamage &+= (@weaponProperties.not_nil!.getDissipation()).to_i32!
    end
    

    def isDestroyed : Bool
        return @destroyed
    end
    

    def damage(damage : Int, damageType : Int) : Nil
        damage = damage.to_i32!
        damageType = damageType.to_i32!
        @totalDamage &+= damage &* damage
    end
    

    def givePoints(total : Int) : Nil
        total = total.to_i32!
        @scoreableInterface.not_nil!.addPoints(GameConfigurationUtil.getInstance().not_nil!.getCompetitionValue() &* total)
    end
    

    def isExhausted : Bool
        if @totalDamage > self.getInitDamage() || @totalDamage < 0
            return true
        else
            return false
        end
        return false
    end
    

    def getDamage(damageType : Int) : Int32
        damageType = damageType.to_i32!
        if !self.isExhausted()
            total : Int32 = self.getInitDamage() &- @totalDamage
            self.givePoints(total)
            return total
        end
        return 0
    end
    

    def setDestroyed(destroyed : Bool) : Nil
        @destroyed = destroyed
        if self.isDestroyed()
            @scoreableInterface = JR.cast(NoScoreable.getInstance(), ScoreableInterface)
            DestroyedLayerProcessor.getInstance().not_nil!.add(self)
        end
    end
    

    def getInitDamage : Int32
        return @initDamage
    end
    

    def setAnimationInterface(animationInterface : Animation?) : Nil
        @animationInterface = animationInterface
    end
    

    def getAnimationInterface : Animation?
        return @animationInterface
    end
    

    def getInitAnimationInterfaceP : Animation?
        return @initAnimationInterface
    end
    

    def setInitAnimationInterfaceP(initAnimationInterface : Animation?) : Nil
        @initAnimationInterface = initAnimationInterface
    end
    

    def getDestroyedAnimationInterface : Animation?
        return @destroyedAnimationInterface
    end
    

    def getOwnerLayerInterface : AllBinaryLayer?
        return @sourceLayerInterface
    end
    

    def setOwnerLayerInterface(sourceLayerInterface : AllBinaryLayer?) : Nil
        @sourceLayerInterface = sourceLayerInterface
    end
    

    def paint(graphics : Graphics?) : Nil
        viewPosition : ViewPositionBase? = self.getViewPosition()
        @animationInterface.not_nil!.paintXY(graphics, viewPosition.not_nil!.getX() &- self.getHalfWidth(), viewPosition.not_nil!.getY() &- self.getHalfHeight())
    end
    

    def paintThreed(graphics : Graphics?) : Nil
        viewPosition : ViewPositionBase? = self.getViewPosition()
        @animationInterface.not_nil!.paintThreedXYZ(graphics, viewPosition.not_nil!.getX() &- self.getHalfWidth(), viewPosition.not_nil!.getY() &- self.getHalfHeight(), viewPosition.not_nil!.getZ() &- self.getHalfDepth())
    end
    

    def getMovement : Movement?
        return @movement
    end
    

    def setMovement(movement : Movement?) : Nil
        @movement = movement
    end
    

    def getType : Int32
        return WeaponLayer.getStaticType()
    end
    

    def getMultiPlayerType : Int32
        return @multiPlayerType
    end
    

    def setWeaponPropertiesP(weaponProperties : WeaponProperties?) : Nil
        @weaponProperties = weaponProperties
    end
    

    def getWeaponPropertiesP : WeaponProperties?
        return @weaponProperties
    end
    

    def implmentsTickableInterface : Bool
        return true
    end
    

    def set(gl : GL?) : Nil
        @initAnimationInterface.not_nil!.set(gl)
    end
end

