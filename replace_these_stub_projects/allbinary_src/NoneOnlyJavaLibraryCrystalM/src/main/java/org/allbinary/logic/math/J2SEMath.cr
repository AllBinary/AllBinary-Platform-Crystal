# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic.math

class J2SEMath < JObject

    @@jst_instance : J2SEMath? = nil

    def self.jst_instance : J2SEMath?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : J2SEMath?) : J2SEMath?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = J2SEMath.new.jinit_J2SEMath()
    end
    

    def self.getInstance : J2SEMath?
        return J2SEMath.jst_instance
    end

    def jinit_J2SEMath : self
        self
    end
    

    def round(value : Number) : Int32
        value = value.to_f32
        return JMath.round(value)
    end
    

    def abs(value : Number) : Float32
        value = value.to_f32
        return (((value < 0_f32) ? -value : value)).to_f32
    end
    

    def absdouble(value : Number) : Float64
        value = value.to_f64
        return (((value < 0.0) ? -value : value)).to_f64
    end
end

