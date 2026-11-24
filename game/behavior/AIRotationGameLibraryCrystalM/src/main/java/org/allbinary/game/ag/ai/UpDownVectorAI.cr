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

class UpDownVectorAI < BasicAI
    @velocityInterface : BasicVelocityProperties? = nil

    def jf_velocityInterface : BasicVelocityProperties?
        @velocityInterface
    end

    def jf_velocityInterface=(value : BasicVelocityProperties?) : BasicVelocityProperties?
        @velocityInterface = value
    end
    @index : Int32 = 0

    def jf_index : Int32
        @index
    end

    def jf_index=(value : Int32) : Int32
        @index = value
    end

    # Java field initializers run after the super constructor
    def jfields_UpDownVectorAI : Nil
    
    @index = 0
    end
    

    def jinit_UpDownVectorAI(ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        jfields_UpDownVectorAI()
        velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface? = JR.cast(self.getOwnerLayerInterface(), VelocityInterfaceCompositeInterface)
        @velocityInterface = JR.cast(velocityInterfaceCompositeInterface.not_nil!.getVelocityProperties(), BasicVelocityProperties)
        @velocityInterface.not_nil!.getVelocityYBasicDecimalP().not_nil!.setint(0)
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        y : Int32 = self.getOwnerLayerInterface().not_nil!.getHeight() &* 270
        if @index < 5
            basicDecimal = (@velocityInterface.not_nil!.getVelocityYBasicDecimalP()).as(BasicDecimal?)
            basicDecimal.not_nil!.setint(0)
            basicDecimal.not_nil!.addint(y)
            @index &+= 1
        elsif @index < 10
            basicDecimal = (@velocityInterface.not_nil!.getVelocityYBasicDecimalP()).as(BasicDecimal?)
            basicDecimal.not_nil!.setint(0)
            basicDecimal.not_nil!.subtractint(y)
            @index &+= 1
        else
            @index = 0
            self.processAI(allBinaryLayerManager)
        end
    end
end

