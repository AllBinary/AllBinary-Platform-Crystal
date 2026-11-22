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

class IndependentVectorExplosionRotationAnimationFactory < JObject
    include ProceduralAnimationInterfaceFactoryInterface
    @framePoints : Array(Array(Array(Int32)?)?)? = nil

    def jf_framePoints : Array(Array(Array(Int32)?)?)?
        @framePoints
    end

    def jf_framePoints=(value : Array(Array(Array(Int32)?)?)?) : Array(Array(Array(Int32)?)?)?
        @framePoints = value
    end
    @vectorInfo : VectorInfo? = nil

    def jf_vectorInfo : VectorInfo?
        @vectorInfo
    end

    def jf_vectorInfo=(value : VectorInfo?) : VectorInfo?
        @vectorInfo = value
    end
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end
    @vectorAnimationFactoryInterface : VectorAnimationFactoryInterface? = nil

    def jf_vectorAnimationFactoryInterface : VectorAnimationFactoryInterface?
        @vectorAnimationFactoryInterface
    end

    def jf_vectorAnimationFactoryInterface=(value : VectorAnimationFactoryInterface?) : VectorAnimationFactoryInterface?
        @vectorAnimationFactoryInterface = value
    end
    @vectorExplosionGenerator : VectorExplosionGenerator? = nil

    def jf_vectorExplosionGenerator : VectorExplosionGenerator?
        @vectorExplosionGenerator
    end

    def jf_vectorExplosionGenerator=(value : VectorExplosionGenerator?) : VectorExplosionGenerator?
        @vectorExplosionGenerator = value
    end

    # Java field initializers run after the super constructor
    def jfields_IndependentVectorExplosionRotationAnimationFactory : Nil
    @framePoints = NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY_ARRAY_ARRAY
    
    
    
    @vectorExplosionGenerator = VectorExplosionGenerator.getInstance()
    end
    

    def jinit_IndependentVectorExplosionRotationAnimationFactory(vectorInfo : VectorInfo?, basicColor : BasicColor?, vectorAnimationFactoryInterface : VectorAnimationFactoryInterface?) : self
        jfields_IndependentVectorExplosionRotationAnimationFactory()
        @vectorInfo = vectorInfo
        @basicColor = basicColor
        @vectorAnimationFactoryInterface = vectorAnimationFactoryInterface
        self.init()
        self
    end
    

    def init : Nil
        @framePoints = VectorRotationGenerator.getInstance().not_nil!.getInstance(@vectorInfo)
    end
    

    def getInstanceAnimation(animationInterface : Animation?) : Animation?
        frame : Int32 = 0
        if !(animationInterface).nil?
            rotationAnimationInterface : IndexedAnimation? = JR.cast(animationInterface, IndexedAnimation)
            frame = rotationAnimationInterface.not_nil!.getFrame()
        end
        points : Array(Array(Array(Int32)?)?)? = @vectorExplosionGenerator.not_nil!.getInstance(@framePoints.not_nil![frame], 6, @vectorExplosionGenerator.not_nil!.jf_ROTATION)
        return @vectorAnimationFactoryInterface.not_nil!.getInstance(points, @basicColor)
    end
end

