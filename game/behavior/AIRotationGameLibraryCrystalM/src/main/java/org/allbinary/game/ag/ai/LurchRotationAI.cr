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
# package org.allbinary.game.ag.ai

class LurchRotationAI < LurchAI
    @rotationAnimationInterface : IndexedAnimation? = nil

    def jf_rotationAnimationInterface : IndexedAnimation?
        @rotationAnimationInterface
    end

    def jf_rotationAnimationInterface=(value : IndexedAnimation?) : IndexedAnimation?
        @rotationAnimationInterface = value
    end
    

    def jinit_LurchRotationAI(ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_LurchAI(ownerLayerInterface, gameInput)
        rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface? = JR.cast(self.getOwnerLayerInterface(), RotationAnimationInterfaceCompositeInterface)
        @rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.not_nil!.getRotationAnimationInterface()
        self.update()
        self
    end
    

    def reverse : Nil
        super()
        self.update()
    end
    

    def update : Nil
        if @currentRelativeAngle == 0
            rotationAnimationInterface = (JR.cast(@rotationAnimationInterface, RotationAnimationInterface)).as(RotationAnimationInterface?)
            angleIncrementInfo = (rotationAnimationInterface.not_nil!.getAngleInfoP().not_nil!.getAngleIncrementInfo()).as(AngleIncrementInfo?)
            rotationAnimationInterfaceCompositeInterface = (JR.cast(self.getOwnerLayerInterface(), RotationAnimationInterfaceCompositeInterface)).as(RotationAnimationInterfaceCompositeInterface?)
            rotationAnimationInterfaceCompositeInterface.not_nil!.setFrame(angleIncrementInfo.not_nil!.jf_RIGHT_FRAME.not_nil!.intValue())
        elsif @currentRelativeAngle == 180
            rotationAnimationInterface = (JR.cast(@rotationAnimationInterface, RotationAnimationInterface)).as(RotationAnimationInterface?)
            angleIncrementInfo = (rotationAnimationInterface.not_nil!.getAngleInfoP().not_nil!.getAngleIncrementInfo()).as(AngleIncrementInfo?)
            rotationAnimationInterfaceCompositeInterface = (JR.cast(self.getOwnerLayerInterface(), RotationAnimationInterfaceCompositeInterface)).as(RotationAnimationInterfaceCompositeInterface?)
            rotationAnimationInterfaceCompositeInterface.not_nil!.setFrame(angleIncrementInfo.not_nil!.jf_LEFT_FRAME.not_nil!.intValue())
        end
    end
end

