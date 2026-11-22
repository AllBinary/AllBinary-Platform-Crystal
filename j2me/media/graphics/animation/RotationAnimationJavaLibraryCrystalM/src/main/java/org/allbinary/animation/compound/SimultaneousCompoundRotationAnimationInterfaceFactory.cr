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

class SimultaneousCompoundRotationAnimationInterfaceFactory < CompoundAnimationInterfaceFactory
    

    def jinit_SimultaneousCompoundRotationAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)?, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        jinit_CompoundAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        if animationBehaviorFactory == AnimationBehaviorFactory.getInstance()
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
        end
        self
    end
    

    def createArray(size : Int) : Array(Animation?)?
        size = size.to_i32!
        return Array(RotationAnimation?).new(size, nil)
    end
    

    def createAnimation(animationInterfaceArray : Array(Animation?)?) : Animation?
        return SimultaneousCompoundRotationAnimation.new.jinit_SimultaneousCompoundRotationAnimation(JR.unbox(animationInterfaceArray, Array(RotationAnimation?)), @animationBehaviorFactory.not_nil!.getOrCreateInstance())
    end
end

