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
        @layerInterface = layerInterface
        velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface? = JR.cast(layerInterface, VelocityInterfaceCompositeInterface)
        @velocityInterface = JR.cast(velocityInterfaceCompositeInterface.not_nil!.getVelocityProperties(), VelocityInterface)
        self
    end
    

    def getX : Int32
        return @layerInterface.not_nil!.getXP()
    end
    

    def getY : Int32
        return @layerInterface.not_nil!.getYP()
    end
    

    def minX : Nil
        if @velocityInterface.not_nil!.getVelocityXBasicDecimalP().not_nil!.getUnscaled() < 0_i64
            @velocityInterface.not_nil!.getVelocityXBasicDecimalP().not_nil!.multiplyint(-1)
        end
    end
    

    def maxX : Nil
        if @velocityInterface.not_nil!.getVelocityXBasicDecimalP().not_nil!.getUnscaled() > 0_i64
            @velocityInterface.not_nil!.getVelocityXBasicDecimalP().not_nil!.multiplyint(-1)
        end
    end
    

    def minY : Nil
        if @velocityInterface.not_nil!.getVelocityYBasicDecimalP().not_nil!.getUnscaled() < 0_i64
            @velocityInterface.not_nil!.getVelocityYBasicDecimalP().not_nil!.multiplyint(-1)
        end
    end
    

    def maxY : Nil
        if @velocityInterface.not_nil!.getVelocityYBasicDecimalP().not_nil!.getUnscaled() > 0_i64
            @velocityInterface.not_nil!.getVelocityYBasicDecimalP().not_nil!.multiplyint(-1)
        end
    end
end

