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
# package org.allbinary.animation.compound

class SimultaneousCompoundIndexAnimationInterfaceFactory < JObject
    include AnimationInterfaceFactoryInterface
    @basicAnimationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)? = nil

    def jf_basicAnimationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)?
        @basicAnimationInterfaceFactoryInterfaceArray
    end

    def jf_basicAnimationInterfaceFactoryInterfaceArray=(value : Array(AnimationInterfaceFactoryInterface?)?) : Array(AnimationInterfaceFactoryInterface?)?
        @basicAnimationInterfaceFactoryInterfaceArray = value
    end
    @animationBehaviorFactory : AnimationBehaviorFactory? = nil

    def jf_animationBehaviorFactory : AnimationBehaviorFactory?
        @animationBehaviorFactory
    end

    def jf_animationBehaviorFactory=(value : AnimationBehaviorFactory?) : AnimationBehaviorFactory?
        @animationBehaviorFactory = value
    end
    

    def jinit_SimultaneousCompoundIndexAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)?, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        @basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
        @animationBehaviorFactory = animationBehaviorFactory
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        size : Int32 = @basicAnimationInterfaceFactoryInterfaceArray.not_nil!.size
        animationInterfaceArray : Array(IndexedAnimation?)? = Array(IndexedAnimation?).new(size, nil)
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            animationInterfaceArray.not_nil![index] = JR.cast(@basicAnimationInterfaceFactoryInterfaceArray.not_nil![index].not_nil!.getInstance(instanceId), IndexedAnimation)
        end
        return self.getOrCreate(animationInterfaceArray)
    end
    

    def getOrCreate(animationInterfaceArray : Array(IndexedAnimation?)?) : Animation?
        return SimultaneousCompoundIndexAnimation.new.jinit_SimultaneousCompoundIndexAnimation(animationInterfaceArray, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
    end
    

    def getBasicAnimationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)?
        return @basicAnimationInterfaceFactoryInterfaceArray
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
end

