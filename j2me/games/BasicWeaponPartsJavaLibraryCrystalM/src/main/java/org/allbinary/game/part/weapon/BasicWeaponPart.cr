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
# package org.allbinary.game.part.weapon

class BasicWeaponPart < JObject
    include PartInterface
    include SalvoInterface
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end
    @ownerLayerInterface : AllBinaryLayer? = nil

    def jf_ownerLayerInterface : AllBinaryLayer?
        @ownerLayerInterface
    end

    def jf_ownerLayerInterface=(value : AllBinaryLayer?) : AllBinaryLayer?
        @ownerLayerInterface = value
    end
    @weaponProperties : WeaponProperties? = nil

    def jf_weaponProperties : WeaponProperties?
        @weaponProperties
    end

    def jf_weaponProperties=(value : WeaponProperties?) : WeaponProperties?
        @weaponProperties = value
    end
    @scoreableInterface : ScoreableInterface? = nil

    def jf_scoreableInterface : ScoreableInterface?
        @scoreableInterface
    end

    def jf_scoreableInterface=(value : ScoreableInterface?) : ScoreableInterface?
        @scoreableInterface = value
    end
    @relativeRelationship : RelativeRelationship? = nil

    def jf_relativeRelationship : RelativeRelationship?
        @relativeRelationship
    end

    def jf_relativeRelationship=(value : RelativeRelationship?) : RelativeRelationship?
        @relativeRelationship = value
    end

    @@jst_NULL_BASIC_WEAPON_PART : BasicWeaponPart? = nil

    def self.jst_NULL_BASIC_WEAPON_PART : BasicWeaponPart?
        jclinit
        @@jst_NULL_BASIC_WEAPON_PART
    end

    def self.jst_NULL_BASIC_WEAPON_PART=(value : BasicWeaponPart?) : BasicWeaponPart?
        jclinit
        @@jst_NULL_BASIC_WEAPON_PART = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_BASIC_WEAPON_PART = BasicWeaponPart.createBasicWeaponPart(NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0))
    end
    

    def self.createBasicWeaponPart(animationInterface : Animation?) : BasicWeaponPart?
        return BasicWeaponPart.new.jinit_BasicWeaponPart(animationInterface, AllBinaryLayer.jst_NULL_ALLBINARY_LAYER, WeaponProperties.jst_NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.jst_NULL_RELATIVE_RELATIONSHIP)
    end

    # Java field initializers run after the super constructor
    def jfields_BasicWeaponPart : Nil
    @animationInterface = NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0)
    @ownerLayerInterface = AllBinaryLayer.jst_NULL_ALLBINARY_LAYER
    @weaponProperties = WeaponProperties.jst_NULL_WEAPON_PROPERTIES
    @scoreableInterface = NoScoreable.getInstance()
    @relativeRelationship = RelativeRelationship.jst_NULL_RELATIVE_RELATIONSHIP
    end
    

    def jinit_BasicWeaponPart(animationInterface : Animation?, sourceLayerInterface : AllBinaryLayer?, weaponProperties : WeaponProperties?, scoreableInterface : ScoreableInterface?, relativeRelationship : RelativeRelationship?) : self
        jfields_BasicWeaponPart()
        self.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        self.setAnimationInterface(animationInterface)
        self
    end
    

    def init(sourceLayerInterface : AllBinaryLayer?, weaponProperties : WeaponProperties?, scoreableInterface : ScoreableInterface?, relativeRelationship : RelativeRelationship?) : Nil
        self.setOwnerLayerInterface(sourceLayerInterface)
        self.setWeaponProperties(weaponProperties)
        @scoreableInterface = scoreableInterface
        @relativeRelationship = relativeRelationship
    end
    

    def process(allbinaryLayerManager : AllBinaryLayerManager?, angle : Int, otherAngle : Int) : Nil
        angle = angle.to_i16!
        otherAngle = otherAngle.to_i16!
        self.processScore(allbinaryLayerManager, angle, otherAngle, self.getWeaponProperties(), @scoreableInterface)
    end
    

    def processScore(allbinaryLayerManager : AllBinaryLayerManager?, angle : Int, otherAngle : Int, weaponProperties : WeaponProperties?, scoreableInterface : ScoreableInterface?) : Nil
        angle = angle.to_i16!
        otherAngle = otherAngle.to_i16!
        raise (JException.new.jinit_JException(CommonStrings.getInstance().not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def getOwnerLayerInterface : AllBinaryLayer?
        return @ownerLayerInterface
    end
    

    def setOwnerLayerInterface(ownerLayerInterface : AllBinaryLayer?) : Nil
        @ownerLayerInterface = ownerLayerInterface
    end
    

    def getAnimationInterface : Animation?
        return @animationInterface
    end
    

    def setAnimationInterface(animationInterface : Animation?) : Nil
        @animationInterface = animationInterface
    end
    

    def paint(graphics : Graphics?) : Nil
        viewPosition : ViewPositionBase? = self.getOwnerLayerInterface().not_nil!.getViewPosition()
        viewX : Int32 = viewPosition.not_nil!.getX()
        viewY : Int32 = viewPosition.not_nil!.getY()
        @animationInterface.not_nil!.paintXY(graphics, viewX, viewY)
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
    

    def getWeaponProperties : WeaponProperties?
        return @weaponProperties
    end
    

    def setWeaponProperties(weaponProperties : WeaponProperties?) : Nil
        @weaponProperties = weaponProperties
    end
end

