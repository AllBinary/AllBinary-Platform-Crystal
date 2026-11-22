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
# package org.allbinary.math

class DistanceUtil < JObject
    @mathUtil : MathUtil? = nil

    def jf_mathUtil : MathUtil?
        @mathUtil
    end

    def jf_mathUtil=(value : MathUtil?) : MathUtil?
        @mathUtil = value
    end

    @@jst_instance : DistanceUtil? = nil

    def self.jst_instance : DistanceUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DistanceUtil?) : DistanceUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DistanceUtil.new.jinit_DistanceUtil()
    end
    

    def self.getInstance : DistanceUtil?
        return DistanceUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_DistanceUtil : Nil
    @mathUtil = MathUtil.getInstance()
    end

    def jinit_DistanceUtil : self
        jfields_DistanceUtil()
        self
    end
    

    def getDistance(x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Int32
        x1 = x1.to_i32!
        y1 = y1.to_i32!
        x2 = x2.to_i32!
        y2 = y2.to_i32!
        dx : Int32 = x1 &- x2
        dy : Int32 = y1 &- y2
        return @mathUtil.not_nil!.sqrt((dx &* dx) &+ (dy &* dy))
    end
end

