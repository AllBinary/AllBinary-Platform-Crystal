# Generated Code Do Not Modify
# package org.allbinary.logic.math

class MathUtil < JObject
    @j_ACCURACY : Int32 = 0

    def jf_ACCURACY : Int32
        @j_ACCURACY
    end

    def jf_ACCURACY=(value : Int32) : Int32
        @j_ACCURACY = value
    end

    @@jst_instance : MathUtil? = nil

    def self.jst_instance : MathUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : MathUtil?) : MathUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = MathUtil.new.jinit_MathUtil()
    end
    

    def self.getInstance : MathUtil?
        return MathUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_MathUtil : Nil
    @j_ACCURACY = 100
    end

    def jinit_MathUtil : self
        jfields_MathUtil()
        self
    end
    

    def getTotalDigits(digits : Int) : Int32
        digits = digits.to_i32!
        total : Int32 = 0
        while digits > 0
            digits = digits.tdiv(10)
            total &+= 1
        end
        return total
    end
    

    def sqrt(value : Int) : Int32
        value = value.to_i32!
        if value <= 1
            return value
        end
        accumulated : Int32 = JR.shr(value, 1)
        result : Int32 = JR.shr((accumulated &+ (value.tdiv(accumulated))), 1)
        jdo1 = true
        while jdo1 || (accumulated > result)
            jdo1 = false
            accumulated = result
            result = JR.shr((accumulated &+ (value.tdiv(accumulated))), 1)
        end
        return accumulated
    end
    

    def sqrtd(x : Int) : Float64
        x = x.to_i32!
        if x == 0
            return (0.0_f32).to_f64
        end
        if x < 0
            return (-1.0_f32).to_f64
        end
        result : Float64 = (x).to_f64
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < @j_ACCURACY
            result = (result + ((x).to_f64 / result)) / 2.0
        end
        return result
    end
    

    def abs(value : Int) : Int32
        value = value.to_i32!
        return ((value < 0) ? JR.neg(value) : value)
    end
    

    def abslong(value : Int) : Int64
        value = value.to_i64!
        return ((value < 0_i64) ? JR.neg(value) : value)
    end
    

    def min(value : Int, value2 : Int) : Int32
        value = value.to_i32!
        value2 = value2.to_i32!
        return ((value <= value2) ? value : value2)
    end
    

    def max(value : Int, value2 : Int) : Int32
        value = value.to_i32!
        value2 = value2.to_i32!
        return ((value >= value2) ? value : value2)
    end
end

