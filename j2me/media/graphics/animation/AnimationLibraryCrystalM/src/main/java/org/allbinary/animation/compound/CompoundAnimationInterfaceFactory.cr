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

class CompoundAnimationInterfaceFactory < JObject
    include AnimationInterfaceFactoryInterface
    @basicAnimationInterfaceFactoryInterfaceArrayP : Array(AnimationInterfaceFactoryInterface?)? = nil

    def jf_basicAnimationInterfaceFactoryInterfaceArrayP : Array(AnimationInterfaceFactoryInterface?)?
        @basicAnimationInterfaceFactoryInterfaceArrayP
    end

    def jf_basicAnimationInterfaceFactoryInterfaceArrayP=(value : Array(AnimationInterfaceFactoryInterface?)?) : Array(AnimationInterfaceFactoryInterface?)?
        @basicAnimationInterfaceFactoryInterfaceArrayP = value
    end
    @animationBehaviorFactory : AnimationBehaviorFactory? = nil

    def jf_animationBehaviorFactory : AnimationBehaviorFactory?
        @animationBehaviorFactory
    end

    def jf_animationBehaviorFactory=(value : AnimationBehaviorFactory?) : AnimationBehaviorFactory?
        @animationBehaviorFactory = value
    end
    

    def jinit_CompoundAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)?, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        @basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArray
        @animationBehaviorFactory = animationBehaviorFactory
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        size : Int32 = @basicAnimationInterfaceFactoryInterfaceArrayP.not_nil!.size
        animationInterfaceArray : Array(Animation?)? = self.createArray(size)
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            animationInterfaceArray.not_nil![index] = @basicAnimationInterfaceFactoryInterfaceArrayP.not_nil![index].not_nil!.getInstance(instanceId)
        end
        return self.createAnimation(animationInterfaceArray)
    end
    

    def createArray(size : Int) : Array(Animation?)?
        size = size.to_i32!
        return NullAnimationFactory.getFactoryInstance().not_nil!.jf_EMPTY_ARRAY
    end
    

    def createAnimation(animationInterfaceArray : Array(Animation?)?) : Animation?
        return NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0)
    end
    

    def getBasicAnimationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)?
        return @basicAnimationInterfaceFactoryInterfaceArrayP
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
        size : Int32 = @basicAnimationInterfaceFactoryInterfaceArrayP.not_nil!.size
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            @basicAnimationInterfaceFactoryInterfaceArrayP.not_nil![index].not_nil!.setInitialScale(scaleProperties)
        end
    end
end

