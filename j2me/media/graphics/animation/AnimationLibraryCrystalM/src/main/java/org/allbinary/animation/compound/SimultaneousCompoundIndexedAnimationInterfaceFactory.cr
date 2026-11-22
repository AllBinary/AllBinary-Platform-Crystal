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

class SimultaneousCompoundIndexedAnimationInterfaceFactory < CompoundAnimationInterfaceFactory
    

    def jinit_SimultaneousCompoundIndexedAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)?, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        jinit_CompoundAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        self
    end
    

    def createArray(size : Int) : Array(Animation?)?
        size = size.to_i32!
        return Array(Animation?).new(size, nil)
    end
    

    def createAnimation(animationArray : Array(Animation?)?) : Animation?
        return SimultaneousCompoundIndexedAnimation.new.jinit_SimultaneousCompoundIndexedAnimation(animationArray, @animationBehaviorFactory.not_nil!.getOrCreateInstance())
    end
end

