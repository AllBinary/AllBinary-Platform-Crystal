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

class VectorAnimationInterfaceFactory < JObject
    include AnimationInterfaceFactoryInterface
    @currentPoints : Array(Array(Array(Int32)?)?)? = nil

    def jf_currentPoints : Array(Array(Array(Int32)?)?)?
        @currentPoints
    end

    def jf_currentPoints=(value : Array(Array(Array(Int32)?)?)?) : Array(Array(Array(Int32)?)?)?
        @currentPoints = value
    end
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end
    @animationBehaviorFactory : AnimationBehaviorFactory? = nil

    def jf_animationBehaviorFactory : AnimationBehaviorFactory?
        @animationBehaviorFactory
    end

    def jf_animationBehaviorFactory=(value : AnimationBehaviorFactory?) : AnimationBehaviorFactory?
        @animationBehaviorFactory = value
    end

    # Java field initializers run after the super constructor
    def jfields_VectorAnimationInterfaceFactory : Nil
    
    @basicColor = BasicColorFactory.getInstance().not_nil!.jf_WHITE
    
    end
    

    def jinit_VectorAnimationInterfaceFactory(currentPoints : Array(Array(Array(Int32)?)?)?, basicColor : BasicColor?, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        jfields_VectorAnimationInterfaceFactory()
        @currentPoints = currentPoints
        self.setBasicColorP(basicColor)
        @animationBehaviorFactory = animationBehaviorFactory
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        return VectorAnimation.new.jinit_VectorAnimation(@currentPoints, self.getBasicColorP(), @animationBehaviorFactory.not_nil!.getOrCreateInstance())
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        @basicColor = basicColor
    end
    

    def getBasicColorP : BasicColor?
        return @basicColor
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
end

