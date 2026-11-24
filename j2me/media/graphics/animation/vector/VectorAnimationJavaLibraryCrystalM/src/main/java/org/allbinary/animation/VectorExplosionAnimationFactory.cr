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

class VectorExplosionAnimationFactory < JObject
    include ProceduralAnimationInterfaceFactoryInterface
    @vectorExplosionGenerator : VectorExplosionGenerator? = nil

    def jf_vectorExplosionGenerator : VectorExplosionGenerator?
        @vectorExplosionGenerator
    end

    def jf_vectorExplosionGenerator=(value : VectorExplosionGenerator?) : VectorExplosionGenerator?
        @vectorExplosionGenerator = value
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
    def jfields_VectorExplosionAnimationFactory : Nil
    @vectorExplosionGenerator = VectorExplosionGenerator.getInstance()
    @basicColor = BasicColorFactory.getInstance().not_nil!.jf_WHITE
    
    end
    

    def jinit_VectorExplosionAnimationFactory(basicColor : BasicColor?, animationBehaviorFactory : AnimationBehaviorFactory?) : self
        jfields_VectorExplosionAnimationFactory()
        @animationBehaviorFactory = animationBehaviorFactory
        self.setBasicColorP(basicColor)
        self
    end
    

    def getInstanceAnimation(animationInterface : Animation?) : Animation?
        vectorRotationAnimationInterface : VectorAnimationInterface? = JR.cast(animationInterface, VectorAnimationInterface)
        frame : Int32 = (vectorRotationAnimationInterface.not_nil!.getFrame()).as(Int32)
        framePoints : Array(Array(Int32)?)? = vectorRotationAnimationInterface.not_nil!.getPoints(frame)
        points : Array(Array(Array(Int32)?)?)? = @vectorExplosionGenerator.not_nil!.getInstance(framePoints, 6, @vectorExplosionGenerator.not_nil!.jf_ROTATION)
        return VectorRotationAnimation.new.jinit_VectorRotationAnimation(points, self.getBasicColorP(), @animationBehaviorFactory.not_nil!.getOrCreateInstance())
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        @basicColor = basicColor
    end
    

    def getBasicColorP : BasicColor?
        return @basicColor
    end
end

