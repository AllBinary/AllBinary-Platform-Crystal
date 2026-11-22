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

class AnimationInterfaceFactoryInterfaceComposite < JObject
    include AnimationInterfaceFactoryInterface
    @animationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)? = nil

    def jf_animationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)?
        @animationInterfaceFactoryInterfaceArray
    end

    def jf_animationInterfaceFactoryInterfaceArray=(value : Array(AnimationInterfaceFactoryInterface?)?) : Array(AnimationInterfaceFactoryInterface?)?
        @animationInterfaceFactoryInterfaceArray = value
    end
    

    def jinit_AnimationInterfaceFactoryInterfaceComposite(basicAnimationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)?) : self
        @animationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        return NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0)
    end
    

    def getAnimationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)?
        return @animationInterfaceFactoryInterfaceArray
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
end

