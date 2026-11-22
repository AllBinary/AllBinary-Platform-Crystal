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
# package org.allbinary.game.physics.velocity

class DragVelocityBehavior < VelocityBehaviorBase

    @@jst_instance : DragVelocityBehavior? = nil

    def self.jst_instance : DragVelocityBehavior?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DragVelocityBehavior?) : DragVelocityBehavior?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DragVelocityBehavior.new.jinit_DragVelocityBehavior()
    end

    def jinit_DragVelocityBehavior : self
        jinit_VelocityBehaviorBase()
        self
    end
    

    def reduce(velocityProperties : BasicVelocityProperties?, nominator : Int, denominator : Int) : Nil
        nominator = nominator.to_i32!
        denominator = denominator.to_i32!
        if velocityProperties.not_nil!.getVelocityXBasicDecimalP().not_nil!.getUnscaled() != 0_i64
            basicDecimal = (velocityProperties.not_nil!.getVelocityXBasicDecimalP()).as(BasicDecimal?)
            basicDecimal.not_nil!.multiplyint(nominator)
            basicDecimal.not_nil!.divideint(denominator)
        end
        if velocityProperties.not_nil!.getVelocityYBasicDecimalP().not_nil!.getUnscaled() != 0_i64
            basicDecimal = (velocityProperties.not_nil!.getVelocityYBasicDecimalP()).as(BasicDecimal?)
            basicDecimal.not_nil!.multiplyint(nominator)
            basicDecimal.not_nil!.divideint(denominator)
        end
    end
    

    def reduceX(velocityProperties : BasicVelocityProperties?, nominator : Int, denominator : Int) : Nil
        nominator = nominator.to_i32!
        denominator = denominator.to_i32!
        basicDecimal : BasicDecimal? = velocityProperties.not_nil!.getVelocityXBasicDecimalP()
        if basicDecimal.not_nil!.getUnscaled() != 0_i64
            basicDecimal.not_nil!.multiplyint(nominator)
            basicDecimal.not_nil!.divideint(denominator)
        end
    end
    

    def reduceY(velocityProperties : BasicVelocityProperties?, nominator : Int, denominator : Int) : Nil
        nominator = nominator.to_i32!
        denominator = denominator.to_i32!
        if velocityProperties.not_nil!.getVelocityYBasicDecimalP().not_nil!.getUnscaled() != 0_i64
            basicDecimal : BasicDecimal? = velocityProperties.not_nil!.getVelocityYBasicDecimalP()
            basicDecimal.not_nil!.multiplyint(nominator)
            basicDecimal.not_nil!.divideint(denominator)
        end
    end
end

