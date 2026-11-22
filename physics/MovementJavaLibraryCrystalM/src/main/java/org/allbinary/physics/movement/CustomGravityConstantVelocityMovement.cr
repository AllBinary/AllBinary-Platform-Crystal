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
# package org.allbinary.physics.movement

class CustomGravityConstantVelocityMovement < BasicConstantVelocityMovement
    @customGravity : Int32 = 0

    def jf_customGravity : Int32
        @customGravity
    end

    def jf_customGravity=(value : Int32) : Int32
        @customGravity = value
    end
    @gravityUtil : GravityUtil? = nil

    def jf_gravityUtil : GravityUtil?
        @gravityUtil
    end

    def jf_gravityUtil=(value : GravityUtil?) : GravityUtil?
        @gravityUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_CustomGravityConstantVelocityMovement : Nil
    
    @gravityUtil = GravityUtil.getInstance()
    end
    

    def jinit_CustomGravityConstantVelocityMovement(speedBasicDecimal : BasicDecimal?, customGravity : Int) : self
        customGravity = customGravity.to_i32!
        jinit_BasicConstantVelocityMovement(speedBasicDecimal, VelocityProperties.new.jinit_VelocityProperties((speedBasicDecimal.not_nil!.getUnscaled()).to_i32!, (speedBasicDecimal.not_nil!.getUnscaled()).to_i32!))
        jfields_CustomGravityConstantVelocityMovement()
        @customGravity = customGravity
        self
    end
    

    def process(layer : AllBinaryGameLayer?) : Nil
        super(layer)
        @gravityUtil.not_nil!.process(self.getVelocityProperties(), @customGravity)
        velocityProperties : VelocityProperties? = JR.cast(self.getVelocityProperties(), VelocityProperties)
        velocityProperties.not_nil!.limitMaxYForwardVelocity()
    end
end

