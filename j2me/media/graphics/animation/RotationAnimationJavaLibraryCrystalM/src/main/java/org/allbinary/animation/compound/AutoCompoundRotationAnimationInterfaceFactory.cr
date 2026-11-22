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

class AutoCompoundRotationAnimationInterfaceFactory < CompoundAnimationInterfaceFactory
    

    def jinit_AutoCompoundRotationAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray : Array(AnimationInterfaceFactoryInterface?)?, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        jinit_CompoundAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        self
    end
    

    def createArray(size : Int) : Array(Animation?)?
        size = size.to_i32!
        return Array(RotationAnimation?).new(size, nil)
    end
    

    def createAnimation(animationInterfaceArray : Array(Animation?)?) : Animation?
        return AutoCompoundRotationAnimation.new.jinit_AutoCompoundRotationAnimation(JR.unbox(animationInterfaceArray, Array(RotationAnimation?)), @animationBehaviorFactory.not_nil!.getOrCreateInstance())
    end
end

