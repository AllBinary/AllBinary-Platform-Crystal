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

class NullRotationAnimationFactory < JObject
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    @j_NULL_ROTATION_ANIMATION_ARRAY : Array(RotationAnimation?)? = nil

    def jf_NULL_ROTATION_ANIMATION_ARRAY : Array(RotationAnimation?)?
        @j_NULL_ROTATION_ANIMATION_ARRAY
    end

    def jf_NULL_ROTATION_ANIMATION_ARRAY=(value : Array(RotationAnimation?)?) : Array(RotationAnimation?)?
        @j_NULL_ROTATION_ANIMATION_ARRAY = value
    end
    @j_NULL_ANIMATION : Animation? = nil

    def jf_NULL_ANIMATION : Animation?
        @j_NULL_ANIMATION
    end

    def jf_NULL_ANIMATION=(value : Animation?) : Animation?
        @j_NULL_ANIMATION = value
    end

    @@jst_NULL_ROTATION_ANIMATION_FACTORY : NullRotationAnimationFactory? = nil

    def self.jst_NULL_ROTATION_ANIMATION_FACTORY : NullRotationAnimationFactory?
        jclinit
        @@jst_NULL_ROTATION_ANIMATION_FACTORY
    end

    def self.jst_NULL_ROTATION_ANIMATION_FACTORY=(value : NullRotationAnimationFactory?) : NullRotationAnimationFactory?
        jclinit
        @@jst_NULL_ROTATION_ANIMATION_FACTORY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_ROTATION_ANIMATION_FACTORY = NullRotationAnimationFactory.new.jinit_NullRotationAnimationFactory()
    end
    

    def self.getFactoryInstance : NullRotationAnimationFactory?
        return NullRotationAnimationFactory.jst_NULL_ROTATION_ANIMATION_FACTORY
    end

    # Java field initializers run after the super constructor
    def jfields_NullRotationAnimationFactory : Nil
    @j_NULL_ROTATION_ANIMATION_ARRAY = Array(RotationAnimation?).new(0, nil)
    @j_NULL_ANIMATION = NullRotationAnimation2.new.jinit_NullRotationAnimation2()
    end
    

    def jinit_NullRotationAnimationFactory : self
        jfields_NullRotationAnimationFactory()
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        return @j_NULL_ANIMATION
    end
    

    def getInstanceAnimation(animationInterface : Animation?) : Animation?
        return @j_NULL_ANIMATION
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
end

