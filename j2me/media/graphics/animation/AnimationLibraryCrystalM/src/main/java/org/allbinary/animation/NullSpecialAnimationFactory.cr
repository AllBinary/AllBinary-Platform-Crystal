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
# package org.allbinary.animation

class NullSpecialAnimationFactory < JObject
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface

    @@jst_NULL_SPECIAL_ANIMATION_FACTORY : NullSpecialAnimationFactory? = nil

    def self.jst_NULL_SPECIAL_ANIMATION_FACTORY : NullSpecialAnimationFactory?
        jclinit
        @@jst_NULL_SPECIAL_ANIMATION_FACTORY
    end

    def self.jst_NULL_SPECIAL_ANIMATION_FACTORY=(value : NullSpecialAnimationFactory?) : NullSpecialAnimationFactory?
        jclinit
        @@jst_NULL_SPECIAL_ANIMATION_FACTORY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_SPECIAL_ANIMATION_FACTORY = NullSpecialAnimationFactory.new.jinit_NullSpecialAnimationFactory()
    end
    

    def self.getFactoryInstance : NullSpecialAnimationFactory?
        return NullSpecialAnimationFactory.jst_NULL_SPECIAL_ANIMATION_FACTORY
    end
    

    def jinit_NullSpecialAnimationFactory : self
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        return SpecialAnimation.getInstance()
    end
    

    def getInstanceAnimation(animationInterface : Animation?) : Animation?
        return SpecialAnimation.getInstance()
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
end

