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

class RotationAnimationFactory < JObject
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    @totalAngle : Int16 = 0_i16

    def jf_totalAngle : Int16
        @totalAngle
    end

    def jf_totalAngle=(value : Int16) : Int16
        @totalAngle = value
    end
    @angleIncrement : Int16 = 0_i16

    def jf_angleIncrement : Int16
        @angleIncrement
    end

    def jf_angleIncrement=(value : Int16) : Int16
        @angleIncrement = value
    end
    

    def self.createFactory : RotationAnimationFactory?
        totalAngle : Int16 = AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE
        return RotationAnimationFactory.new.jinit_RotationAnimationFactory(totalAngle, ((((totalAngle).to_i32!).to_i32.tdiv(GameConfigurationCentral.getInstance().not_nil!.getGameControlFidelity()))).to_i16!)
    end
    

    def jinit_RotationAnimationFactory(totalAngle : Int, angleIncrement : Int) : self
        totalAngle = totalAngle.to_i16!
        angleIncrement = angleIncrement.to_i16!
        @totalAngle = totalAngle
        @angleIncrement = angleIncrement
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance(@angleIncrement), @totalAngle, AnimationBehavior.getInstance())
    end
    

    def getInstanceAnimation(animationInterface : Animation?) : Animation?
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance(@angleIncrement), @totalAngle, AnimationBehavior.getInstance())
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
end

