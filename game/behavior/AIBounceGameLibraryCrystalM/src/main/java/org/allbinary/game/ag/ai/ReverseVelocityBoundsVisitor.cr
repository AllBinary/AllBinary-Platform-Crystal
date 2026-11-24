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

class ReverseVelocityBoundsVisitor < JObject
    include BoundsVisitorInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @velocityInterface : VelocityInterface? = nil

    def jf_velocityInterface : VelocityInterface?
        @velocityInterface
    end

    def jf_velocityInterface=(value : VelocityInterface?) : VelocityInterface?
        @velocityInterface = value
    end
    @layerInterface : LayerInterface? = nil

    def jf_layerInterface : LayerInterface?
        @layerInterface
    end

    def jf_layerInterface=(value : LayerInterface?) : LayerInterface?
        @layerInterface = value
    end

    # Java field initializers run after the super constructor
    def jfields_ReverseVelocityBoundsVisitor : Nil
    @logUtil = LogUtil.getInstance()
    
    
    end
    

    def jinit_ReverseVelocityBoundsVisitor(layerInterface : LayerInterface?) : self
        jfields_ReverseVelocityBoundsVisitor()
        @layerInterface = JR.cast(layerInterface, LayerInterface)
        velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface? = JR.cast(layerInterface, VelocityInterfaceCompositeInterface)
        @velocityInterface = JR.cast(JR.cast(JR.cast(velocityInterfaceCompositeInterface.not_nil!.getVelocityProperties(), BasicVelocityProperties), VelocityInterface), VelocityInterface)
        self
    end
    

    def getX : Int32
        return (@layerInterface.not_nil!.getXP()).as(Int32)
    end
    

    def getY : Int32
        return (@layerInterface.not_nil!.getYP()).as(Int32)
    end
    

    def minX : Nil
        if JR.cast(@velocityInterface.not_nil!.getVelocityXBasicDecimalP(), BasicDecimal).not_nil!.getUnscaled() < 0_i64
            JR.cast(@velocityInterface.not_nil!.getVelocityXBasicDecimalP(), BasicDecimal).not_nil!.multiplyint(-1)
        end
    end
    

    def maxX : Nil
        if JR.cast(@velocityInterface.not_nil!.getVelocityXBasicDecimalP(), BasicDecimal).not_nil!.getUnscaled() > 0_i64
            JR.cast(@velocityInterface.not_nil!.getVelocityXBasicDecimalP(), BasicDecimal).not_nil!.multiplyint(-1)
        end
    end
    

    def minY : Nil
        if JR.cast(@velocityInterface.not_nil!.getVelocityYBasicDecimalP(), BasicDecimal).not_nil!.getUnscaled() < 0_i64
            JR.cast(@velocityInterface.not_nil!.getVelocityYBasicDecimalP(), BasicDecimal).not_nil!.multiplyint(-1)
        end
    end
    

    def maxY : Nil
        if JR.cast(@velocityInterface.not_nil!.getVelocityYBasicDecimalP(), BasicDecimal).not_nil!.getUnscaled() > 0_i64
            JR.cast(@velocityInterface.not_nil!.getVelocityYBasicDecimalP(), BasicDecimal).not_nil!.multiplyint(-1)
        end
    end
end

