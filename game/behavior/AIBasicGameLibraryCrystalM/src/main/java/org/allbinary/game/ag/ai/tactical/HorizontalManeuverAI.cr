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
# package org.allbinary.game.ag.ai.tactical

class HorizontalManeuverAI < BasicAI
    @currentRelativeAngle : Int32 = 0

    def jf_currentRelativeAngle : Int32
        @currentRelativeAngle
    end

    def jf_currentRelativeAngle=(value : Int32) : Int32
        @currentRelativeAngle = value
    end
    @currentSpeed : Int32 = 0

    def jf_currentSpeed : Int32
        @currentSpeed
    end

    def jf_currentSpeed=(value : Int32) : Int32
        @currentSpeed = value
    end

    # Java field initializers run after the super constructor
    def jfields_HorizontalManeuverAI : Nil
    @currentRelativeAngle = 0
    
    end
    

    def jinit_HorizontalManeuverAI(ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        jfields_HorizontalManeuverAI()
        @currentSpeed = 5
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        ownerLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        x : Int32 = ownerLayerInterface.not_nil!.getXP()
        if ownerLayerInterface.not_nil!.getXP() &- @currentSpeed <= 0
            self.reverse()
            self.drop()
        end
        if ownerLayerInterface.not_nil!.getX2() &+ @currentSpeed > DisplayInfoSingleton.getInstance().not_nil!.getLastWidth()
            self.reverse()
            self.accelerate()
            self.drop()
        end
        if @currentRelativeAngle == 0
            x &+= @currentSpeed
        elsif @currentRelativeAngle == 180
            x &-= @currentSpeed
        end
        ownerLayerInterface.not_nil!.setPosition(x, ownerLayerInterface.not_nil!.getYP(), ownerLayerInterface.not_nil!.getZP())
        if @currentRelativeAngle == 0
            processKeyAI(Canvas.jst_KEY_NUM0)
        elsif @currentRelativeAngle == 180
            processKeyAI(Canvas.jst_KEY_POUND)
        end
    end
    

    def reverse : Nil
        if @currentRelativeAngle == 180
            @currentRelativeAngle = 0
        elsif @currentRelativeAngle == 0
            @currentRelativeAngle = 180
        end
    end
    

    def accelerate : Nil
        if @currentSpeed < 20
            @currentSpeed &+= 1
        end
    end
    

    def drop : Nil
        ownerLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        y : Int32 = ownerLayerInterface.not_nil!.getYP()
        if ownerLayerInterface.not_nil!.getY2() &+ ownerLayerInterface.not_nil!.getHeight() > DisplayInfoSingleton.getInstance().not_nil!.getLastHeight()
            y = 0
        else
            y &+= ownerLayerInterface.not_nil!.getHeight() &+ 1
        end
        ownerLayerInterface.not_nil!.setPosition(ownerLayerInterface.not_nil!.getXP(), y, ownerLayerInterface.not_nil!.getZP())
    end
end

