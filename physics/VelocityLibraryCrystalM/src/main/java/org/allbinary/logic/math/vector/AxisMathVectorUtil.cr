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
# package org.allbinary.logic.math.vector

class AxisMathVectorUtil < JObject
    @noDecimalTrigTable : NoDecimalTrigTable? = nil

    def jf_noDecimalTrigTable : NoDecimalTrigTable?
        @noDecimalTrigTable
    end

    def jf_noDecimalTrigTable=(value : NoDecimalTrigTable?) : NoDecimalTrigTable?
        @noDecimalTrigTable = value
    end

    @@jst_instance : AxisMathVectorUtil? = nil

    def self.jst_instance : AxisMathVectorUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AxisMathVectorUtil?) : AxisMathVectorUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AxisMathVectorUtil.new.jinit_AxisMathVectorUtil()
    end
    

    def self.getInstance : AxisMathVectorUtil?
        return AxisMathVectorUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AxisMathVectorUtil : Nil
    @noDecimalTrigTable = NoDecimalTrigTable.getInstance()
    end

    def jinit_AxisMathVectorUtil : self
        jfields_AxisMathVectorUtil()
        self
    end
    

    def calculateX(magnitude : Int, angle : Int) : Int64
        magnitude = magnitude.to_i64!
        angle = angle.to_i32!
        return magnitude &* @noDecimalTrigTable.not_nil!.cos(angle).tdiv(10_i64)
    end
    

    def calculateY(magnitude : Int, angle : Int) : Int64
        magnitude = magnitude.to_i64!
        angle = angle.to_i32!
        return magnitude &* @noDecimalTrigTable.not_nil!.sin(angle).tdiv(10_i64)
    end
    

    def calculateZ(magnitude : Int, otherAngle : Int) : Int64
        magnitude = magnitude.to_i64!
        otherAngle = otherAngle.to_i32!
        return magnitude &* @noDecimalTrigTable.not_nil!.sin(otherAngle).tdiv(10_i64)
    end
end

