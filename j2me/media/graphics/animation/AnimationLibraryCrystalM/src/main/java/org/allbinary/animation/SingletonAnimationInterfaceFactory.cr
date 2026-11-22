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

class SingletonAnimationInterfaceFactory < JObject
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end
    

    def jinit_SingletonAnimationInterfaceFactory(animationInterface : Animation?) : self
        @animationInterface = animationInterface
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        return @animationInterface
    end
    

    def getInstanceAnimation(animationInterface : Animation?) : Animation?
        return @animationInterface
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
end

