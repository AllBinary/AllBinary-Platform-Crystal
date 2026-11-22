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

class NullAnimationFactory < JObject
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    @j_NULL_ANIMATION : Animation? = nil

    def jf_NULL_ANIMATION : Animation?
        @j_NULL_ANIMATION
    end

    def jf_NULL_ANIMATION=(value : Animation?) : Animation?
        @j_NULL_ANIMATION = value
    end
    @j_EMPTY_ARRAY : Array(Animation?)? = nil

    def jf_EMPTY_ARRAY : Array(Animation?)?
        @j_EMPTY_ARRAY
    end

    def jf_EMPTY_ARRAY=(value : Array(Animation?)?) : Array(Animation?)?
        @j_EMPTY_ARRAY = value
    end

    @@jst_NULL_NOT_FOR_USE_ANIMATION_FACTORY : NullAnimationFactory? = nil

    def self.jst_NULL_NOT_FOR_USE_ANIMATION_FACTORY : NullAnimationFactory?
        jclinit
        @@jst_NULL_NOT_FOR_USE_ANIMATION_FACTORY
    end

    def self.jst_NULL_NOT_FOR_USE_ANIMATION_FACTORY=(value : NullAnimationFactory?) : NullAnimationFactory?
        jclinit
        @@jst_NULL_NOT_FOR_USE_ANIMATION_FACTORY = value
    end

    @@jst_NULL_ANIMATION_FACTORY : NullAnimationFactory? = nil

    def self.jst_NULL_ANIMATION_FACTORY : NullAnimationFactory?
        jclinit
        @@jst_NULL_ANIMATION_FACTORY
    end

    def self.jst_NULL_ANIMATION_FACTORY=(value : NullAnimationFactory?) : NullAnimationFactory?
        jclinit
        @@jst_NULL_ANIMATION_FACTORY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_NOT_FOR_USE_ANIMATION_FACTORY = NullAnimationFactory.new.jinit_NullAnimationFactory()
        @@jst_NULL_ANIMATION_FACTORY = NullAnimationFactory.new.jinit_NullAnimationFactory()
    end
    

    def self.getFactoryInstance : NullAnimationFactory?
        return NullAnimationFactory.jst_NULL_ANIMATION_FACTORY
    end

    # Java field initializers run after the super constructor
    def jfields_NullAnimationFactory : Nil
    @j_NULL_ANIMATION = NullAnimationFactory_j1.new.jinit_NullAnimationFactory_j1(self)
    @j_EMPTY_ARRAY = Array(Animation?).new(0, nil)
    end
    

    def jinit_NullAnimationFactory : self
        jfields_NullAnimationFactory()
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

class NullAnimationFactory_j1 < Animation
    @jouter : NullAnimationFactory? = nil

    def jinit_NullAnimationFactory_j1(jouter : NullAnimationFactory?) : self
        @jouter = jouter
        jinit_Animation()
        self
    end


        def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
            x = x.to_i32!
            y = y.to_i32!
        end
end

