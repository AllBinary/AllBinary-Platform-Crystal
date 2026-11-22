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

class BaseAnimationInterfaceFactoryInterfaceComposite < JObject
    include AnimationInterfaceFactoryInterface
    @basicAnimationInterfaceFactoryInterfaceArray : Array(BasicAnimationInterfaceFactoryInterface?)? = nil

    def jf_basicAnimationInterfaceFactoryInterfaceArray : Array(BasicAnimationInterfaceFactoryInterface?)?
        @basicAnimationInterfaceFactoryInterfaceArray
    end

    def jf_basicAnimationInterfaceFactoryInterfaceArray=(value : Array(BasicAnimationInterfaceFactoryInterface?)?) : Array(BasicAnimationInterfaceFactoryInterface?)?
        @basicAnimationInterfaceFactoryInterfaceArray = value
    end
    

    def jinit_BaseAnimationInterfaceFactoryInterfaceComposite(basicAnimationInterfaceFactoryInterfaceArray : Array(BasicAnimationInterfaceFactoryInterface?)?) : self
        @basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        return NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0)
    end
    

    def getBasicAnimationInterfaceFactoryInterfaceArray : Array(BasicAnimationInterfaceFactoryInterface?)?
        return @basicAnimationInterfaceFactoryInterfaceArray
    end
    

    def setBasicAnimationInterfaceFactoryInterfaceArray(basicAnimationInterfaceFactoryInterfaceArray : Array(BasicAnimationInterfaceFactoryInterface?)?) : Nil
        @basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
end

