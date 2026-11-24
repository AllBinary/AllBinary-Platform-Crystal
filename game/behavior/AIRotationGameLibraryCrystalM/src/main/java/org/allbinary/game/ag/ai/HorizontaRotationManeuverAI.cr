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

class HorizontaRotationManeuverAI < BasicAI
    include ArtificialIntelligenceTransitionInterface
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    @currentSpeedDivisor : Int32 = 0

    def jf_currentSpeedDivisor : Int32
        @currentSpeedDivisor
    end

    def jf_currentSpeedDivisor=(value : Int32) : Int32
        @currentSpeedDivisor = value
    end
    @rotationAnimationInterface : IndexedAnimation? = nil

    def jf_rotationAnimationInterface : IndexedAnimation?
        @rotationAnimationInterface
    end

    def jf_rotationAnimationInterface=(value : IndexedAnimation?) : IndexedAnimation?
        @rotationAnimationInterface = value
    end
    @baseVelocityInterface : BasicVelocityProperties? = nil

    def jf_baseVelocityInterface : BasicVelocityProperties?
        @baseVelocityInterface
    end

    def jf_baseVelocityInterface=(value : BasicVelocityProperties?) : BasicVelocityProperties?
        @baseVelocityInterface = value
    end
    @velocityInterface : VelocityInterface? = nil

    def jf_velocityInterface : VelocityInterface?
        @velocityInterface
    end

    def jf_velocityInterface=(value : VelocityInterface?) : VelocityInterface?
        @velocityInterface = value
    end

    # Java field initializers run after the super constructor
    def jfields_HorizontaRotationManeuverAI : Nil
    @circularIndexUtil = CircularIndexUtil.createInstanceAt(10, JInteger.jst_MAX_VALUE)
    @currentSpeedDivisor = 5
    
    
    
    end
    

    def jinit_HorizontaRotationManeuverAI(ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        jfields_HorizontaRotationManeuverAI()
        rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface? = JR.cast(self.getOwnerLayerInterface(), RotationAnimationInterfaceCompositeInterface)
        @rotationAnimationInterface = JR.cast(rotationAnimationInterfaceCompositeInterface.not_nil!.getRotationAnimationInterface(), RotationAnimation)
        velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface? = JR.cast(self.getOwnerLayerInterface(), VelocityInterfaceCompositeInterface)
        @baseVelocityInterface = JR.cast(velocityInterfaceCompositeInterface.not_nil!.getVelocityProperties(), BasicVelocityProperties)
        @velocityInterface = JR.cast(JR.cast(@baseVelocityInterface, VelocityInterface), VelocityInterface)
        rotationAnimationInterface : RotationAnimationInterface? = JR.cast(@rotationAnimationInterface, RotationAnimationInterface)
        angleIncrementInfo : AngleIncrementInfo? = JR.cast(rotationAnimationInterface.not_nil!.getAngleInfoP(), AngleInfo).not_nil!.getAngleIncrementInfo()
        rotationAnimationInterfaceCompositeInterface.not_nil!.setFrame(angleIncrementInfo.not_nil!.jf_RIGHT_FRAME.not_nil!.intValue())
        self
    end
    

    def transition : Nil
        rotationAnimationInterface : RotationAnimationInterface? = JR.cast(@rotationAnimationInterface, RotationAnimationInterface)
        angleIncrementInfo : AngleIncrementInfo? = JR.cast(rotationAnimationInterface.not_nil!.getAngleInfoP(), AngleInfo).not_nil!.getAngleIncrementInfo()
        rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface? = JR.cast(self.getOwnerLayerInterface(), RotationAnimationInterfaceCompositeInterface)
        rotationAnimationInterfaceCompositeInterface.not_nil!.setFrame(angleIncrementInfo.not_nil!.jf_RIGHT_FRAME.not_nil!.intValue())
        allbinaryLayer : AllBinaryLayer? = self.getOwnerLayerInterface()
        allbinaryLayer.not_nil!.setPosition(allbinaryLayer.not_nil!.getXP(), 1, allbinaryLayer.not_nil!.getZP())
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        rotationAnimationInterface : RotationAnimationInterface? = (JR.cast(@rotationAnimationInterface, RotationAnimationInterface))
        angleIncrementInfo : AngleIncrementInfo? = JR.cast(rotationAnimationInterface.not_nil!.getAngleInfoP(), AngleInfo).not_nil!.getAngleIncrementInfo()
        frame : Int32 = @rotationAnimationInterface.not_nil!.getFrame()
        ownerLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        if ownerLayerInterface.not_nil!.getXP() &- ownerLayerInterface.not_nil!.getWidth() <= 0 && frame == angleIncrementInfo.not_nil!.jf_LEFT_FRAME.not_nil!.intValue()
            self.reverse()
            self.drop()
        end
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        if ownerLayerInterface.not_nil!.getX2() &+ ownerLayerInterface.not_nil!.getWidth() > displayInfo.not_nil!.getLastWidth() && frame == angleIncrementInfo.not_nil!.jf_RIGHT_FRAME.not_nil!.intValue()
            self.reverse()
            self.accelerate()
            self.drop()
        end
        index : Int32 = @circularIndexUtil.not_nil!.getIndex()
        if index.remainder(@currentSpeedDivisor) == 0 && index.remainder(2) == 0
            processKeyAI(Canvas.jst_UP)
            @velocityInterface.not_nil!.limitMaxXYVelocity((@velocityInterface.not_nil!.getMaxForwardVelocity()).as(Int32).tdiv(@currentSpeedDivisor))
        end
        @circularIndexUtil.not_nil!.next_()
        if frame == angleIncrementInfo.not_nil!.jf_LEFT_FRAME.not_nil!.intValue()
            processKeyAI(Canvas.jst_KEY_NUM0)
        elsif frame == angleIncrementInfo.not_nil!.jf_RIGHT_FRAME.not_nil!.intValue()
            processKeyAI(Canvas.jst_KEY_POUND)
        end
    end
    

    def reverse : Nil
        rotationAnimationInterface : RotationAnimationInterface? = JR.cast(@rotationAnimationInterface, RotationAnimationInterface)
        angleIncrementInfo : AngleIncrementInfo? = JR.cast(rotationAnimationInterface.not_nil!.getAngleInfoP(), AngleInfo).not_nil!.getAngleIncrementInfo()
        frame : Int32 = @rotationAnimationInterface.not_nil!.getFrame()
        if frame == angleIncrementInfo.not_nil!.jf_LEFT_FRAME.not_nil!.intValue()
            rotationAnimationInterfaceCompositeInterface = (JR.cast(self.getOwnerLayerInterface(), RotationAnimationInterfaceCompositeInterface)).as(RotationAnimationInterfaceCompositeInterface?)
            rotationAnimationInterfaceCompositeInterface.not_nil!.setFrame(angleIncrementInfo.not_nil!.jf_RIGHT_FRAME.not_nil!.intValue())
            @baseVelocityInterface.not_nil!.zero()
        elsif frame == angleIncrementInfo.not_nil!.jf_RIGHT_FRAME.not_nil!.intValue()
            rotationAnimationInterfaceCompositeInterface = (JR.cast(self.getOwnerLayerInterface(), RotationAnimationInterfaceCompositeInterface)).as(RotationAnimationInterfaceCompositeInterface?)
            rotationAnimationInterfaceCompositeInterface.not_nil!.setFrame(angleIncrementInfo.not_nil!.jf_LEFT_FRAME.not_nil!.intValue())
            @baseVelocityInterface.not_nil!.zero()
        end
    end
    

    def accelerate : Nil
        if @currentSpeedDivisor > 1
            @currentSpeedDivisor &-= 1
        end
    end
    

    def drop : Nil
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        ownerLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        y : Int32 = ownerLayerInterface.not_nil!.getYP()
        if ownerLayerInterface.not_nil!.getY2() &+ ownerLayerInterface.not_nil!.getHeight() > displayInfo.not_nil!.getLastHeight()
            y = 0
        else
            y &+= ownerLayerInterface.not_nil!.getHeight() &+ 1
        end
        ownerLayerInterface.not_nil!.setPosition(ownerLayerInterface.not_nil!.getXP(), y, ownerLayerInterface.not_nil!.getZP())
    end
    

    def getId : Int32
        return ArtificialIntelligence.jst_AI_ID
    end
end

