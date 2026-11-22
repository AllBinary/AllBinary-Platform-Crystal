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

class NullIndexedAnimationFactory < JObject
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    @j_NULL_ANIMATION : Animation? = nil

    def jf_NULL_ANIMATION : Animation?
        @j_NULL_ANIMATION
    end

    def jf_NULL_ANIMATION=(value : Animation?) : Animation?
        @j_NULL_ANIMATION = value
    end

    @@jst_NULL_INDEXED_ANIMATION_ARRAY : Array(IndexedAnimation?)? = nil

    def self.jst_NULL_INDEXED_ANIMATION_ARRAY : Array(IndexedAnimation?)?
        jclinit
        @@jst_NULL_INDEXED_ANIMATION_ARRAY
    end

    def self.jst_NULL_INDEXED_ANIMATION_ARRAY=(value : Array(IndexedAnimation?)?) : Array(IndexedAnimation?)?
        jclinit
        @@jst_NULL_INDEXED_ANIMATION_ARRAY = value
    end

    @@jst_NULL_INDEXED_ANIMATION_FACTORY : NullIndexedAnimationFactory? = nil

    def self.jst_NULL_INDEXED_ANIMATION_FACTORY : NullIndexedAnimationFactory?
        jclinit
        @@jst_NULL_INDEXED_ANIMATION_FACTORY
    end

    def self.jst_NULL_INDEXED_ANIMATION_FACTORY=(value : NullIndexedAnimationFactory?) : NullIndexedAnimationFactory?
        jclinit
        @@jst_NULL_INDEXED_ANIMATION_FACTORY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_INDEXED_ANIMATION_ARRAY = Array(IndexedAnimation?).new(0, nil)
        @@jst_NULL_INDEXED_ANIMATION_FACTORY = NullIndexedAnimationFactory.new.jinit_NullIndexedAnimationFactory()
    end
    

    def self.getFactoryInstance : NullIndexedAnimationFactory?
        return NullIndexedAnimationFactory.jst_NULL_INDEXED_ANIMATION_FACTORY
    end

    # Java field initializers run after the super constructor
    def jfields_NullIndexedAnimationFactory : Nil
    @j_NULL_ANIMATION = NullIndexedAnimationInner.new.jinit_NullIndexedAnimationInner()
    end
    

    def jinit_NullIndexedAnimationFactory : self
        jfields_NullIndexedAnimationFactory()
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

